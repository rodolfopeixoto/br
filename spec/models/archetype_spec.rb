require 'rails_helper'

RSpec.describe Archetype, type: :model do
  describe 'Archetype respond' do
    it { should respond_to(:name) }
  end
end