require 'rails_helper'

RSpec.describe Tip, type: :model do
  describe "validations" do 
    it { should validate_presence_of :description }
  end

  describe "class method" do
    it ".random_tip" do
      tip1 = Tip.create!(description: "Turn it off. Energy conservation is one of the most important things you can do to reduce your carbon footprint.")
      tip2 = Tip.create!(description: "Electronics that are plugged in still consume energy.  Unplug unused electronics to save money on your energy bill!")
      tip3 = Tip.create!(description: "Try to cut out plastic, especially types which cannot be recycled locally.")

      tips = Tip.all
      
      expect(tips).to include(Tip.random_tip)
    end
  end
end
