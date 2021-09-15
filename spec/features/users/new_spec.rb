require 'rails_helper'

RSpec.describe 'User Registration' do
  describe 'As a Visitor' do
    it 'I can register as a user' do
      visit '/register'

      fill_in 'Username', with: 'Skepti'
      fill_in 'Password', with: 'supersecurepassword9000'
      fill_in 'Password confirmation', with: 'supersecurepassword9000'
      click_button 'Create Account'

      user_count = User.all.length
      expect(current_path).to eq('/profile')
      expect(user_count).to eq(1)
    end
  end
end
