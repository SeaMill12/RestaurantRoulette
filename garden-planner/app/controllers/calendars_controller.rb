#app/controllers/calendar_controller.rb
class CalendarsController < ApplicationController
	def index
		@date = params[:date] ? Date.parse(params[:date]) : Date.today
	end
end
