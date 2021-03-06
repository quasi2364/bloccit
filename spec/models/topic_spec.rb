require 'rails_helper'
include RandomData

RSpec.describe Topic, type: :model do
  let(:topic) {create(:topic)}
  let(:user) {create(:user)}
  let(:post) {create(:post)}

  it {should have_many(:posts)}
  it {should have_many(:labelings)}
  it {should have_many(:labels).through(:labelings)}
  
  describe "attributes" do
  	it "responds to name" do
  		expect(topic).to respond_to(:name)
  	end

  	it "responds to description" do
  		expect(topic).to respond_to(:description)
  	end

  	it "responds to public" do
  		expect(topic).to respond_to(:public)
  	end

  	it "should be public by default" do
  		expect(topic.public).to be(true)
  	end
  end

  describe "scopes" do
    before do
      @public_topic = create(:topic)
      @private_topic = create(:topic, public: false)
    end

    describe "visible_to(user)" do
      it "returns all topics if the user is present" do
        user = User.new
        expect(Topic.visible_to(user)).to eq(Topic.all)
      end

      it "returns only public topics if user is nil" do
        expect(Topic.visible_to(nil)).to eq([@public_topic])
      end
    end

    describe "publicly_viewable" do
      it "returns all public topics" do
        expect(Topic.publicly_viewable).to eq([@public_topic])
      end
    end

    describe "privately_viewable" do
      it "returns all private topics" do
        expect(Topic.privately_viewable).to eq([@private_topic])
      end
    end
  end
end
