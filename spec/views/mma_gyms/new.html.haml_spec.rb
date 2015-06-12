require 'rails_helper'

RSpec.describe "mma_gyms/new", type: :view do
  before(:each) do
    assign(:mma_gym, MmaGym.new(
      :name => "MyString",
      :address => "MyString",
      :phone => "MyString",
      :website => "MyString"
    ))
  end

  it "renders new mma_gym form" do
    render

    assert_select "form[action=?][method=?]", mma_gyms_path, "post" do

      assert_select "input#mma_gym_name[name=?]", "mma_gym[name]"

      assert_select "input#mma_gym_address[name=?]", "mma_gym[address]"

      assert_select "input#mma_gym_phone[name=?]", "mma_gym[phone]"

      assert_select "input#mma_gym_website[name=?]", "mma_gym[website]"
    end
  end
end
