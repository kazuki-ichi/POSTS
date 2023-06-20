class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params.require(:post).permit(:title, :start_date, :end_date, :all_date, :schedule_memo))
    if @post.save
      flash[:notice] = "スケジュールを新規登録しました"
      redirect_to :posts
    else
      flash[:notice] = "スケジュール新規登録に失敗しました"
      render "new"
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(params.require(:post).permit(:title, :start_date, :end_date, :all_date, :schedule_memo))
      flash[:notice] = "スケジュールを更新しました"
      redirect_to :posts
    else
      flash[:notice] = "スケジュール更新に失敗しました"
      render "edit"
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    respond_to do |format|
    format.html { redirect_to :posts, notice: "スケジュールを削除しました", status: :see_other }
    end
  end
end