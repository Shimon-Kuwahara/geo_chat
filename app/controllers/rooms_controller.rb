class RoomsController < ApplicationController
    def show
        @rooms = current_user.user_rooms
    end
end
