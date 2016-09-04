class CommentsController < ApplicationController

    def create
          comment = Comment.new(comment: params[:comment], event_id: params[:id], user_id: 1)
          comment.save
          redirect_to('/events/'+params[:id])
    end

end
