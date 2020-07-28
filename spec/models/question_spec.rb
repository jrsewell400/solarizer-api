require 'rails_helper'

RSpec.describe Question, type: :model do
  describe "validations" do
    it { should validate_presence_of :faq }
    it { should validate_presence_of :answer }
  end
end
