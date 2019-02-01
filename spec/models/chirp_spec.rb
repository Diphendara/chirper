require 'rails_helper'

RSpec.describe Chirp, type: :model do
  describe "Associations" do
    it { should belong_to :user }
  end
  describe "validations" do
      it { should validate_presence_of :body}
      it { should validate_length_of(:body) > 0 } 
  end
end
