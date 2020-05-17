  class LessonsController < ApplicationController
  
    def index
      @lessons = Lesson.all
    end

    def mylesson
    end

    def new
      @lesson = Lesson.new
    end

    def create
      Lesson.create(lesson_params)
    end

    def show
      @lesson = Lesson.find(params[:id])
    end

    def edit
      @lesson = Lesson.find(params[:id])
    end

    def update
      lesson = Lesson.find(params[:id])
      lesson.update(lesson_params)
      redirect_to lesson
    end

    private
      def lesson_params
        params.require(:lesson).permit(:grade, :subject, :teacher_name, :title)
      end


  end