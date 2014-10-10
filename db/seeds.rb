# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Wine.create(name:"Cabernet Napa", year:2014, winery:"Dominican Oaks", country:"United States", varietal:"Cabernet Sauvignon")
Wine.create(name:"Moulis en Medoc", year:2010, winery:"Chateau Duplessis", country:"France", varietal:"Bordeaux Blend")
Wine.create(name:"Marlborough Sauvignon Blanc", year:2012, winery:"Framingham", country:"New Zealand", varietal:"Sauvignon Blanc")
Wine.create(name:"Domaine Loubejac", year: 2010, winery:"Willamette Valley", country:"United States", varietal:"Pinot Noir")
Wine.create(name:"Ropiteau Chardonnay", year:2014, winery:"Ropiteau", country:"France", varietal:"Chardonnay")