class PaymentCategoriesController < ApplicationController
  before_action :set_payment_category, only: [:show, :edit, :update]

    def index
      @payment_categories = PaymentCategory.all
    end

    def show
    end

    def new 
      @payment_category = PaymentCategory.new
      turbo_stream
    end

    def create
      @payment_category = PaymentCategory.new(payment_category_params)
      @payment_category.save
      turbo_stream
    end

    def edit
    end

    def update
      @payment_category.update(article_params)
      turbo_stream
    end

  private
    def payment_category_params
      params.require(:payment_category).permit(:name)
    end

    def set_payment_category
      @payment_category = PaymentCategory.find(params[:id])
    end
end
