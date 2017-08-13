class UsersController < ApplicationController
    def index
        @users = User.all

        render("users/index.html.erb")
    end
    
    def show
        userid = params[:id]
        @photos = User.find(userid).photos

        render("users/show.html.erb")
    end
    
end
