require'opentok'
class TokboxController < ApplicationController
  def mentor_room
    @tok_session_id = params[:session] if params[:session]
    @tok_token = params[:token] if params[:token]
    @course_topic_duration=params[:duration] if params[:duration]
    @course_name=params[:course] if params[:course]
    @user_display_name=params[:user] if params[:user]
    @course_topic_course_content="params[:course_topic]"
  end
  def student_room
    @tok_session_id = params[:session]
    @tok_token = params[:token]
  end
  
 def screen_share
 header={"accountid" => SCREEN_ACCOUNTID,"authtoken" => SCREEN_AUTHTOKEN}
 response=Typhoeus::Request.post("https://api.screenleap.com/v1/screen-shares", headers: header)
 @json=JSON.parse(response.body)
 @applet_html=@json['appletHtml']
 @view_url=@json['viewerUrl']
 render :partial=>"screen_share",:layout =>false
#render :js =>"$('#screen').html('Screen share is loading......');"
 end

end
