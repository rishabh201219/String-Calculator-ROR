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
    end
end
