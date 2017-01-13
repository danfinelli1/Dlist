class EventController < ApplicationController
    def index
      if params[:category]
        @events = Event.where(:category => params[:category])
      else
        @events = Event.all
      end
      if params[:price]
        @events = Event.where('price < ?', params[:price])
      end
    end

    def add_attender
        @event = Event.find_by_id(params[:id])
        @event.users << current_user
        redirect_to event_path(@event)
    end

    def remove_attender
        @event = Event.find(params[:id])
        Jointable.delete(Jointable.where(event_id:@event.id, user_id:current_user.id))
        redirect_to event_path(@event)
    end

    def new
        @event = Event.new

    end

    def create
        @event = Event.create(event_params)
        redirect_to user_path(current_user)
    end

    def show
        @event = Event.find_by_id(params[:id])
        @creator=User.find_by_id(@event.user_id)
        @picture = Picture.where(event_id:@event.id)
        
    end

    def edit
        @event = Event.find_by_id(params[:id])
    end

    def update
        updated_event = Event.find_by_id(params[:id])
        if updated_event.update(event_params)
            redirect_to user_path(current_user)
        else
            redirect_to edit_event_path
        end
    end

    def destroy
        deleted_event = Event.find_by_id(params[:id])
        Event.destroy(deleted_event)
        redirect_to user_path(current_user)
    end

    private

    def event_params
        params.require(:event).permit(:title, :body, :date, :category, :price, :address, :zipcode, :user_id)
    end
end
