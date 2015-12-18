require 'rails_helper'
include RandomData

RSpec.describe Vote, type: :model do
  let(:user) {User.create!(name: "Bloccit User", email: 'user@bloc.io', password: 'password')}
  let(:vote) {Vote.create!()}

  it {should belong_to(:user)}
  it {should belong_to(:post)}
  it {should validate_presence_of(:value)}
  it {should validate_inclusion_of(:value).in_array([-1, 1])}
end
