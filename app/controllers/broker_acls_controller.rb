class BrokerAclsController < ApplicationController
  before_action :set_broker_acl, only: %i[ show edit update destroy ]

  # GET /broker_acls or /broker_acls.json
  def index
    @broker_acls = BrokerAcl.all
  end

  # GET /broker_acls/1 or /broker_acls/1.json
  def show
  end

  # GET /broker_acls/new
  def new
    @broker_acl = BrokerAcl.new
  end

  # GET /broker_acls/1/edit
  def edit
  end

  # POST /broker_acls or /broker_acls.json
  def create
    @broker_acl = BrokerAcl.new(broker_acl_params)

    respond_to do |format|
      if @broker_acl.save
        format.html { redirect_to broker_acl_url(@broker_acl), notice: "Broker acl was successfully created." }
        format.json { render :show, status: :created, location: @broker_acl }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @broker_acl.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /broker_acls/1 or /broker_acls/1.json
  def update
    respond_to do |format|
      if @broker_acl.update(broker_acl_params)
        format.html { redirect_to broker_acl_url(@broker_acl), notice: "Broker acl was successfully updated." }
        format.json { render :show, status: :ok, location: @broker_acl }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @broker_acl.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /broker_acls/1 or /broker_acls/1.json
  def destroy
    @broker_acl.destroy

    respond_to do |format|
      format.html { redirect_to broker_acls_url, notice: "Broker acl was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_broker_acl
      @broker_acl = BrokerAcl.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def broker_acl_params
      params.require(:broker_acl).permit(:topic, :permissions)
    end
end
