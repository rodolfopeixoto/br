require "rails_helper"

RSpec.feature "The user can register a new properties" do

  let(:property) { FactoryGirl.create(:property) }
  let(:submit) {  find(:css, 'input[type="submit"]') }



   before do
     visit "/"
     click_link I18n.t('.properties.index.new_property')
   end

  scenario "with valid attributes", js: true do

    fill_in I18n.t('.activerecord.attributes.property.title'),             with: property.title
    fill_in  I18n.t('.activerecord.attributes.property.accommodates'),      with: 10
    fill_in I18n.t('.activerecord.attributes.property.bathrooms'),         with: 1
    fill_in I18n.t('.activerecord.attributes.property.number_of_rooms'),   with: 10
    find('.input-field.boolean.optional.property_furnished label', text: I18n.t('.activerecord.attributes.property.furnished') ).click

      # find('div.select-wrapper input', text: I18n.t('.activerecord.attributes.archetype.apartment')).click
      # find('div.select-wrapper li', text: I18n.t('.activerecord.attributes.archetype.house')).click
    find('.input-field.select.required.property_archetype', text: I18n.t('.activerecord.attributes.property.archetype')).click

    find('.input-field.boolean.optional.property_single_room label', text: I18n.t('.activerecord.attributes.property.single_room') ).click
    find('.input-field.boolean.optional.property_share_room label', text: I18n.t('.activerecord.attributes.property.share_room') ).click
    fill_in I18n.t('.activerecord.attributes.property.price'),             with: 350.57
    fill_in I18n.t('.activerecord.attributes.property.description'),       with: property.description

    submit.click
    within '.card-content' do
      expect(page).to have_content I18n.t('.controllers.property.create.flash.notice')
    end
  end

  scenario "when providing invalid attributes", js: true do

      submit.click

      within '#error_explanation' do
        expect(page).to have_content "#{I18n.t('.activerecord.attributes.property.title')} #{I18n.t('.errors.messages.blank')}"
        expect(page).to have_content "#{I18n.t('.activerecord.attributes.property.accommodates')} #{I18n.t('.errors.messages.blank')}"
        expect(page).to have_content "#{I18n.t('.activerecord.attributes.property.bathrooms')} #{I18n.t('.errors.messages.blank')}"
        expect(page).to have_content "#{I18n.t('.activerecord.attributes.property.price')} #{I18n.t('.errors.messages.blank')}"
        expect(page).to have_content "#{I18n.t('.activerecord.attributes.property.description')} #{I18n.t('.errors.messages.blank')}"
      end
  end
end