require 'rails_helper'

RSpec.describe Post, type: :model do

  let(:post) {Post.create!(title: "New Post Title", body: "New Post body")}

  describe "attributes" do
  	it "should respond to title" do
  		expect(post).to respond_to(:title)
  	end

  	it "should respond to body" do
  		expect(post).to respond_to(:title)
  	end
  end
end
