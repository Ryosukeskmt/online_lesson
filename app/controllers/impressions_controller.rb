class ImpressionsController < ApplicationController
  before_action :set_target_lesson

  def create
    @impression = current_user.impressions.build(lesson_id: params[:lesson_id])
    @impression.save!
    redirect_to root_path
  end

  def destroy
    @impression = Impression.find_by(lesson_id: params[:lesson_id], user_id: current_user.id)
    @impression.destroy!
    redirect_to root_path
  end

  private
    def impression_params
      params.require(:impression).permit(:understanding)
    end

    def set_target_lesson
      lesson = Lesson.find(params[:lesson_id])
    end
end
