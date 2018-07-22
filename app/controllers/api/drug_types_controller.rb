# frozen_string_literal: true

module Api
  # Handles all drug types
  class DrugTypesController < ApiController
    before_action :set_drug_type, only: [:show, :update, :destroy]

    # GET /api/drug_types
    # GET /api/drug_types.json
    def index
      @drug_types = DrugType.all
      paginate json: @drug_types
    end

    # GET /api/drug_types/1
    # GET /api/drug_types/1.json
    def show
      render json: @drug_type
    end

    # POST /api/drug_types
    # POST /api/drug_types.json
    def create
      @drug_type = DrugType.new(drug_type_params)

      if @drug_type.save
        render json: @drug_type, status: :created
      else
        render json: @drug_type.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /api/drug_types/1
    # PATCH/PUT /api/drug_types/1.json
    def update
      if @drug_type.update(drug_type_params)
        render json: @drug_type, status: :ok
      else
        render json: @drug_type.errors, status: :unprocessable_entity
      end
    end

    # DELETE /api/drug_types/1
    # DELETE /api/drug_types/1.json
    def destroy
      @drug_type.destroy
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_drug_type
      @drug_type = DrugType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list
    # through.
    def drug_type_params
      params.permit(:id, :name)
    end
  end
end
