class DatafirstsController < ApplicationController
  before_action :set_datafirst, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]

  # GET /datafirsts or /datafirsts.json
  def index
    @datafirsts = Datafirst.all
  end

  # GET /datafirsts/1 or /datafirsts/1.json
  def show
  end

  # GET /datafirsts/new
  def new
    #@datafirst = Datafirst.new
    @datafirst = current_user.datafirsts.build
  end

  # GET /datafirsts/1/edit
  def edit
  end

  # POST /datafirsts or /datafirsts.json
  def create
    #@datafirst = Datafirst.new(datafirst_params)
    @datafirst = current_user.datafirsts.build(datafirst_params)

    respond_to do |format|
      if @datafirst.save
        format.html { redirect_to datafirst_url(@datafirst), notice: "Datafirst was successfully created." }
        format.json { render :show, status: :created, location: @datafirst }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @datafirst.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /datafirsts/1 or /datafirsts/1.json
  def update
    respond_to do |format|
      if @datafirst.update(datafirst_params)
        format.html { redirect_to datafirst_url(@datafirst), notice: "Datafirst was successfully updated." }
        format.json { render :show, status: :ok, location: @datafirst }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @datafirst.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /datafirsts/1 or /datafirsts/1.json
  def destroy
    @datafirst.destroy!

    respond_to do |format|
      format.html { redirect_to datafirsts_url, notice: "Datafirst was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def correct_user
    @datafirst = current_user.datafirsts.find_by(id: params[:id])
    redirect_to datafirsts_path, notice: "Not Authorized To Edit this Friend" if @datafirst.nil?
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_datafirst
      @datafirst = Datafirst.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def datafirst_params
      params.require(:datafirst).permit(:first_name, :last_name, :email, :phone, :twitter, :user_id)
    end
end
