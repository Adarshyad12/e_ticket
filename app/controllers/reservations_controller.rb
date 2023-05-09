class ReservationsController < ApplicationController
  before_action :set_reservation, only: %i[ show edit update destroy ]

  def index
    @reservations = Reservation.all
  end

  # GET /reservations/1 or /reservations/1.json
  def show
  end

  # GET /reservations/new
  def new
    @reservation = Reservation.new
    @train_detail = TrainDetail.all
    @train_detail = TrainDetail.find(params[:train_detail_id])
  end

  # GET /reservations/1/edit
  def edit
    @reservation = Reservation.find(params[:id])
  end

  def create
    @train_detail = TrainDetail.find(params[:train_detail_id])
    @reservation = @train_detail.reservations.new(reservation_params)
    @reservation.user = current_user
    @reservation.amount = @reservation.traveller * @train_detail.fare  

    if @reservation.save
      redirect_to root_path	, notice: "Your reservation has been created successfully."
    else
      render :new
    end
  

  end

  # PATCH/PUT /reservations/1 or /reservations/1.json
  def update
  
  end

  # DELETE /reservations/1 or /reservations/1.json
  def destroy
    @reservation.destroy

    respond_to do |format|
      format.html { redirect_to reservations_url, notice: "Reservation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reservation
      @reservation = Reservation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reservation_params
      params.require(:reservation).permit!   
    end
end
