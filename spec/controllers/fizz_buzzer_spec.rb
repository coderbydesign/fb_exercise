require 'rails_helper'

RSpec.describe FizzBuzzerController do
	context "GET index" do
		it "assigns @numbers" do
			get :index
			expect(assigns(:numbers)).to eq((1..100))
			expect(response).to render_template("index")
		end
	end

	context "GET fizz_buzz_number" do
		it "accepts any positive number" do
			get :fizz_buzz_number, { n: 1 }
			expect(response.status).to eq(200)
		end

		it "accepts any negative number" do
			get :fizz_buzz_number, { n: -1 }
			expect(response.status).to eq(200)
		end

		it "returns 404 for non-numbers" do
			expect(FizzBuzzer).to receive(:fizzer).and_raise("Invalid input")
			get :fizz_buzz_number, { n: "4" }
			expect(response.status).to eq(404)
		end
	end
end