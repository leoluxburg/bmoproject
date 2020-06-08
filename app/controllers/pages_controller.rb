class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @topics = Topic.all
    @themes = Theme.all
  end

  def sandbox
    @post = Post.all.first
  end

end
