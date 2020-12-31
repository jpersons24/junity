class UsersController < ApplicationController

   def show
      @user = find_user
   end

   def edit
      @user = find_user
   end

   def update
      @user = find_user
      @user.update(user_params)

      if @user.valid?
         redirect_to user_path(@user)
      else
         flash[:errors_array] = @user.errors.full_messages
         redirect_to edit_user_path(@user)
      end
   end

   def new
      @user = User.new
   end

   def create
      @user = User.create(user_params)

      if @user.valid?
         redirect_to user_path(@user)
      else
         flash[:errors_array] = @user.errors.full_messages
         redirect_to new_user_path
      end
      # byebug
   end

   private

   def find_user
      User.find(params[:id])
   end

   def user_params
      params.require(:user).permit(:name, :username, :password, :age)
   end

end
