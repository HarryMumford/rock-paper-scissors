require 'rps'

describe RPS do
  describe "#outcome" do
    it "returns win if user chooses rock" do
      expect(subject.outcome).to eq("win")
    end

    it "returns lose if user chooses rock" do
      expect(subject.outcome).to eq("win")
    end
  end
end