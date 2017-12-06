require 'rails_helper'

RSpec.describe Api::V1::SessionsController, type: :controller do
	describe "POST #create" do

		before(:each) do
			@user = FactoryBot.create :user
		end

		context "when the credentials are correct" do
			before(:each) do
				credentials = { email: @user.email, password: "12345678" }
				post :create, params: { session: credentials }
			end

			it "returns the user record corresponding to the given credentials" do
				@user.reload
				expect(json_response[:auth_token]).to eq @user.auth_token
			end

			it "responds with 200" do
				expect(response).to have_http_status(200)
			end
		end

		context "when the credentials are incorrect" do
			before(:each) do
				credentials = { email: @user.email, password: "invalidpassword" }
				post :create, params: { session: credentials }
			end

			it "returns a json with an error" do
				expect(json_response[:errors]).to eq "El correo o la contraseña son inválidos"
			end

			it "responds with 422" do
				expect(response).to have_http_status(422)
			end
		end
	end
end
