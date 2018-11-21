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
end
