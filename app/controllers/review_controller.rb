class ReviewsController < ApplicationController

  before_action :set_review, except: [:index, :new, :create]

  def index
    @reviews = Review.all
  end

  def show
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)

    respond_to do |format|
      if @review.save
        format.html { redirect_to @review, notice: 'review was successfully created.' }
        format.json { render :show, status: :created, location: @review }
      else
        format.html { render :new }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @review.destroy
    respond_to do |format|
      format.html { redirect_to reviews_url, notice: 'review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

private

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:review_name, :review_address1, :review_address2, :review_state, :review_zip, :review_phone)
  end

end
