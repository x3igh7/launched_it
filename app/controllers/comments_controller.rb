class CommentsController < ApplicationController

  def create
    @app = App.find(params[:app_id])
    @comment = @app.comments.build(params[:comment])
    if @comment.save
      flash[:notice] = 'Comment was successfully created'
      redirect_to app_path(@app)
    else
      flash[:error] = "Error creating comment. All fields are required."
      render "apps/show"
    end
  end





end
