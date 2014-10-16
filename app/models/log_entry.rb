class LogEntry < ActiveRecord::Base

	RATINGS = 1..5

	validates :name, :rating, :location, :comments, :tasted_on, presence: true

	validates :rating, inclusion: { in: RATINGS, message: "must be from #{RATINGS.first} to #{RATINGS.last}" }

	belongs_to :wine

end
