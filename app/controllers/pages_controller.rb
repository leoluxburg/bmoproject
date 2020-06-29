class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :community, :contact, :links ]

  def home
    @topics = Topic.all
    @themes = Theme.all
    @lectures = Lecture.all.last(3)
    @post = Post.all.last
  end

  def sandbox
    @post = Post.all.first
  end

  def community

  end

  def links

  end

  def manifest

  end

  def contact

  end


end
