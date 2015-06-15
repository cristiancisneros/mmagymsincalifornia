require 'rails_helper'

RSpec.describe "cities/new", type: :view do
  before(:each) do
    assign(:city, City.new(
      :name => "MyString",
      :county => "MyString",
      :state_id => 1
    ))
  end

  it "renders new city form" do
    render

    assert_select "form[action=?][method=?]", cities_path, "post" do

      assert_select "input#city_name[name=?]", "city[name]"

      assert_select "input#city_county[name=?]", "city[county]"

      assert_select "input#city_state_id[name=?]", "city[state_id]"
    end
  end
end
