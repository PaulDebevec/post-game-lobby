require 'rails_helper'

RSpec.describe Post, type: :model do
  describe "validations" do
    it {should validate_presence_of(:title)}
    it {should validate_presence_of(:body)}
  end

  describe "relationships" do
    it {should belong_to(:game_blog)}
  end
end
