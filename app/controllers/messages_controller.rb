class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    if @message.save
      flash[:success] = "Message sent!"
    else
      flash[:error] = "Unable to send message :("
    end
    redirect_to root_path
  end

  private

  def message_params
    params.require(:message).permit(:name, :email, :body)
  end
end
