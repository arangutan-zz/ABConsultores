class MeetingsPdf < Prawn::Document
	def initialize(meetings)
	   	super()
		lista_reuniones(meetings)
	end

	def lista_reuniones(meetings)
		meetings.each do |meeting|
	   		text meeting.tema
		end
	end
end