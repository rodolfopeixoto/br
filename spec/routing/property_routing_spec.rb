require 'rails_helper'

RSpec.describe "property routing" do
  it "routes properties" do
    expect(get: "/properties").to route_to(
          controller: "properties", action: "index"
        )
    expect(post: "/properties").to route_to(
          controller: "properties", action: "create"
        )
    expect(get: "/properties/new").to route_to(
          controller: "properties", action: "new"
        )
  #   expect(get: "/properties/1").to route_to(
  #         controller: "properties", action: "show", id: "1"
  #       )
  #   expect(get: "/properties/1/edit").to route_to(
  #         controller: "/properties/", action: "edit", id: "1"
  #       )
  #   expect(patch: "/properties/1").to route_to(
  #         controller: "properties", action: "update", id: "1"
  #       )
  #   expect(delete: "/properties/1").to route_to(
  #         controller: "properties", action: "destroy", id: "1"
  #       )
  end
end