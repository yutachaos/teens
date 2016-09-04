class CommentsController < ApplicationController

    def create
          Comment.new(comment: params[:comment], event_id: params[:id], user_id: 1)
          redirect_to('/events/'+params[:id])
    end

end
