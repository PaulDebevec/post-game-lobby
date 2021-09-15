require 'rails_helper'

RSpec.describe GameBlog, type: :model do
  describe "validations" do
    it {should validate_presence_of(:name)}
  end

  describe "relationships" do
    it {should have_many(:posts)}
    it {should belong_to(:user)}
  end
end
