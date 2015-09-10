require 'rails_helper'

RSpec.describe FizzBuzzer do
	let(:fb){ FizzBuzzer.new }

	context "responds to valid number" do

		it "when divisible by 15" do
			expect(fb.fizzer(15)).to eq("FizzBuzz")
		end

		it "when divisible by 3" do
			expect(fb.fizzer(3)).to eq("Fizz")
		end

		it "when divisible by 5" do
			expect(fb.fizzer(5)).to eq("Buzz")
		end
	end

	context "responds to invalid number" do
		it "when string"
		it "when negative"
	end
end