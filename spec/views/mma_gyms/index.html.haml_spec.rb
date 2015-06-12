require 'rails_helper'

RSpec.describe "mma_gyms/index", type: :view do
  before(:each) do
    assign(:mma_gyms, [
      MmaGym.create!(
        :name => "Name",
        :address => "Address",
        :phone => "Phone",
        :website => "Website"
      ),
      MmaGym.create!(
        :name => "Name",
        :address => "Address",
        :phone => "Phone",
        :website => "Website"
      )
    ])
  end

  it "renders a list of mma_gyms" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
  end
end
