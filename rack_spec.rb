require "environment"
require "rack_app"

fdescribe App do
	include Rack::Test::Methods

	let(:app) { App }

	it "creates a book" do
		post :books, book: { name: "My first book" }

		expect(last_response.status) to eq 201
	end
end
