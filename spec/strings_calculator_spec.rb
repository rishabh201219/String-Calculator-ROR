require 'spec_helper'
require_relative '../lib/strings_calculator'

RSpec.describe StringsCalculator do
    describe ".add" do
        it "returns 0 for an empty string" do
          expect(StringsCalculator.add("")).to eq(0)
        end
        it "returns the number itself for a single number" do
            expect(StringsCalculator.add("1")).to eq(1)
        end
        it "returns the sum of comma-separated numbers in the string" do
            expect(StringsCalculator.add("1,5")).to eq(6)
        end
        it "handles newlines as delimiters along with commas" do
            expect(StringsCalculator.add("1\n2,3")).to eq(6)
        end
        it "handle delimiter in a string" do
            expect(StringsCalculator.add("//;\n1;2")).to eq(3)
        end
        it "raises an exception for negative numbers" do
            expect { StringsCalculator.add("1,-2,3,-4") }.to raise_error("negative numbers not allowed -2,-4")
        end
    end
end
