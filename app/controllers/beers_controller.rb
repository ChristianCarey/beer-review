class BeersController < ApplicationController
    before_action :find_beer, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!, only: [:new, :edit]
    
    def index
        if params[:category].blank?
            @beers = Beer.all.order("created_at DESC")
        else
            @category_id = Category.find_by(name: params[:category]).id
            @beers = Beer.where(:category_id => @category_id).order("created_at DESC")
        end
    end
    
    def show
        if @beer.reviews.blank?
            @average_review = 0
        else
            @average_review = @beer.reviews.average(:rating).round(2)
        end
    end
    
    def new
        @beer = current_user.beers.build
        @categories = Category.all.map{ |c| [c.name, c.id] }
        @breweries = Brewery.all.map{ |c| [c.name, c.id] }
    end
    
    def create
        @beer = current_user.beers.build(beer_params)
        @beer.category_id = params[:category_id]
        @beer.brewery_id = params[:brewery_id]
        
        if @beer.save
            redirect_to root_path
        else
            render 'new'
        end
    end
    
    def edit
        @categories = Category.all.map{ |c| [c.name, c.id] }
        @breweries = Brewery.all.map{ |c| [c.name, c.id] }
    end
    
    def update
        @beer.category_id = params[:category_id]
        @beer.brewery_id = params[:brewery_id]
        if @beer.update(beer_params)
            redirect_to @beer
        else
            render 'edit'
        end
    end
    
    def destroy
        @beer.destroy
        redirect_to root_path
    end
    
    private
        
        def beer_params
            params.require(:beer).permit(:name, :description, :category_id, :beer_img, :brewery_id)
        end
        
        def find_beer
            @beer = Beer.find(params[:id])
        end
end
