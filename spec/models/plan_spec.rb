require 'rails_helper'

describe Plan do
  describe '#create' do

    it "is invalid without a title" do 
      plan = build(:plan, title: nil)
      plan.valid?
      expect(plan.errors[:title]).to include("can't be blank")
    end

    it "is invalid without a user_id" do 
      plan = build(:plan, user_id: nil)
      plan.valid?
      expect(plan.errors[:user_id]).to include("can't be blank")
    end
  end
end
