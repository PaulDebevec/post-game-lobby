require 'rails_helper'

RSpec.describe 'User Dashboard' do
  before(:each) do
    @user_1 = User.create(username: 'Skepti', email: 'Skepti@example.com', password: 'password')
    @blog_1 = @user_1.game_blogs.create(name: "Dark Souls")
    @post_1 = @blog_1.posts.create(title: 'Prepare To Die!', body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent a risus scelerisque, volutpat purus in, tempus lacus. Donec ac velit sem. Sed eget dolor interdum, imperdiet augue sed, scelerisque nulla.')
    @blog_2 = @user_1.game_blogs.create(name: "Colony Survival")
    @blog_2.posts.create(title: 'Prepare To Die!', body: 'I like to build things in this game!')
    @blog_3 = @user_1.game_blogs.create(name: "Modern Warfare")
    @blog_3.posts.create(title: 'Prepare To Die!', body: 'I like to sprint around with a sniper in SnD')
  end

  it "As a logged in user I am able to visit '/dashboard' and view all of my blogs and their posts" do
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@user_1)
    visit '/dashboard'

    expect(page).to have_content(@user_1.username)
    expect(page).to have_content(@blog_1.name)
    expect(page).to have_content(@post_1.title)
    expect(page).to have_content(@post_1.body)
  end
end
