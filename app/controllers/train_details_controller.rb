class TrainDetailsController < ApplicationController
  before_action :set_train_detail, only: %i[ show edit update destroy ]

  # GET /train_details or /train_details.json
  def index
    @train_details = TrainDetail.all
  end

  def show
    @train_detail = TrainDetail.find(params[:id])
  end

  
  def new
    @train_detail = TrainDetail.new
  end

  
  def edit
  end

  
  def create
    @train_detail = TrainDetail.new(train_detail_params)
      
    if @train_detail.save 
        
        redirect_to @train_detail
      
      else 
        render :new, status: :unprocessable_entity 
      end
    
  
  
      
  end

  # PATCH/PUT /train_details/1 or /train_details/1.json
  def update
    respond_to do |format|
      if @train_detail.update(train_detail_params)
        format.html { redirect_to train_detail_url(@train_detail), notice: "Train detail was successfully updated." }
        format.json { render :show, status: :ok, location: @train_detail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @train_detail.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @train_detail = TrainDetail.find(params[:id])
   
    @train_detail.destroy
    redirect_to train_details_path(@train_detail)

  end

  private

    def set_train_detail
      @train_detail = TrainDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def train_detail_params
     
      params.require(:train_detail).permit!
    end
end
