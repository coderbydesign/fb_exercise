require 'rails_helper'

RSpec.describe FizzBuzzer do
	context "responds to valid number" do
		it "when divisible by 15" do
			expect(FizzBuzzer.fizzer(15)).to eq("FizzBuzz")
		end

		it "when divisible by 3" do
			expect(FizzBuzzer.fizzer(3)).to eq("Fizz")
		end

		it "when divisible by 5" do
			expect(FizzBuzzer.fizzer(5)).to eq("Buzz")
		end
	end
end