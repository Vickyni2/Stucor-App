class WhLegentsController < ApplicationController
  before_action :set_wh_legent, only: %i[ show edit update destroy ]

  # GET /wh_legents or /wh_legents.json
  def index
    @wh_legents = WhLegent.all
  end

  # GET /wh_legents/1 or /wh_legents/1.json
  def show
  end

  # GET /wh_legents/new
  def new
    @wh_legent = WhLegent.new
  end

  # GET /wh_legents/1/edit
  def edit
  end

  # POST /wh_legents or /wh_legents.json
  def create
    @wh_legent = WhLegent.new(wh_legent_params)

    respond_to do |format|
      if @wh_legent.save
        format.html { redirect_to @wh_legent, notice: "Wh legent was successfully created." }
        format.json { render :show, status: :created, location: @wh_legent }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @wh_legent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wh_legents/1 or /wh_legents/1.json
  def update
    respond_to do |format|
      if @wh_legent.update(wh_legent_params)
        format.html { redirect_to @wh_legent, notice: "Wh legent was successfully updated." }
        format.json { render :show, status: :ok, location: @wh_legent }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @wh_legent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wh_legents/1 or /wh_legents/1.json
  def destroy
    @wh_legent.destroy
    respond_to do |format|
      format.html { redirect_to wh_legents_url, notice: "Wh legent was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wh_legent
      @wh_legent = WhLegent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def wh_legent_params
      params.require(:wh_legent).permit(:WH_CODE, :DETAILS)
    end
end
