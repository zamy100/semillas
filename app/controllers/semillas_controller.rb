class SemillasController < ApplicationController
  before_action :set_semilla, only: [:show, :edit, :update, :destroy]

  # GET /semillas
  # GET /semillas.json
  def index
    @semillas = Semilla.all
  end

  # GET /semillas/1
  # GET /semillas/1.json
  def show
  end

  # GET /semillas/new
  def new
    @semilla = Semilla.new
  end

  # GET /semillas/1/edit
  def edit
  end

  # POST /semillas
  # POST /semillas.json
  def create
    @semilla = Semilla.new(semilla_params)

    respond_to do |format|
      if @semilla.save
        format.html { redirect_to @semilla, notice: 'Semilla was successfully created.' }
        format.json { render :show, status: :created, location: @semilla }
      else
        format.html { render :new }
        format.json { render json: @semilla.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /semillas/1
  # PATCH/PUT /semillas/1.json
  def update
    respond_to do |format|
      if @semilla.update(semilla_params)
        format.html { redirect_to @semilla, notice: 'Semilla was successfully updated.' }
        format.json { render :show, status: :ok, location: @semilla }
      else
        format.html { render :edit }
        format.json { render json: @semilla.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /semillas/1
  # DELETE /semillas/1.json
  def destroy
    @semilla.destroy
    respond_to do |format|
      format.html { redirect_to semillas_url, notice: 'Semilla was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_semilla
      @semilla = Semilla.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def semilla_params
      params.require(:semilla).permit(:name, :description, :picture)
    end
end
