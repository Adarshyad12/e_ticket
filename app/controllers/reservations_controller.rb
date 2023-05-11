class ReservationsController < ApplicationController
  before_action :set_reservation, only: %i[ show edit update destroy ]

  def index
    @reservations = Reservation.all
  end

  def show
  end

  
  def new
    @reservation = Reservation.new
    @train_detail = TrainDetail.all
    @train_detail = TrainDetail.find(params[:train_detail_id])
  end
  
  def reservation_details
    @reservations = current_user.reservations
  end
  
  def edit
    @reservation = Reservation.find(params[:id])
  end

  def create
    @train_detail = TrainDetail.find(params[:train_detail_id])
    @reservation = @train_detail.reservations.new(reservation_params)
    @reservation.user = current_user

    @reservation.amount = @reservation.traveller * @train_detail.fare  

    if @reservation.save


      EticketMailer.with(user:current_user,reservation:@reservation).shipping_confirmation_email.deliver_now
      redirect_to reservations_reservation_details_path	, notice: "Your reservation has been created successfully."
    else
      render :new
    end
  

  end

  # PATCH/PUT /reservations/1 or /reservations/1.json
  def update
  
  end

  # DELETE /reservations/1 or /reservations/1.json
  def destroy
    @reservation = Reservation.find(params[:id])
   
    @reservation.destroy
    redirect_to train_detail_reservations_path
  end

  private
    def set_reservation
      @reservation = Reservation.find(params[:id])
    end

    def reservation_params
      params.require(:reservation).permit!   
    end
end
