require 'rails_helper'

RSpec.describe Property, type: :model do
  let(:property) { FactoryGirl.build(:property) }
  describe "Property respond" do
    it { should respond_to(:title) }
    it { should respond_to(:accommodates) }
    it { should respond_to(:bathrooms) }
    it { should respond_to(:number_of_rooms) }
    it { should respond_to(:furnished) }
    it { should respond_to(:type_property) }
    it { should respond_to(:single_room) }
    it { should respond_to(:share_room) }
    it { should respond_to(:price) }
    it { should respond_to(:description) }
  end
end