class Api::V1::UbsController < ApplicationController
  def find_ubs
    @ubss = Ubs.all
  end
end
