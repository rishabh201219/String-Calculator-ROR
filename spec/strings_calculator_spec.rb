require 'spec_helper'
require_relative '../lib/strings_calculator'

RSpec.describe StringsCalculator do
    describe ".add" do
        it "returns 0 for an empty string" do
          expect(StringsCalculator.add("")).to eq(0)
        end
    end
end
