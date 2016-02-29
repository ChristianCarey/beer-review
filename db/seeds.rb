# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

beers = Beer.create([
    {name: 'Rhinegeist Cougar', description: 'This bright blonde ale shines a brilliant malt character. Born of breezes, captured sunlight and whifle, this beer is a balanced yet dry siren whose first sip calls for the third. Hopped with arguable restraint with Crystal and Bravo hops, Cougar stays fierce enough to raise eyebrows yet is tame enough to be called sessionable.'},
    {name: 'Rhinegeist Zen', description: 'Zen is balance, the clear morning air, feeling the flow. Zen is purpose and determination and detachment. Not bitter, but hoppy and bright. This Session Pale emanates hints of orange zest and lemongrass. Zen is doing the right thing right.'},
    {name: 'Rhinegeist Panther', description: 'This malty yet sneakily smooth Robust Porter simmers with tones of milk chocolate, carob and light molasses. Panther is a svelte creature of the night – a midnight malt whisperer.'},
    {name: 'Rhinegeist Franz', description: 'Franz is our Oktoberfest beer. He’s an autumnal brew, a bit of a dreamer, often hikes in the Alps and comes back with great ideas for delicious malts and is forever hoisting barrels over his head for ’ze exercize’. Franz is our Oktoberfest brau, and our first take on a German brew. Not traditional, but über German. These malts will PUMP you UP, jaaah!'},
    {name: 'Rhinegeist Dad', description: 'This hoppy Holiday Red Ale has a blend of hop spice, citrus and some caramel malts to raise the holiday spirit in this Pale Ale.'},
    {name: 'Rhinegeist Puma', description: 'Elegant and subtle, this hoppy pilsner balances bready malts with striking noble hops. Puma pilsner pounces with golden brilliance as floral aromatics punctuate each sip.'},
    {name: 'Rhinegeist Pure Fury', description:'Intensely hopped yet restrained, bright and tropical fruit forward American Pale Ale with Amarillo, Mosaic and Cascade hops. An essay in finesse.'}
    ])
    
categories = Category.create([
    {name: 'IPA (India Pale Ale)'},
    {name: 'Blonde Ale'},
    {name: 'Pale Ale'},
    {name: 'Porter'},
    {name: 'Oktoberfest'},
    {name: 'Holiday Ale'},
    {name: 'Pilsner'}
    ])