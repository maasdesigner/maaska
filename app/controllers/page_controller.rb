class PageController < ApplicationController

  def home
  end

  def about
  end


  def works
  end

  def clients
  end

  def contact
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])

    if @message.valid?
      NotificationsMailer.new_message(@message).deliver
      redirect_to(contact_path, :notice => "Message was successfully sent.")
    else
      flash[:error] = "Make sure you fill all the fields and the you used a propper email!"
      render :contact
    end
  end

end