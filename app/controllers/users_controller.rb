class UsersController < ApplicationController
	# before_action :authenticate, except [:login]

	def index
		render :json => User.all, status: 200
	end

	def show
		render :json => User.find(params[:id]), status: 200
	end

	def create
		user = User.create(user_params)

		if user.valid?
			render :json => user, status: 201
		else
			render :json => {error: "User validation failed"},
			status: 400
		end
	end

	def edit
		render :json => User.find(params[:id]), status: 200
	end

	def update
		user = User.find(params[:id])
		user.update_attributes(user_params)

		if user
			render :json => {success: "User updated successfully"}, status: 204
		else
			render :json => {error: "Failed to update user"}, status: 400
		end
	end

	def destroy
		user = User.find(params[:id])
		
		user.destroy

		if user.destroyed?
			render :json => {success: "User destroyed successfully"}, status: 204
		else
			render :json => {success: "Error removing user"}, status: 400
		end
	end

	def login
		user = User.find_by(email: params[:email])

		if user
			if user.authenticate(params[:password])
				render :json => user, status: 200
			else
				head 401
			end
		else
			render :json => {error: "User not found"}, status: 404
		end
	end

private
	def user_params
		params.require(:user).permit(:first_name, :last_name, :username, :email, :password)
	end


end
