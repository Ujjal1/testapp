class DeliveryPartnersController < ApplicationController
  before_action :set_delivery_partner, only: [:show, :update, :destroy]

  # GET /delivery_partners
  def index
    @delivery_partners = DeliveryPartner.all
    render json: @delivery_partners
  end

  # GET /delivery_partners/1
  def show
    render json: @delivery_partner
  end

  # POST /delivery_partners
  def create
    @delivery_partner = DeliveryPartner.new(delivery_partner_params)

    if @delivery_partner.save
      render json: @delivery_partner, status: :created, location: @delivery_partner
    else
      render json: @delivery_partner.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /delivery_partners/1
  def update
    if @delivery_partner.update(delivery_partner_params)
      render json: @delivery_partner
    else
      render json: @delivery_partner.errors, status: :unprocessable_entity
    end
  end

  # DELETE /delivery_partners/1
  def destroy
    @delivery_partner.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_delivery_partner
      @delivery_partner = DeliveryPartner.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def delivery_partner_params
      params.require(:delivery_partner).permit(:name, :email, :address)
    end
end
