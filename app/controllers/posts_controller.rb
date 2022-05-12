class PostsController < ApplicationController
  # before_action :authenticate_user
  
  def index
    @posts = Post.all.order(created_at: :asc)
  end
  
  def show
  end

  def edit 
  end

  def yes
    @post = Post.new( yes_no: "YES" )
    if @post.save
      # flash[:notice] = "質問を受け付けました"
      redirect_to("/posts/show")
    else
      render("posts/new")
    end
  end

  def no
    @post = Post.new( yes_no: "NO" )
    if @post.save
      # flash[:notice] = "質問を受け付けました"
      redirect_to("/posts/show")
    else
      render("posts/new")
    end
    
  end

  def stop
    $stop = "stop"
    flash.now[:notice] = '質問停止中'
    redirect_to("/posts/index")
  end

  def start
    $stop = "start"
    Post.destroy_all
    flash.now[:notice] = '質問受付中'
    redirect_to("/posts/index")
  end
  
end
