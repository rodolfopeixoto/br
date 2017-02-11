require 'rails_helper'
RSpec.describe PropertiesHelper, type: :helper do
  describe "#page title" do
    it "returns the default title" do
      expect(helper.title).to eq("Busco República")
    end
  end
end
