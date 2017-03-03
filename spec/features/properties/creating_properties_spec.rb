require "rails_helper"

RSpec.feature "The user can register a new properties" do
  let!(:archetype) { create_list(:archetype, 3) }
  let(:property)   { attributes_for(:property) }
  let(:submit)     { find(:css, 'input[type="submit"]') }

  before do
    visit "/"
    click_link I18n.t('.properties.index.new_property')
  end

  scenario "with valid attributes" do
    fill_in I18n.t('.activerecord.attributes.property.title'), with: property[:title]
    find('.property_archetype', text: I18n.t('.activerecord.attributes.property.archetype')).click
    fill_in I18n.t('.activerecord.attributes.property.accommodates'), with: property[:accommodates]
    fill_in I18n.t('.activerecord.attributes.property.bathrooms'), with: property[:bathrooms]
    fill_in I18n.t('.activerecord.attributes.property.number_of_rooms'), with: property[:number_of_rooms]
    check('property_furnished')
    check('property_single_room')
    check('property_share_room')
    fill_in I18n.t('.activerecord.attributes.property.price'), with: property[:price]
    fill_in I18n.t('.activerecord.attributes.property.description'), with: property[:description]

    submit.click

    expect(page.body).to have_css(".card-content", text: I18n.t('.controllers.property.create.flash.notice'))
  end

  scenario "when providing invalid attributes" do
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
