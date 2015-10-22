class BookingsController < ApplicationController
  before_action :find_flat, only: [:new, :create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = @flat.bookings.new(booking_params)
    @booking.client = current_user
    @booking.status = "send"

    if @booking.save
      flash[:notice] = "Votre demande de réservation a bien été envoyée au propriétaire"
      redirect_to account_booking_path(@booking)
    else
      flash[:alert] = "oups ça merdouille, merci de recommencer"
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:checkin, :checkout)
  end

  def find_flat
    @flat = Flat.find(params[:flat_id])
  end
end
