require 'fizz_buzzer'

class FizzBuzzerController < ApplicationController
	def index		
		@numbers = (1..100)
	end

	def fizz_buzz_number
		n = params[:n]

		begin
			@fb_value = FizzBuzzer.fizzer(n.to_i)
		rescue Exception => e
			@error = e.message			
		end

		if @error =~ /Invalid input/
			render json: { error: @error, success: false }, status: 404
		elsif @error
			render json: { error: @error, success: false }
		else
			render json: { fb_value: @fb_value, success: true }
		end
	end
end
