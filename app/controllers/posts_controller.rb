class PostsController < ApplicationController

  def index
  	@posts = Post.all
  end

  def show
  	@post = Post.find(params[:id])
    #@post.title = params[:post][:title]
    #@post.body = params[:post][:body]
  end

  def new # views/posts/new.html.erb
  	@post = Post.new
  end

  def create
  	@post = Post.new
  	@post.title = params[:post][:title]
  	@post.body = params[:post][:body]

  	if @post.save
  		flash[:notice] = "Your post was successfully created."
  		redirect_to @post
  	else
  		flash[:error] = "There was an error saving your post. Please try again."
  		render :new
  	end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.title = params[:post][:title]
    @post.body = params[:post][:body]

    if @post.save
      flash[:notice] = "Post was updated."
      redirect_to @post
    else
      flash[:error] = "There was an error saving the post. Please try again."
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      flash[:notice] = "\"#{@post.title}\" was deleted succesfully"
      redirect_to posts_path
    else
      flash[:error] = "There was an error deleting the post."
      render :show
    end
  end
end
