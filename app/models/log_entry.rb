class LogEntry < ActiveRecord::Base

	RATINGS = [ "Terrible", "Poor", "Fair", "Good", "Excellent" ]

	validates :name, :rating, :location, :comments, :tasted_on, presence: true

	validates :rating, inclusion: { in: RATINGS }

end
