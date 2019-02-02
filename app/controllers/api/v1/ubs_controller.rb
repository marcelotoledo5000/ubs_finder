class Api::V1::UbsController < ApplicationController
  def find_ubs
    @ubs = Ubs.all

    render json: @ubs
  end
end
