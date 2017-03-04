require 'rails_helper'

RSpec.feature "The user can register a new properties" do
  let!(:archetype) { create_list(:archetype, 3) }
  let(:property) { attributes_for(:property) }
  let(:rule) { create(:rule) }

  before do
    visit "/properties/new"
  end

  scenario "with valid attributes" do
    fill_in('property_title', with: property[:title])
    fill_in('property_description', with: property[:description])
    fill_in('property_accommodates', with: property[:accommodates])
    fill_in('property_bathrooms', with: property[:bathrooms])
    fill_in('property_number_of_rooms', with: property[:number_of_rooms])
    fill_in('property_price', with: property[:price])

    click_button(I18n.t('properties.index.new_property'))

    expect(page).to have_css(".card-content", text: I18n.t('.controllers.property.create.flash.notice'))
  end

  scenario "when providing invalid attributes" do
    click_button(I18n.t('properties.index.new_property'))

    within '#error_explanation' do
      expect(page).to have_content "#{I18n.t('.activerecord.attributes.property.title')} #{I18n.t('.errors.messages.blank')}"
      expect(page).to have_content "#{I18n.t('.activerecord.attributes.property.accommodates')} #{I18n.t('.errors.messages.blank')}"
      expect(page).to have_content "#{I18n.t('.activerecord.attributes.property.bathrooms')} #{I18n.t('.errors.messages.blank')}"
      expect(page).to have_content "#{I18n.t('.activerecord.attributes.property.price')} #{I18n.t('.errors.messages.blank')}"
      expect(page).to have_content "#{I18n.t('.activerecord.attributes.property.description')} #{I18n.t('.errors.messages.blank')}"
    end
  end
end
