require 'rails_helper'
include RandomData

RSpec.describe Question, type: :model do
  let (:my_question) { Question.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph, resolved: RandomData.random_boolean) }

  describe "attributes" do
  	it "should respond to title" do
  		expect(my_question).to respond_to(:title)
  	end

  	it "should respond to body" do
  		expect(my_question).to respond_to(:body)
  	end

  	it "should respond to resolved" do
  		expect(my_question).to respond_to(:resolved)
  	end
  end
end
