require 'rails_helper'
require 'support/form'

RSpec.feature "The user can register a new properties" do


  let(:archetype) { create_list(:archetype, 3) }
  let(:property) { FactoryGirl.create(:property) }
  let(:rule) { FactoryGirl.create(:rule) }
  let(:form) { Form.new }



   before do
     visit "/"
     within '#main-menu-nav' do
       click_link I18n.t('.menu.register_fraternity')
     end
   end

  scenario "with valid attributes" do

    form.input 'property', 'title', property[:title]

    form.select_list '.property_archetype', 'property', 'archetype'

    form.input 'property', 'accommodates', property[:accommodates]
    form.input 'property', 'bathrooms', property[:bathrooms]
    form.input 'property', 'number_of_rooms', property[:number_of_rooms]

    form.checkbox 'property','furnished'
    form.checkbox 'property','single_room'
    form.uncheckbox 'property','share_room'

    form.input 'property', 'price', property[:price]
    form.input 'property', 'description', property[:description]
    form.input 'property', 'rule', property[:description]



    form.checkbox 'property','kitchen'
    form.checkbox 'property','air_conditioning'
    form.checkbox 'property','washing_machine'
    form.checkbox 'property','dryer'
    form.checkbox 'property','cabo_tv'
    form.checkbox 'property','pet'
    form.checkbox 'property','smoke'
    form.checkbox 'property','accessibility'
    form.checkbox 'property','elevator'
    form.checkbox 'property','concierge'
    form.checkbox 'property','pool'
    form.checkbox 'property','service_area'
    form.checkbox 'property','gym'
    form.checkbox 'property','electric_iron'
    form.checkbox 'property','notebook_space'
    form.checkbox 'property','private_entrance'

    form.submit

    binding.pry

    expect(page).to have_css(".card-content", text: I18n.t('.controllers.property.create.flash.notice'))
  end

  scenario "when providing invalid attributes" do

      form.submit

      within '#error_explanation' do
        expect(page).to have_content "#{I18n.t('.activerecord.attributes.property.title')} #{I18n.t('.errors.messages.blank')}"
        expect(page).to have_content "#{I18n.t('.activerecord.attributes.property.accommodates')} #{I18n.t('.errors.messages.blank')}"
        expect(page).to have_content "#{I18n.t('.activerecord.attributes.property.bathrooms')} #{I18n.t('.errors.messages.blank')}"
        expect(page).to have_content "#{I18n.t('.activerecord.attributes.property.price')} #{I18n.t('.errors.messages.blank')}"
        expect(page).to have_content "#{I18n.t('.activerecord.attributes.property.description')} #{I18n.t('.errors.messages.blank')}"
      end
  end
end