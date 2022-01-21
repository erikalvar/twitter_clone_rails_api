class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def create
		@user = User.create(
			name: params[:name],
			username: params[:username],
			email: params[:email],
			phone_number: params[:phone_number],
			birthdate: params[:birthdate],
			location: params[:location],
			bio: params[:bio],
			website: params[:website],
			profile_picture: params[:profile_picture],
		)
		render json: @user
  end

	def update
		@user = User.find(params[:id])
		@user.name = params[:name] || @user.name
		@user.username = params[:username] || @user.username
		@user.email = params[:email]
		@user.phone_number = params[:phone_number]
		@user.birthdate = params[:birthdate]
		@user.location = params[:location]
		@user.bio = params[:bio]
		@user.website = params[:website]
		@user.profile_picture = params[:profile_picture]
		@user.save
		render json: @user
	end

	def destroy
		@users = User.all
		@user = User.find(params[:id])
		@user.destroy
		render json: @users
	end
end
