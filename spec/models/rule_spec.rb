require 'rails_helper'

RSpec.describe Rule, type: :model do

  describe 'Rule respond' do
    it { should respond_to(:description) }
  end

end