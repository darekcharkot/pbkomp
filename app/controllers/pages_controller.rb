class PagesController < ApplicationController
  def home
  end

  def offer
    @hardwares = Hardware.all.order(:created_at)
  end

  def services
  end

  def pricelist
  end

  def technology
  end

  def hardwares
  end

  def contact
  end

  private

  def hardware_params
    params.require(:hardware).permit(:name, :model, :sn, :foreign_code, :own_code, :buy_brutto, :proof,
                   :buy_date, :sold, :sell_date, :created_at, :describe, :processor, :ram, :disk, :screen, :dvd,
                   :video_card, :battery, :operating_system, :warranty)
  end
end
