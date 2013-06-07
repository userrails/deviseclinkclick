require'opentok'
class TokboxController < ApplicationController
  def mentor_room
    @tok_session_id = params[:session]
    @tok_token = params[:token]
    @course_topic_duration=params[:duration]
    @course_name=params[:course]
    @user_display_name="params[:user]"
    @course_topic_course_content="params[:course_topic]"
  end
  def student_room
    @tok_session_id = params[:session]
    @tok_token = params[:token]
  end
  
end
