class Wine < ActiveRecord::Base

	VARIETALS = [ "Barbera", "Cabernet Sauvignon", "Chardonnay", "Grenache", "Malbec", "Muscat", "Pinot Grigio", 
		"Pinot Noir", "Riesling", "Sauvignon Blanc", "Zinfandel" ]

	validates :name, :year, :country, presence: true

	validates :year, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

	validates :varietal, inclusion: { in: VARIETALS }

end
