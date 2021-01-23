require 'rails_helper'

RSpec.describe Link, type: :model do
  
  it "is not valid without a url" do
    link = FactoryBot.build(:link, url: nil)
    expect(link).to_not be_valid
  end

  it "is not valid without a slug" do
    link = FactoryBot.build(:link, slug: nil)
    expect(link).to_not be_valid
  end

  it "is not valid with a long slug" do
    link = FactoryBot.build(:link, slug: '1234567891011121314151617181920')
    expect(link).to_not be_valid
  end

  it "is valid with valid attributes" do
    link = FactoryBot.build(:link)
  end

end
