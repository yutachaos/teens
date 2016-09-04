class UsersController < ApplicationController

    def index
      @title = 'ユーザーページ'
      @headTitle =  'MY PAGE'
      #@user = User.find_by(:name => params[:name], :password => params[:password])
      @user = User.find(1)
      @pastEvents= Event.where(:post_flag=>0)
      @postEvents= Event.where(:post_flag=>1)

      @counts = Event.count

    end

    def create
    end


    private
    def search_params
      params.permit(:name)
    end

end
