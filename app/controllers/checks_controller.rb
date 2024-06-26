class ChecksController < ApplicationController
  before_action :set_check, only: [:show, :edit, :update, :destroy]

  # GET /checks
  # GET /checks.json
  def index
  end

  # GET /checks/1
  # GET /checks/1.json
  def show
    @busies = Busy.all
    @novo_check = Check.new
    
    @date = params[:checkin] ? Date.parse(params[:checkin]) : Date.today

    if !@busies.busy?(@check.checkin)
      flash.now[:success] = "A data #{@check.checkin.strftime("%d/%m/%Y")} é está disponível para reserva!"
    else
      flash.now[:danger] = "A data #{@check.checkin.strftime("%d/%m/%Y")} não é está disponível para reserva!"
    end
  end

  # GET /checks/new
  def new
    @check = Check.new
  end

  # GET /checks/1/edit
  def edit
  end

  # POST /checks
  # POST /checks.json
  def create
    @check = Check.new(check_params)

    if @check.save
      flash.now[:success] = 'Este dia está disponível!'
      redirect_to @check
    else
      render 'new'
    end

  end

  # PATCH/PUT /checks/1
  # PATCH/PUT /checks/1.json
  def update
    respond_to do |format|
      if @check.update(check_params)
        format.html { redirect_to @check, notice: 'Check was successfully updated.' }
        format.json { render :show, status: :ok, location: @check }
      else
        format.html { render :edit }
        format.json { render json: @check.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /checks/1
  # DELETE /checks/1.json
  def destroy
    @check.destroy
    respond_to do |format|
      format.html { redirect_to checks_url, notice: 'Check was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_check
      @check = Check.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def check_params
      params.require(:check).permit(:checkin, :checkout, :days)
    end
end
