class MylessonsController < ApplicationController
  before_action :set_target_lesson

  def create
    mylesson = current_user.mylessons.build(lesson_id: params[:lesson_id])
    mylesson.save!
    redirect_to @lesson
  end

  def destroy
    mylesson = Mylesson.find_by(lesson_id: params[:lesson_id], user_id: current_user.id)
    mylesson.destroy!
    redirect_to @lesson
  end

  private
    def set_target_lesson
      @lesson = Lesson.find(params[:lesson_id])
    end
end
