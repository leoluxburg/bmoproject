class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :community, :contact, :links, :ig ]

  def home
    @topics = Topic.all
    @themes = Theme.all
    @lectures = Lecture.all.last(3)
    @post = Post.all.last
  end

  def dashboard
    @topics = Topic.all
    @themes = Theme.all
    @post = Post.all
    @lectures = Lecture.all
    @subscriptions = Subscription.all
    @bmos = Bmo.all
  end

  def posts_topics
    @topics = Topic.all
  end

  def all_lectures
    @lectures = Lecture.all
  end

  def sandbox
    @post = Post.all.first
  end

  def ig

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
