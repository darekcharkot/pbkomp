class PagesController < ApplicationController
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
  end

  def contact
  end

  private
end
