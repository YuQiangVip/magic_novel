class Api::HomesController < ApplicationController

  def talks
    contents = Rails.cache.read(:talk_content) || []
    if params[:user_id]
      user = User.find(params[:user_id])
      _content = {
        name: user.name,
        content: params[:content],
        nickname: "sb",
        created_at: Time.now.to_s
      }
      contents.delete_at(0) if contents.size > 150
      contents << _content
      Rails.cache.write(:talk_content, contents)
      FayeClient.send_message("/talks/broadcast", {user: _content})
      render json:{ code: 1, data: contents }
    else
      render json:{ code: 0, data: contents }
    end

  end
end