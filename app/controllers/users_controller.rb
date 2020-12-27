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

      redirect_to user_path(@user)
   end

   private

   def find_user
      User.find(params[:id])
   end

   def user_params
      params.require(:user).permit(:name, :username, :password, :age)
   end

end
