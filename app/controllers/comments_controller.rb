class CommentsController < ApplicationController
  before_action :set_comment, only: %i[ show edit update destroy ]

  # GET /comments or /comments.json
  def index
    @comments = Comment.all
  end

  # GET /comments/1 or /comments/1.json
  def show
    @event = @comment.event_id
  end

  # GET /comments/new
  def new
    @comment = Comment.new
  end

  # GET /comments/1/edit
  def edit
    @event = @comment.event_id
  end

  # POST /comments or /comments.json
  def create
    @comment = Comment.new(comment_params)
    @event = Event.find(params[:comment][:event_id])
    @comment.event = @event

    status_id = Status.where(name: @comment.update_event_status ).first.id
    @event.status_id = status_id

    respond_to do |format|
      if @comment.save
        @event.save
        format.html { redirect_to comment_url(@comment), notice: "Comment was successfully created." }
        format.json { render :show, status: :created, location: @comment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comments/1 or /comments/1.json
  def update
    @event = Event.find(params[:comment][:event_id])
    status_id = Status.where(name: @comment.update_event_status ).first.id
    @event.status_id = status_id

    respond_to do |format|
      if @comment.update(comment_params)
        @event.save
        format.html { redirect_to comment_url(@comment), notice: "Comment was successfully updated." }
        format.json { render :show, status: :ok, location: @comment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1 or /comments/1.json
  def destroy
    @comment.destroy
    @event = Event.find(params[:event_id])
    respond_to do |format|
      format.html { redirect_to event_path(@event), notice: "Comment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comment_params
      params.require(:comment).permit(:content, :update_event_status, :event_id)
    end
end
