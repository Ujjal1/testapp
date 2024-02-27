class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :update, :destroy]

  # GET /customers
  def index
    @customers = Customer.all
  end

  # GET /customers/1
  def show
  end

  # POST /customers
  def create
    @customer = Customer.new(customer_params)

    espond_to do |format|
      if @customer.save
        format.html { redirect_to customer_url(@customer), notice: "Customer was successfully created." }
        format.json { render :show, status: :created, location: @customer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
  end

  # PATCH/PUT /customers/1
  def update
    if @customer.save
      format.html { redirect_to customer_url(@customer), notice: "Customer was successfully updated." }
      format.json { render :show, status: :ok, location: @customer }
    else
      format.html { render :edit, status: :unprocessable_entity }
      format.json { render json: @customer.errors, status: :unprocessable_entity }
    end
  end

  # DELETE /customers/1
  def destroy
    @customer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def customer_params
      params.permit(:name, :email, :address)
    end
end
