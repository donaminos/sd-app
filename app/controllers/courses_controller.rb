class CoursesController < ApplicationController

  before_action :set_course, only: [:show, :edit, :update, :destroy]
  after_action :verify_authorized
  # GET /courses
  # GET /courses.json
  def index
    if (1..5).include? params[:level].to_f
      @courses = Course.where(level_id: params[:level])
      @level = Level.find(params[:level])
      if not @level.released 
          redirect_to levels_path
      end
    else
      @courses = Course.all
      redirect_to levels_path
    end

    authorize @courses
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
    authorize @course
     if signed_in?
      redirect_to course_lessons_path(@course)
    end
  end


  # GET /courses/new
  def new
    @course = Course.new
    authorize @course
  end

  # GET /courses/1/edit
  def edit
    authorize @course
  end


  # POST /courses
  # POST /courses.json
  def create
    @course = Course.new(course_params)
    authorize @course
    respond_to do |format|
      if @course.save
        format.html { redirect_to @course, notice: 'Course was successfully created.' }
        #format.json { render action: 'show', status: :created, location: @course }
      else
        format.html { render action: 'new' }
        #format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /courses/1
  # PATCH/PUT /courses/1.json
  def update
    authorize @course
    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to @course, notice: 'Course was successfully updated.' }
        #format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        #format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    authorize @course
    @course.destroy
    respond_to do |format|
      format.html { redirect_to courses_url }
     # format.json { head :no_content }
    end
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_params
      params.require(:course).permit(:title, :description, :introduction, :order, :video_id, :slug)
    end
end
