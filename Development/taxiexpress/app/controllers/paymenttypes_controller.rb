class PaymenttypesController < ApplicationController
  before_action :set_paymenttype, only: [:show, :edit, :update, :destroy]

  # GET /paymenttypes
  # GET /paymenttypes.json
  def index
    @paymenttypes = Paymenttype.all
  end

  # GET /paymenttypes/1
  # GET /paymenttypes/1.json
  def show
  end

  # GET /paymenttypes/new
  def new
    @paymenttype = Paymenttype.new
  end

  # GET /paymenttypes/1/edit
  def edit
  end

  # POST /paymenttypes
  # POST /paymenttypes.json
  def create
    @paymenttype = Paymenttype.new(paymenttype_params)

    respond_to do |format|
      if @paymenttype.save
        format.html { redirect_to @paymenttype, notice: 'Paymenttype was successfully created.' }
        format.json { render :show, status: :created, location: @paymenttype }
      else
        format.html { render :new }
        format.json { render json: @paymenttype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paymenttypes/1
  # PATCH/PUT /paymenttypes/1.json
  def update
    respond_to do |format|
      if @paymenttype.update(paymenttype_params)
        format.html { redirect_to @paymenttype, notice: 'Paymenttype was successfully updated.' }
        format.json { render :show, status: :ok, location: @paymenttype }
      else
        format.html { render :edit }
        format.json { render json: @paymenttype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paymenttypes/1
  # DELETE /paymenttypes/1.json
  def destroy
    @paymenttype.destroy
    respond_to do |format|
      format.html { redirect_to paymenttypes_url, notice: 'Paymenttype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paymenttype
      @paymenttype = Paymenttype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paymenttype_params
      params.require(:paymenttype).permit(:name)
    end
end
