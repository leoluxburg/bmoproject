class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :community, :contact ]

  def home
    @topics = Topic.all
    @themes = Theme.all
    @lecture = Lecture.all.last
  end

  def sandbox
    @post = Post.all.first
  end

  def community

  end

  def manifest

  end

  def contact

  end


end
