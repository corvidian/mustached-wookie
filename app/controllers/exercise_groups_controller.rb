class ExerciseGroupsController < ApplicationController
  before_action :set_exercise_group, only: [:show, :edit, :update, :destroy]

  # GET /exercise_groups
  # GET /exercise_groups.json
  def index
    @exercise_groups = ExerciseGroup.all
  end

  # GET /exercise_groups/1
  # GET /exercise_groups/1.json
  def show
  end

  # GET /exercise_groups/new
  def new
    @exercise_group = ExerciseGroup.new
  end

  # GET /exercise_groups/1/edit
  def edit
  end

  # POST /exercise_groups
  # POST /exercise_groups.json
  def create
    @exercise_group = ExerciseGroup.new(exercise_group_params)

    respond_to do |format|
      if @exercise_group.save
        format.html { redirect_to @exercise_group, notice: 'Exercise group was successfully created.' }
        format.json { render action: 'show', status: :created, location: @exercise_group }
      else
        format.html { render action: 'new' }
        format.json { render json: @exercise_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exercise_groups/1
  # PATCH/PUT /exercise_groups/1.json
  def update
    respond_to do |format|
      if @exercise_group.update(exercise_group_params)
        format.html { redirect_to @exercise_group, notice: 'Exercise group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @exercise_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exercise_groups/1
  # DELETE /exercise_groups/1.json
  def destroy
    @exercise_group.destroy
    respond_to do |format|
      format.html { redirect_to exercise_groups_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exercise_group
      @exercise_group = ExerciseGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exercise_group_params
      params.require(:exercise_group).permit(:name, :course_id)
    end
end
