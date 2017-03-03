require 'rails_helper'

RSpec.describe Comfort, type: :model do
  describe 'Comfort responde' do
    it { should respond_to(:kitchen) }
    it { should respond_to(:tv) }
    it { should respond_to(:air_conditioning) }
    it { should respond_to(:washing_machine) }
    it { should respond_to(:dryer) }
    it { should respond_to(:garage) }
    it { should respond_to(:cabo_tv) }
    it { should respond_to(:pet) }
    it { should respond_to(:smoke) }
    it { should respond_to(:accessibility) }
    it { should respond_to(:elevator) }
    it { should respond_to(:intercom) }
    it { should respond_to(:concierge) }
    it { should respond_to(:pool) }
    it { should respond_to(:service_area) }
    it { should respond_to(:gym) }
    it { should respond_to(:electric_iron) }
    it { should respond_to(:notebook_space) }
    it { should respond_to(:private_entrance) }
  end
end