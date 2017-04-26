class ProfileFriendController < ApplicationController
	before_action :authenticate_login!
  def index
  	@inboxes = Inbox.new
  end
end
