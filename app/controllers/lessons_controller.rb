  class LessonsController < ApplicationController
    before_action :set_target_lesson, only: %i[show edit update destroy]
  
    def index
      @lessons = Lesson.page(params[:page])
    end

    def mylesson
      @lessons = Lesson.page(params[:page])
    end

    def new
      @lesson = Lesson.new
    end

    def create
     lesson = Lesson.create(lesson_params)
     if lesson.save
      flash[:notice] = "「#{lesson.title}」を作成しました。"
      redirect_to lesson
     else
      redirect_to new_lesson_path, flash: {
        lesson: lesson,
        error_messages: lesson.errors.full_messages
      }
     end
    end

    def destroy
     @lesson.delete
     redirect_to lessons_path, flash: { notice: "「#{@lesson.title}」を削除しました。"} 
    end

    def show
    end

    def edit
    end

    def update
      @lesson.update(lesson_params)
      redirect_to @lesson
    end

    private
      def lesson_params
        params.require(:lesson).permit(:grade, :subject, :teacher_name, :title, :explanation, :movie)
      end

      def set_target_lesson
        @lesson = Lesson.find(params[:id])
      end

  end