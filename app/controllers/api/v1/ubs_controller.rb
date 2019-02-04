class Api::V1::UbsController < ApplicationController
  def find_ubs
    search = Ubs.where(latitude: latitude, longitude: longitude)
    @ubss = search.page(params[:page]).per(params[:per_page])
  end

  private

  def latitude
    params[:query].split(/,/)[0]
  end

  def longitude
    params[:query].split(/,/)[1]
  end
end
