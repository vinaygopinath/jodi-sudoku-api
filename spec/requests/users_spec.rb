require "rails_helper"

RSpec.describe "Users", type: :request do
  describe "POST /users" do
    let(:user_id) { SecureRandom.uuid }
    let(:username) { "username" }
    let(:user_params) { { id: user_id, username: username} }

    it "creates a user" do
      post "/users", params: user_params, as: :json
      expect(response).to have_http_status(:created)
      expect(response.parsed_body).to match(
        "user" => {
          "id" => user_id,
          "username" => username
        }
      )
    end
  end
end
