class AddAttachmentBeerImgToBeers < ActiveRecord::Migration
  def self.up
    change_table :beers do |t|
      t.attachment :beer_img
    end
  end

  def self.down
    remove_attachment :beers, :beer_img
  end
end
