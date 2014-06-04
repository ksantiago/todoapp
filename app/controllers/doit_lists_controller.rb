class DoitListsController < ApplicationController
  before_action :set_doit_list, only: [:show, :edit, :update, :destroy]

  # GET /doit_lists
  # GET /doit_lists.json
  def index
    @doit_lists = DoitList.all
  end

  # GET /doit_lists/1
  # GET /doit_lists/1.json
  def show
  end

  # GET /doit_lists/new
  def new
    @doit_list = DoitList.new
  end

  # GET /doit_lists/1/edit
  def edit
  end

  # POST /doit_lists
  # POST /doit_lists.json
  def create
    @doit_list = DoitList.new(doit_list_params)

    respond_to do |format|
      if @doit_list.save
        format.html { redirect_to @doit_list, notice: 'Doit list was successfully created.' }
        format.json { render action: 'show', status: :created, location: @doit_list }
      else
        format.html { render action: 'new' }
        format.json { render json: @doit_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doit_lists/1
  # PATCH/PUT /doit_lists/1.json
  def update
    respond_to do |format|
      if @doit_list.update(doit_list_params)
        format.html { redirect_to @doit_list, notice: 'Doit list was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @doit_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doit_lists/1
  # DELETE /doit_lists/1.json
  def destroy
    @doit_list.destroy
    respond_to do |format|
      format.html { redirect_to doit_lists_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doit_list
      @doit_list = DoitList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doit_list_params
      params.require(:doit_list).permit(:title, :description)
    end
end
