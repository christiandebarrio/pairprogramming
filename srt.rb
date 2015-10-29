class File

	def initialize(file)
		@file = file
	end

	def read_file
		IO.read(@file)
	end

	def div_text_in_subtitles
		read_file.split("\n\n")
	end

	def div_subtitle
		div_text_in_subtitles.each do |subtitle|
			subtitle.split("\n")
		end
	end

	def writte_file
		IO.write(@file, "texto")
	end

end

class Subtitle

	def initialize

	end

end