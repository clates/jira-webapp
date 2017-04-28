class JiraTasksController < ApplicationController
  before_action :set_jira_task, only: [:show, :edit, :update, :destroy]

  # GET /jira_tasks
  # GET /jira_tasks.json
  def index
    @jira_tasks = JiraTask.all
  end

  # GET /jira_tasks/1
  # GET /jira_tasks/1.json
  def show
  end

  # GET /jira_tasks/new
  def new
    @jira_task = JiraTask.new
  end

  # GET /jira_tasks/1/edit
  def edit
  end

  # POST /jira_tasks
  # POST /jira_tasks.json
  def create
    @jira_task = JiraTask.new(jira_task_params)

    respond_to do |format|
      if @jira_task.save
        format.html { redirect_to @jira_task, notice: 'Jira task was successfully created.' }
        format.json { render :show, status: :created, location: @jira_task }
      else
        format.html { render :new }
        format.json { render json: @jira_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jira_tasks/1
  # PATCH/PUT /jira_tasks/1.json
  def update
    respond_to do |format|
      if @jira_task.update(jira_task_params)
        format.html { redirect_to @jira_task, notice: 'Jira task was successfully updated.' }
        format.json { render :show, status: :ok, location: @jira_task }
      else
        format.html { render :edit }
        format.json { render json: @jira_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jira_tasks/1
  # DELETE /jira_tasks/1.json
  def destroy
    @jira_task.destroy
    respond_to do |format|
      format.html { redirect_to jira_tasks_url, notice: 'Jira task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jira_task
      @jira_task = JiraTask.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jira_task_params
      params.require(:jira_task).permit(:title, :hours, :assignee, :parent, :sprintID)
    end
end
