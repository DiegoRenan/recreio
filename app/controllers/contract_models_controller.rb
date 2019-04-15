class ContractModelsController < ApplicationController
  before_action :set_contract_model, only: [:show, :edit, :update, :destroy]

  # GET /contract_models
  # GET /contract_models.json
  def index
    @contract_models = ContractModel.all
  end

  # GET /contract_models/1
  # GET /contract_models/1.json
  def show
  end

  # GET /contract_models/new
  def new
    @contract_model = ContractModel.new
  end

  # GET /contract_models/1/edit
  def edit
  end

  # POST /contract_models
  # POST /contract_models.json
  def create
    @contract_model = ContractModel.new(contract_model_params)

    respond_to do |format|
      if @contract_model.save
        format.html { redirect_to @contract_model, notice: 'Contract model was successfully created.' }
        format.json { render :show, status: :created, location: @contract_model }
      else
        format.html { render :new }
        format.json { render json: @contract_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contract_models/1
  # PATCH/PUT /contract_models/1.json
  def update
    respond_to do |format|
      if @contract_model.update(contract_model_params)
        format.html { redirect_to @contract_model, notice: 'Contract model was successfully updated.' }
        format.json { render :show, status: :ok, location: @contract_model }
      else
        format.html { render :edit }
        format.json { render json: @contract_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contract_models/1
  # DELETE /contract_models/1.json
  def destroy
    @contract_model.destroy
    respond_to do |format|
      format.html { redirect_to contract_models_url, notice: 'Contract model was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contract_model
      @contract_model = ContractModel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contract_model_params
      params.require(:contract_model).permit(:title, :body)
    end
end
