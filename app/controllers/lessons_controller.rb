class LessonsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_lesson, only: [:show, :edit, :update, :destroy, :move_up, :move_down]
  before_action :load_course, only: [:index, :new, :create]
  after_action :verify_authorized
  # GET /courses/:course_id/lessons
  # GET /lessons.json
  def index
    @lessons = @course.lessons
    authorize @lessons
  end

  # GET /courses/:course_id/lessons/1
  # GET /lessons/1.json
  def show
  #  @lesson = @course.lessons.find(params[:id])
   authorize @lesson
  end

  # GET /lessons/new
  def new
    #@lesson = Lesson.new
    @lesson = @course.lessons.build
   authorize @lesson
  end

   # GET /courses/:course_id/lessons/:id/edit
  def edit
  #  @lesson = @course.lessons.find(params[:id])
     authorize @lesson
  end

  def move_up

    @lesson.move_higher
    authorize @lesson
     #format.html { redirect_to [@lesson.course, @lesson], notice: 'Lesson was successfully updated.' }
    redirect_to course_lessons_url 
  end

  def move_down
   
    @lesson.move_lower
    authorize @lesson
   # format.html { redirect_to [@lesson.course, @lesson], notice: 'Lesson was successfully updated.' }
     redirect_to course_lessons_url 
  end

  # POST /lessons
  # POST /lessons.json
  def create
   # @lesson = Lesson.new(lesson_params)
    
    @lesson = @course.lessons.create(lesson_params)
    authorize @lesson
    respond_to do |format|
      if @lesson.save
        format.html { redirect_to @lesson, notice: 'Lesson was successfully created.' }
        #format.json { render action: 'show', status: :created, location: @lesson }
      else
        format.html { render action: 'new' }
        #format.json { render json: @lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lessons/1
  # PATCH/PUT /lessons/1.json
  def update
    
    @lesson = @course.lessons.friendly.find(params[:id])
    authorize @lesson
    respond_to do |format|
      if @lesson.update(lesson_params)
        format.html { redirect_to @lesson, notice: 'Lesson was successfully updated.' }
       # format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        #format.json { render json: @lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/:course_id/lessons/1
  # DELETE /courses/:course_id/lessons/1.xml
  def destroy
    
    @lesson = @course.lessons.friendly.find(params[:id])
    authorize @lesson
    @lesson.destroy
    respond_to do |format|
      format.html { redirect_to course_lessons_url(@course) }
      #format.json { head :no_content }
    end
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_lesson
      #@lesson = Lesson.find(params[:id])
      @lesson = Lesson.friendly.find(params[:id])
      @course = @lesson.course
    end

    def load_course
      @course = Course.friendly.find(params[:course_id])
   end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lesson_params
      params.require(:lesson).permit(:title, :description, :order, :video_id, :course_id, :note, :position, :slug)
    end
end
