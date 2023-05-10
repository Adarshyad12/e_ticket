class TrainDetailsController < ApplicationController


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
    @train_detail = TrainDetail.find(params[:id])
  end

  
  def create
    @train_detail = TrainDetail.new(train_detail_params)
      
    if @train_detail.save 
        
        redirect_to train_details_path
      
      else 
        render :new, status: :unprocessable_entity 
      end
    
  
  
      
  end


  def update
    @train_detail = TrainDetail.find(params[:id])

    if @train_detail.update(train_detail_params)
      redirect_to train_details_path
    else
      render :edit, status: :unprocessable_entity
    end
  end


  def destroy
    @train_detail = TrainDetail.find(params[:id])
   
    @train_detail.destroy
    redirect_to train_details_path(@train_detail)

  end

  def search
    @source = params[:source]
    @destination = params[:destination]
    @departure_time = params[:departure_time]
    @results = TrainDetail.where("source LIKE ? AND destination LIKE ? AND departure_time LIKE ?","%#{@source}%", "%#{@destination}%", "%#{@departure_time}%")
  end

  private
    def train_detail_params
     
      params.require(:train_detail).permit!
    end
end
