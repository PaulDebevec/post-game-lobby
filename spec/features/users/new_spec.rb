require 'rails_helper'

RSpec.describe 'User Registration' do
  describe 'As a Visitor' do
    it 'I can register as a user' do
      visit '/users/new'

      fill_in 'Username', with: 'Skepti'
      fill_in 'Email', with: 'skepti@example.com'
      fill_in 'Password', with: 'supersecurepassword9000'
      fill_in 'Password Confirmation', with: 'supersecurepassword9000'
      click_button 'Create User'

      user_count = User.all.length
      new_user = User.all.last
      expect(current_path).to eq('/dashboard')
      expect(user_count).to eq(1)
    end

    it 'I get an error if I do not fill in all fields' do
      # Test no username
      visit '/users/new'

      fill_in 'Username', with: ''
      fill_in 'Email', with: 'skepti@example.com'
      fill_in 'Password', with: 'supersecurepassword9000'
      fill_in 'Password Confirmation', with: 'supersecurepassword9000'
      click_button 'Create User'

      user_count = User.all.length
      expect(page).to have_content("1 error prohibited this user from being saved:")
      expect(page).to have_content("Username can't be blank")
      expect(user_count).to eq(0)

      # Test no email
      visit '/users/new'

      fill_in 'Username', with: 'Skepti'
      fill_in 'Email', with: ''
      fill_in 'Password', with: 'supersecurepassword9000'
      fill_in 'Password Confirmation', with: 'supersecurepassword9000'
      click_button 'Create User'

      user_count = User.all.length
      expect(page).to have_content("2 errors prohibited this user from being saved:")
      expect(page).to have_content("Email can't be blank")
      expect(page).to have_content("Email is invalid")
      expect(user_count).to eq(0)

      #Test no password confirmation
      visit '/users/new'

      fill_in 'Username', with: 'Skepti'
      fill_in 'Email', with: 'skepti@example.com'
      fill_in 'Password', with: 'supersecurepassword9000'
      fill_in 'Password Confirmation', with: ''
      click_button 'Create User'

      user_count = User.all.length
      expect(page).to have_content("1 error prohibited this user from being saved:")
      expect(page).to have_content("Password confirmation doesn't match Password")
      expect(user_count).to eq(0)
    end
  end
end
