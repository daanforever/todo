# Main class for task interaction

class TasksController < ApplicationController

  before_filter :authenticate_user!

  # Show all tasks for current user
  def index
    @tasks = Task.where(:user_id => current_user.id).order('priority desc')
    # @tasks = Task.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tasks }
    end
  end

  # Show specified task for current user
  def show
    @task = Task.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @task }
    end
  end

  # Show form for new task
  def new
    @task = Task.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @task }
    end
  end

  # Edit specified task
  def edit
    @task = Task.find(params[:id])
  end

  # Create task
  def create
    @task = Task.new(params[:task])
    @task.user = current_user

    respond_to do |format|
      if @task.save
        format.html { redirect_to @task, notice: 'Task was successfully created.' }
        format.json { render json: @task, status: :created, location: @task }
      else
        format.html { render action: "new" }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # Update task
  def update
    @task = Task.find(params[:id])

    respond_to do |format|
      if @task.update_attributes(params[:task])
        format.html { redirect_to @task, notice: 'Task was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # Delete task
  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    respond_to do |format|
      format.html { redirect_to tasks_url }
      format.json { head :no_content }
    end
  end

  # Increase priority for task
  def up
    task = Task.find(params[:task_id])
    onCurrentPriority = Task.where(:user_id => current_user.id).where("priority = #{task.priority}").count
    if (onCurrentPriority > 1) then
        task.priority += 1
        task.save
    else
      nextTask = Task.where(:user_id => current_user.id).where("priority > #{task.priority}").order(:priority).limit(1).first
      if nextTask then
        task = Task.find(params[:task_id])
        task.priority, nextTask.priority = nextTask.priority, task.priority
        nextTask.save
        task.save
      end
    end
    # Ignore errors!
    @tasks = Task.where(:user_id => current_user.id).order('priority desc')
    respond_to do |format|
      format.html { render action: "index" }
      format.json { render json: @tasks }
      format.js   { }
    end
  end

  # Decrease priority for task
  def down
    task = Task.find(params[:task_id])
    nextTask = Task.where(:user_id => current_user.id).where("priority < #{task.priority}").order('priority desc').limit(1).first
    if nextTask then
      task.priority, nextTask.priority = nextTask.priority, task.priority
      nextTask.save
      task.save
    end
    @tasks = Task.where(:user_id => current_user.id).order('priority desc')
    respond_to do |format|
      format.html { render action: "index" }
      format.json { render json: @tasks }
      format.js   { }
    end
  end
end
