module WinesHelper
	def format_average_log_entry(wine)
		average = wine.average_log_entry
		if average
			pluralize(number_with_precision(average, precision: 1), 'star')
		else
			'No tastings yet.'
		end
	end
end
