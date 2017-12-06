require 'rails_helper'

RSpec.describe User, type: :model do
	before { @user = build(:user) }

	subject { @user }

	it "is not valid without email" do
		@user.email = ""
		expect(@user).to_not be_valid
	end

	it "is not valid without password" do
		@user.email = "user@example.com"
		@user.password = ""
		expect(@user).to_not be_valid
	end

	it { should validate_uniqueness_of(:auth_token) }
end
