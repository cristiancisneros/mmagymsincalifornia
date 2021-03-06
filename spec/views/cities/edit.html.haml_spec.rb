require 'rails_helper'

RSpec.describe "cities/edit", type: :view do
  before(:each) do
    @city = assign(:city, City.create!(
      :name => "MyString",
      :county => "MyString",
      :state_id => 1
    ))
  end

  it "renders the edit city form" do
    render

    assert_select "form[action=?][method=?]", city_path(@city), "post" do

      assert_select "input#city_name[name=?]", "city[name]"

      assert_select "input#city_county[name=?]", "city[county]"

      assert_select "input#city_state_id[name=?]", "city[state_id]"
    end
  end
end
