module Account
  class FlatsController < ApplicationController

    def index
      @flats = current_user.flats
    end

    def new
      @flat = current_user.flats.build

    end

    def create
      @flat = current_user.flats.build(flat_params)

      if @flat.save
        redirect_to account_flats_path
      else
        render :new
      end
    end

    def show

    end

    def confirm_booking
      @booking = Flat.bookings.first
      @booking.status = "confirmée"
      @booking.status.save
    end

    private

    def flat_params
      params.require(:flat).permit(:title, :description, :beds, :street, :city, :postcode, :price)
    end


  end
end
# current_user.id
