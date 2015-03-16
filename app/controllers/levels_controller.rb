class LevelsController < ApplicationController
before_action :set_level, only: [:show, :edit, :update, :destroy]
 after_action :verify_authorized

 
	def index
    @levels = Level.all.order('position')
    authorize Level
  end

  def show
    authorize @level
  end
 
  def new
    @level = Level.new
    authorize @level
  end

  def edit
    authorize @level
  end

  def create
    @level = Level.new(level_params)
    authorize @level
    respond_to do |format|
      if @level.save
        format.html { redirect_to levels_url , notice: 'Level was successfully created.' }
        #format.json { render action: 'show', status: :created, location: @article }
      else
        format.html { render action: 'new' }
        #format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    authorize @level
    respond_to do |format|
      if @level.update(level_params)
        format.html { redirect_to levels_url , notice: 'Lvel was successfully updated.' }
        #format.json { head :no_content }
      else
        format.html { render action: 'edit' }
       # format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    authorize @level
    @level.destroy
    respond_to do |format|
      format.html { redirect_to levels_url }
      #format.json { head :no_content }
    end
  end
  
  private

    def set_level
      @level = Level.find(params[:id])
    end

    def level_params
      params.require(:level).permit(:code, :name, :description, :position, :image,:released)
    end
end

