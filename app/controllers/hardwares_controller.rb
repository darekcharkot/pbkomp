class HardwaresController < ApplicationController
  before_action :set_hardware, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /hardwares
  # GET /hardwares.json
  def index
    @hardwares = Hardware.where(:sold => ['nie', nil, '']).where.not(:sold => 'tak')
    @hardwares = Hardware.all.order(:created_at)
    respond_to do |format|
      format.html
      format.csv { send_data @hardwares.to_csv }
      format.xlsx
      format.pdf do
        render pdf: "Urządzenia w salonie",
        template: "hardwares/index.html.haml",
        layout: 'pdf.html.haml'
      end
    end
    @hardware = Hardware.new
    @image = @hardware.images.build
  end

  # def forsale
  #   @hardwares_forsale = Hardware.where(:sold => ['nie', nil, '']).where.not(:sold => 'tak')
  # end

  # GET /hardwares/1
  # GET /hardwares/1.json
  def show
  end

  # GET /hardwares/new
  def new
    @hardware = Hardware.new
  end

  # GET /hardwares/1/edit
  def edit
  end

  # POST /hardwares
  # POST /hardwares.json
  def create
    @hardware = Hardware.new(hardware_params)

    respond_to do |format|
      if @hardware.save
        if params[:images]
          params[:images].each do |image|
            @hardware.images.create(image: image)
          end
        end
        format.html { redirect_to @hardware, notice: 'Urządzenie zostało dodane pomyślnie.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /hardwares/1
  # PATCH/PUT /hardwares/1.json
  def update
    respond_to do |format|
      if @hardware.update(hardware_params)
        if params[:images]
          params[:images].each do |image|
            @hardware.images.create(image: image)
          end
        end
        format.html { redirect_to @hardware, notice: 'Urządzenie zostało zaktualizowane pomyślnie.' }
        format.json { render :show, status: :ok, location: @hardware }
      else
        format.html { render :edit }
        format.json { render json: @hardware.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hardwares/1
  # DELETE /hardwares/1.json
  def destroy
    @hardware.destroy
    respond_to do |format|
      format.html { redirect_to hardwares_url, notice: 'Urządzenie zostało usunięte.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hardware
      @hardware = Hardware.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hardware_params
      params.require(:hardware).permit(:name, :model, :sn, :foreign_code, :own_code, :buy_brutto, :proof,
                     :buy_date, :sold, :sell_date, :created_at, :describe, :processor, :ram, :disk, :screen, :dvd,
                     :video_card, :battery, :operating_system, :warranty, :price, images_attributes: [:image, :hardware_id])
    end
end
