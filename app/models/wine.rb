class Wine < ActiveRecord::Base

	def average_log_entry
		log_entries.average(:rating)
	end

	VARIETALS = [ "Barbera", "Cabernet Sauvignon", "Chardonnay", "Grenache", "Malbec", "Muscat", "Pinot Grigio", 
		"Pinot Noir", "Riesling", "Sauvignon Blanc", "Zinfandel" ]

	validates :name, :year, :country, presence: true

	validates :year, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

	validates :varietal, inclusion: { in: VARIETALS }

	has_many :log_entries, dependent: :destroy

end
