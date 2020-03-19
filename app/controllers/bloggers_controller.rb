class BloggersController < ApplicationController
  def index
    @bloggers = Blogger.all
  end

  def new
    @blogger = Blogger.new
  end

  def create
    @blogger = Blogger.create(blogger_params)
    if @blogger.save
      redirect_to blogger_path(@blogger)
    else
      flash[:errors] = @blogger.errors.full_messages
      redirect_to new_blogger_path
    end
  end

  def show
    @blogger = Blogger.all.find(params[:id])
  end

  def edit
    @blogger = Blogger.find(params[:id])
  end

  def update
    @blogger = Blogger.find(params[:id])
    @blogger.update(blogger_params)
    redirect_to blogger_path(@blogger)
  end

  def destroy
    @blogger = Blogger.find(params[:id])
    @blogger.destroy
    redirect_to bloggers_path
  end

  private 

    def blogger_params
      params.permit(:name, :age, :bio)
    end

end
