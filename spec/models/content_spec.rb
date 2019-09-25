require 'rails_helper'

describe Content do
  describe '#create' do

    it "is invalid without a place_name" do 
      content = build(:content, place_name: nil)
      content.valid?
      expect(content.errors[:place_name]).to include("can't be blank")
    end

    it "is invalid without a description" do 
      content = build(:content, description: nil)
      content.valid?
      expect(content.errors[:description]).to include("can't be blank")
    end

    it "is invalid without a plan_id" do 
      content = build(:content, plan_id: nil)
      content.valid?
      expect(content.errors[:plan_id]).to include("can't be blank")
    end

    it "is invalid without a image" do 
      content = build(:content, image: nil)
      content.valid?
      expect(content.errors[:image]).to include("can't be blank")
    end

    it "is invalid without a time" do 
      content = build(:content, time: nil)
      content.valid?
      expect(content.errors[:time]).to include("can't be blank")
    end
  end
end
