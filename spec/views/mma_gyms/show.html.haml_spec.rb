require 'rails_helper'

RSpec.describe "mma_gyms/show", type: :view do
  before(:each) do
    @mma_gym = assign(:mma_gym, MmaGym.create!(
      :name => "Name",
      :address => "Address",
      :phone => "Phone",
      :website => "Website"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Website/)
  end
end
