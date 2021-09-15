require 'rails_helper'

RSpec.describe User, type: :model do
  # describe 'Relationships' do
  #   it {should have_many :game_blogs}
  # end

  describe 'Validations' do
    it {should validate_presence_of :username}
    it {should validate_presence_of :email}
    it {should validate_uniqueness_of :username}
    it {should validate_uniqueness_of :email}
  end
end
