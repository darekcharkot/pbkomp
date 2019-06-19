class PagesController < ApplicationController
  before_action :set_hardware, only: [:show, :edit, :update, :destroy]

  def home
  end

  def offer
    @hardwares_forsale = Hardware.where(:sold => ['nie', nil, '']).where.not(:sold => 'tak')
    @hardware = Hardware.new
    @image = @hardware.images.build
  end

  def services
  end

  def pricelist
  end

  def technology
  end

  def hardwares
    @hardwares = Hardware.all.order(:created_at)
    @hardwares_forsale = Hardware.where(:sold => ['nie', nil, '']).where.not(:sold => 'tak')
  end

  def hardware_item
    @hardware = Hardware.find(params[:id])
  end

  def contact
  end

  private
    
    # Use callbacks to share common setup or constraints between actions.
    def set_hardware
      @hardware = Hardware.find(params[:id])
    end

    def hardware_params
        params.require(:hardware).permit(:name, :model, :sn, :foreign_code, :own_code, :buy_brutto, :proof,
                       :buy_date, :sold, :sell_date, :created_at, :describe, :processor, :ram, :disk, :screen, :dvd,
                       :video_card, :battery, :operating_system, :warranty, :price, images_attributes: [:image, :hardware_id])
    end
end
