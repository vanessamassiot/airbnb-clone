class BookingsController < ApplicationController
  before_action :find_flat, only: [:new, :create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new (booking_params)
    @booking[:client_id] = current_user.id
    @booking[:flat_id] = @flat.id
    @booking[:status] = "send"
    if @booking.valid?
      @booking.save
      redirect_to account_booking_path(@booking)
    else
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
