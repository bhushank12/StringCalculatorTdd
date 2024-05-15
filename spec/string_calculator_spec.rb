require_relative '../string_calculator'

describe "String Calculator" do
  context "Method #add" do
    it "1, 2 should add to 3" do
      expect(StringCalculator.add(1, 2)).to eq(3)
    end
  end
end
