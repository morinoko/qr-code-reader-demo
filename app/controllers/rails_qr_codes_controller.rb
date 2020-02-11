class RailsQrCodesController < ApplicationController
  before_action :set_qr_data, only: :create

  def new
  end

  def create
    qr_code = RailsQrCode.create(content: @qr_data)

    redirect_to rails_qr_code_path(qr_code)
  end

  def show
    @qr_code = RailsQrCode.find(params[:id])
  end

  private

  def set_qr_data
    qr_code_params = JSON.parse(params[:qr_code_json_data]).with_indifferent_access

    @qr_data = qr_code_params[:qr_data]
  end
end
