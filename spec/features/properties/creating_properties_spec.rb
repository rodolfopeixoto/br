require "rails_helper"

RSpec.feature "The user can register a new properties" do

  let(:submit) {  find(:css, 'input[type="submit"]') }

  scenario "with valid attributes", js: true do
    visit "/"

    click_link I18n.t('.properties.index.new_property')

    fill_in I18n.t('.activerecord.attributes.property.title'),             with: "Sublime text 3"
    fill_in  I18n.t('.activerecord.attributes.property.accommodates'),      with: 10
    fill_in I18n.t('.activerecord.attributes.property.bathrooms'),         with: 1
    fill_in I18n.t('.activerecord.attributes.property.number_of_rooms'),   with: 10
    find('.input-field.boolean.optional.property_furnished label', text: I18n.t('.activerecord.attributes.property.furnished') ).click
    fill_in I18n.t('.activerecord.attributes.property.type_property'),     with: 1
    find('.input-field.boolean.optional.property_single_room label', text: I18n.t('.activerecord.attributes.property.single_room') ).click
    find('.input-field.boolean.optional.property_share_room label', text: I18n.t('.activerecord.attributes.property.share_room') ).click
    fill_in I18n.t('.activerecord.attributes.property.price'),             with: 350.57
    fill_in I18n.t('.activerecord.attributes.property.description'),       with: "sum is simply dummy text of the pvasdasdasdasd"

    submit.click

      expect(page).to have_content I18n.t('.controllers.property.create.flash.notice')
  end
end