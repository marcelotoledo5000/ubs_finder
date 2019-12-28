# frozen_string_literal: true

class Api::V1::UbsController < ApplicationController
  def find_ubs
    @page = page
    @per_page = per_page
    @ubss = query
  end

  private

  def query
    Ubs.all.page(@page).per(@per_page) |
      Ubs.where(latitude: latitude, longitude: longitude).
      page(@page).per(@per_page)
  end

  def latitude
    params[:query].split(/,/)[0] if params[:query]
  end

  def longitude
    params[:query].split(/,/)[1] if params[:query]
  end

  def page
    params[:page] || '1'
  end

  def per_page
    params[:per_page] || '10'
  end
end
