# require 'rails_helper'
#
# RSpec.describe "As a user I can create a new question", type: :feature do
#   describe "When I visit /questions and click 'New Question'" do
#     it "I see a form to fill in and create a new question" do
#       require "pry"; binding.pry
#       @user_1 = User.create(username: 'Skepti', email: 'Skepti@example.com', password: 'password')
#       @blog_1 = @user_1.game_blogs.create(name: "Dark Souls")
#       @blog_2 = @user_1.game_blogs.create(name: "Colony Survival")
#       @blog_3 = @user_1.game_blogs.create(name: "Modern Warfare")
#       @post_1 = @blog_1.posts.create(title: 'Prepare To Die!', body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent a risus scelerisque, volutpat purus in, tempus lacus. Donec ac velit sem. Sed eget dolor interdum, imperdiet augue sed, scelerisque nulla. Aliquam sit amet justo in risus gravida finibus eu in tortor. Suspendisse eu tortor non mauris tincidunt aliquet eu non diam. Mauris magna velit, elementum at dui sed, lobortis ultrices lacus. Proin lobortis fermentum ante ut eleifend.')
#
#       visit '/dashboard'
#       # click_link 'New Question'
#       # expect(current_path).to eq('/questions/new')
#       #
#       # fill_in 'question[body]', with: "Is this even a real question?"
#       # find('#question_format').find(:xpath, '//*[@id="question_format"]/option[2]').select_option
#       # find('#question_difficulty').find(:xpath, '//*[@id="question_difficulty"]/option[1]').select_option
#       # fill_in 'Correct Answers', with: "Yes"
#       # fill_in 'Incorrect Answers', with: "No"
#       # check "#{@category_1.title}"
#       # check "#{@category_2.title}"
#       # check "#{@category_3.title}"
#       # uncheck "#{@category_3.title}"
#       # click_button 'Create Question'
#     end
#   end
# end
