class BookingsController < ApplicationController
  before_action :find_flat, only: [:new, :create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = @flat.bookings.new(booking_params)
    @booking.client = current_user
    @booking.status = "envoyée"

    if @booking.save # valid? + commit db
      redirect_to account_booking_path(@booking)
    else
      render :new
    end

  end

  private

  def booking_params
    params.require(:booking).permit(:checkin, :checkout)
  end

  def find_flat
    @flat = Flat.find(params[:flat_id])
  end
end
