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

    private
      def lesson_params
        params.require(:lesson).permit(:grade, :subject, :teacher_name, :title)
      end


  end