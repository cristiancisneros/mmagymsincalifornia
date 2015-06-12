require 'rails_helper'

RSpec.describe "mma_gyms/edit", type: :view do
  before(:each) do
    @mma_gym = assign(:mma_gym, MmaGym.create!(
      :name => "MyString",
      :address => "MyString",
      :phone => "MyString",
      :website => "MyString"
    ))
  end

  it "renders the edit mma_gym form" do
    render

    assert_select "form[action=?][method=?]", mma_gym_path(@mma_gym), "post" do

      assert_select "input#mma_gym_name[name=?]", "mma_gym[name]"

      assert_select "input#mma_gym_address[name=?]", "mma_gym[address]"

      assert_select "input#mma_gym_phone[name=?]", "mma_gym[phone]"

      assert_select "input#mma_gym_website[name=?]", "mma_gym[website]"
    end
  end
end
