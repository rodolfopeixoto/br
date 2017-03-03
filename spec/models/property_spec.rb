require 'rails_helper'

RSpec.describe Property, type: :model do

  describe 'Property respond' do
    it { should respond_to(:title) }
    it { should respond_to(:accommodates) }
    it { should respond_to(:bathrooms) }
    it { should respond_to(:number_of_rooms) }
    it { should respond_to(:furnished) }
    it { should respond_to(:single_room) }
    it { should respond_to(:share_room) }
    it { should respond_to(:price) }
    it { should respond_to(:description) }
    it { should respond_to(:archetype_id) }
    it { should respond_to(:rule_id) }
  end

  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:accommodates) }
    it { should validate_presence_of(:bathrooms) }
    it { should validate_presence_of(:number_of_rooms) }
    it { should validate_presence_of(:price)}
    it { should validate_presence_of(:description)}
  end

  describe 'associations' do
    it { should belong_to(:archetype) }
    it { should belong_to(:rule) }
    it { should belong_to(:comfort) }
  end

  describe 'accept nested attributes' do
    it { should accept_nested_attributes_for(:rule).allow_destroy(true)    }
    it { should accept_nested_attributes_for(:comfort).allow_destroy(true) }
  end
end