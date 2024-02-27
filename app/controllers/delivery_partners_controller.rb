class DeliveryPartnersController < ApplicationController
  before_action :set_delivery_partner, only: [:show, :update, :destroy]

  # GET /delivery_partners
  def index
    @delivery_partners = DeliveryPartner.all
  end

  # GET /delivery_partners/1
  def show
  end

  # POST /delivery_partners
  def create
    @delivery_partner = DeliveryPartner.new(delivery_partner_params)

    respond_to do |format|
      if @delivery_partner.save
        format.html { redirect_to delivery_partner_url(@delivery_partner), notice: "Deliver partner was successfully created." }
        format.json { render :show, status: :created, location: @delivery_partner }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @delivery_partner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /delivery_partners/1
  def update
    if @delivery_partner.save
      format.html { redirect_to delivery_partner_url(@delivery_partner), notice: "Deliver partner was successfully updated." }
      format.json { render :show, status: :ok, location: @delivery_partner }
    else
      format.html { render :edit, status: :unprocessable_entity }
      format.json { render json: @delivery_partner.errors, status: :unprocessable_entity }
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
      params.permit(:name, :email, :address)
    end
end
