class EventsController < ApplicationController

    def index
      @title = 'teens'
      @headTitle = 'OPEN QUESTION'
    end

    def create
    end

    def edit
      @event = Event.save(params[:id])
    end

    def update
      event = Event.save(params[:id])
    end

    def show
      @title = 'TEENS BUSSINESS SCHOOL'
      @event = Event.find(params[:id])
      @comments = Comment.where(:event_id => params[:id])
      @headTitle =  @event .title
    end

   def  slide
      @title = 'LEARNING 1'
      @headTitle =  'LEARNING 1'
      @comments = Comment.where(:event_id => 5)
   end

    def result

    end

    private
    def search_params
      params.permit(:name)
    end

end
