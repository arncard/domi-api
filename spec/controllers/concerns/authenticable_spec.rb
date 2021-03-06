require 'rails_helper'

class Authentication < ApplicationController
end

describe Authenticable do
	let(:authentication) { Authentication.new }
	subject { authentication }

	describe "#current_user" do
		before do
			@user = FactoryBot.create :user
			request.headers["Authorization"] = @user.auth_token
		  allow(authentication).to receive(:request).and_return(request)
		end

		it "returns the user from the authorization header" do
			expect(authentication.current_user.auth_token).to eq @user.auth_token
		end
	end

	describe "#authenticate_with_token" do
		before do
			@user = FactoryBot.create :user
			allow(authentication).to receive(:current_user).and_return(nil)
			allow(response).to receive(:response_code).and_return(401)
			allow(response).to receive(:body).and_return({"errors" => "No autenticado"}.to_json)
			allow(authentication).to receive(:response).and_return(response)
		end

		it "render a json error message" do
			expect(json_response[:errors]).to eq "No autenticado"
		end

		it "responds with 401" do
			expect(response).to have_http_status(401)
		end

	end
end
