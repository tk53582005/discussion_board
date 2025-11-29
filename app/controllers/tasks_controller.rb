class TasksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_board
  before_action :set_task, only: %i[show edit update destroy]
  before_action :authorize_user!, only: %i[edit update destroy]

  def show
  end

  def index
    @tasks = @board.tasks.order(due_date: :asc)
  end

  def new
    @task = @board.tasks.build
  end

  def create
    @task = @board.tasks.build(task_params)
    @task.user = current_user

    if @task.save
      redirect_to board_path(@board), notice: "タスクを作成しました"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @task.update(task_params)
      redirect_to board_path(@board), notice: "タスクを更新しました"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @task.destroy
    redirect_to board_path(@board), notice: "タスクを削除しました"
  end

  private

  def set_board
    @board = Board.find(params[:board_id])
  end

  def set_task
    @task = @board.tasks.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :content, :due_date)
  end

  def authorize_user!
    redirect_to board_path(@board), alert: "権限がありません" unless @task.user == current_user
  end
end
