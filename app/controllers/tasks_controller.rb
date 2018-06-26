class TasksController < ApplicationController

  def index
    @tasks = Task.all
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to root_path , notice: '作成しました'
    else
      redirect_to root_path , flash: {error: '作成できませんでした'}
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to root_path , notice: '更新しました'
    else
      flash.now[:error] = '更新できませんでした'
      render 'edit'
    end
  end

  def toggle
    @task = Task.find(params[:id])
    @task.toggle!(:is_done)
    redirect_to root_path
  end

  private
  def task_params
    params.require(:task).permit(:name, :content)
  end

end
