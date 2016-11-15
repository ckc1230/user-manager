require "rails_helper"

describe "User API Tests" do
	it "GET /users should return 200" do
		get "/users"
		expect(response).to have_http_status(200)
	end

	it "GET /users/:id should return 200" do
		post "/users", params: {
			user: {
				first_name: "Foo",
				last_name: "Bar",
				username: "foobar",
				email: "foobar@gmail.com"
			}
		}

		get "/users/1"

		expect(response).to have_http_status(200)
	end

	it "POST /users should return 201" do
		post "/users", params: {
			user: {
				first_name: "Foo",
				last_name: "Bar",
				username: "foobar",
				email: "foobar@gmail.com"
			}
		}

		expect(response).to have_http_status(201)
	end

	it "POST /users missing an attribute should return 400" do
		post "/users", params: {
			user: {
				first_name: "Foo",
				username: "foobar",
				email: "foobar@gmail.com"
			}
		}

		expect(response).to have_http_status(400)
	end

	it "EDIT /users/:id/edit should return 200" do
		post "/users", params: {
			user: {
				first_name: "Foo",
				last_name: "Bar",
				username: "foobar",
				email: "foobar@gmail.com"
			}
		}

		get "/users/1/edit"

		expect(response).to have_http_status(200)
	end

	it "PUT /users/:id should return 204" do
		post "/users", params: {
			user: {
				first_name: "Foo",
				last_name: "Bar",
				username: "foobar",
				email: "foobar@gmail.com"
			}
		}

		put "/users/1", params: {
			user: {
				first_name: "Bar",
				last_name: "Foo",
				username: "barfoo",
				email: "barfoo@gmail.com"
			}
		}

		expect(response).to have_http_status(204)
	end


	it "DELETE /users/:id should return 204" do
		post "/users", params: {
			user: {
				first_name: "Foo",
				last_name: "Bar",
				username: "foobar",
				email: "foobar@gmail.com"
			}
		}

		delete "/users/1"

		expect(response).to have_http_status(204)
	end

end