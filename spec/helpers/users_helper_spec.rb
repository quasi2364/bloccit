require 'rails_helper'
include SessionsHelper

RSpec.describe UsersHelper, type: :helper do
  let(:user) {create(:user)}
  let(:post) {create(:post, user: user)}
  let(:comment) {create(:comment, user: user, post: post)}
  let(:favorite) {create(:favorite, user: user)}

  describe "user has object?" do
  	before do
  		create_session(user)
  	end

  	it "returns true if current user has any posts" do
  		expect(user_has_posts?(current_user)).to be true
  	end

  	it "returns true if current user has any comments" do
  		expect(user_has_comments?(current_user)).to be true
  	end

  	it "returns true if current user has any favorites" do
  		expect(user_has_favorites?(current_user)).to be true
  	end
  end
end
