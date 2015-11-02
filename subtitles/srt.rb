require 'pry'

class File

	def initialize(file)
		@file = file
	end

	def process_file
		
		div_time_in_out
	end

	def read_file
		IO.read(@file)
	end

	def div_text_in_subtitles
		read_file.split("\n\n")
	end

	def div_subtitle_in_elements
		div_text_in_subtitles.map do |subtitle|
			array_subtitle = subtitle.split("\n")
			hash_subtitle = {id: array_subtitle[0], time: array_subtitle[1], }
		end
	end

	def div_time_in_out
		div_subtitle_in_elements.map do |subtitle|
			subtitle.map do |element|
				element[1] = element[1].split(" --> ")
			end
		end
		# final = div_subtitle_in_elements.each_with_index do |subtitle, index|
		# 	if index == 1
		# 		subtitle[index] = subtitle[index].split(" --> ")
		# 	else
		# 		subtitle[index] = subtitle[index]
		# 	end
		# end
		# return final

	end

	def writte_file
		IO.write(@file, "texto")
	end

end

class Subtitle

	def initialize

	end

end

 a = File.new("subtitles.srt")
p a.process_file

#binding.pry

