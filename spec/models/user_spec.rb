require 'rails_helper'

describe User, type: :model do
    it { should have_and_belong_to_many :items}
    it { should validate_presence_of :email }
    it { should validate_uniqueness_of(:email).case_insensitive }
    it { should validate_presence_of :username }
    it { should validate_uniqueness_of(:username).case_insensitive }
    it { should validate_presence_of :password }
end
