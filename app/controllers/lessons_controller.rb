  class LessonsController < ApplicationController
    before_action :set_target_lesson, only: %i[show edit update destroy]
    before_action :authenticate_user!
  
    def index
      @lessons = params[:subject].present? ? Lesson.find(params[:subject]) : Lesson.all
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
      @comment = Comment.new(lesson_id: @lesson.id)
    end

    def edit
      @lesson.attributes = flash[:lesson] if flash[:lesson]
    end

    def update
      if @lesson.update(lesson_params)
        flash[:notice] = "「#{@lesson.title}」を更新しました。"
        redirect_to @lesson
      else
        flash[:lesson] = @lesson
        flash[:error_messages] = @lesson.errors.full_messages
        redirect_back fallback_location: @lesson
      end
    end

    private
      def lesson_params
        params.require(:lesson).permit(:grade, :subject, :teacher_name, :title, :explanation, :movie)
      end

      def set_target_lesson
        @lesson = Lesson.find(params[:id])
      end

  end