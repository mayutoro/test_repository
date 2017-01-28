class PostsController < ApplicationController

  before_action :set_title, only: [:index, :show, :new, :edit] 
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!, only: [:index, :show, :edit, :update, :destroy]
  
  def index
     @posts = Post.all
  end
  
  def show
  end
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to contact_index_path, flash: { message: 'フォームが送信されました。' }
    else
      @page_title = "おといあわせフォーム"
      render 'new'
    end
  end
  
  def edit
  end
  
  def update
    if @post.update(post_params)
      redirect_to posts_path
    else
      render 'edit'
    end
  end
  
  def destroy
    @post.destroy
    redirect_to posts_path
  end
  
  private
  
  def set_title
    titles = { "index" => "Index", "show" => "Show", "new" => "おといあわせフォーム", "edit" => "Edit" }
    @page_title = titles[action_name]
  end
  
  def post_params
    params[:post].permit(:name, :email, :note)
  end
  
  def set_post
    @post = Post.find(params[:id])
  end
  
end
