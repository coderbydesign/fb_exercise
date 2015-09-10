class FizzBuzzerController < ApplicationController
	def index		
		@numbers = (1..10)
	end

	def fizz_buzz_number
		n = params[:id]
		fb_value = FizzBuzzer.new.fizzer(n.to_i)
		render json: {fb_value: fb_value, n: n}
	end
end
