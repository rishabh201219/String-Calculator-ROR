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
    end
end
