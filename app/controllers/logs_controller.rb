class LogsController < ApplicationController
  before_action :set_target_lesson

  def create
    log = current_user.logs.build(lesson_id: params[:lesson_id])
    log.save!
    redirect_to @lesson
  end

  def destroy
    log = Log.find_by(lesson_id: params[:lesson_id], user_id: current_user.id)
    log.destroy!
    redirect_to @lesson
  end

  private
    def set_target_lesson
      @lesson = Lesson.find(params[:lesson_id])
    end
end

