class ContactController < ApplicationController
  def index
    @message = flash[:message]
    @page_title = "おといあわせ"
  end
end
