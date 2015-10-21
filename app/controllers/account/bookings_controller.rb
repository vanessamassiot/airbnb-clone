module Account
  class BookingsController < Account::Base
    def index
      @bookings = current_user.bookings
    end

    def show
      @booking = current_user.bookings.find(params[:id])
    end

    def edit
      @booking = current_user.bookings.find(params[:id])
    end

    def update
      @booking = current_user.bookings.find(params[:id])
      @booking.status = booking_params[:status]
      @booking.save
      redirect_to account_flats_path
    end

    private

    def booking_params
       params.require(:booking).permit(:status)
    end
  end
end
