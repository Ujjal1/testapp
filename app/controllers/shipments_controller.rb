class ShipmentsController < ApplicationController
  before_action :set_shipment, only: [:show, :update, :destroy]

  # GET /shipments
  def index
    @shipments = Shipment.all
  end

  # GET /shipments/1
  def show
  end

  # POST /shipments
  def create
    @shipment = Shipment.new(shipment_params)

    respond_to do |format|
      if @shipment.save
        format.html { redirect_to shipment_url(@shipment), notice: "shipment was successfully created." }
        format.json { render :show, status: :created, location: @shipment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @shipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shipments/1
  def update
    respond_to do |format|
      if @shipment.save
        format.html { redirect_to shipment_url(@shipment), notice: "shipment was successfully created." }
        format.json { render :show, status: :created, location: @shipment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @shipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shipments/1
  def destroy
    @shipment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shipment
      @shipment = Shipment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shipment_params
      params.permit(:source_location, :target_location, :customer_id, :delivery_partner_id, :status)
    end
end
