require 'rails_helper'

RSpec.describe Answer, type: :model do
  let(:question) { Question.create(title: "New Question title", body: "New Question body") }
  let(:answer) { Answer.create(body: "New Answer Body", question: question) }

  describe "attributes" do
  	it "responds to body" do
  		expect(answer).to respond_to(:body)
  	end

  	it "responds to question key" do
  		expect(answer).to respond_to(:question)
  	end
  end
end
