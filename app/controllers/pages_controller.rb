class PagesController < ApplicationController
  before_action :set_hardware, only: [:hardware_item, :show, :edit, :update, :destroy]

  def home
  end

  def offer
    @hardwares_forsale = Hardware.where(:sold => ['nie', nil, '']).where.not(:sold => 'tak')
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
  end

  def contact
  end

  private
    
    # Use callbacks to share common setup or constraints between actions.
    def set_hardware
      @hardware = Hardware.find(params[:id])
    end
end
