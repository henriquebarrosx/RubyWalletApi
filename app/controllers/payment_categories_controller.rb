class PaymentCategoriesController < ApplicationController
    def index
      @categories = PaymentCategory.all
    end

    def new 
      @payment_category = PaymentCategory.new
    end

    def create
      @payment_category = PaymentCategory.new(payment_category_params)
      
      if @payment_category.save
        respond_to do |format|
          format.js { render partial: 'payment_categories/index', locals: { categories: PaymentCategory.all } }
          format.html { redirect_back fallback_location: payment_categories_path, notice: 'category was successfully created.' }
        end
      else
          format.html { render :new }
      end
    end

  private
    def payment_category_params
      params.permit(:name)
    end
end
