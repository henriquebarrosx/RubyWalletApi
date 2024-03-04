class PaymentsController < ApplicationController
  before_action :set_payment, only: [:show]

  def index
    @payments = Payment.all
  end

  def show; end

  private
  def set_payment
    @payment = Payment.find(params[:id])
  end
end
