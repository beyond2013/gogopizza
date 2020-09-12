class FoodsController < ApplicationController
  before_action :set_food, only: [:show, :edit, :update, :destroy]

  # GET /food
  # GET /food.json
  def index
    @foods = Food.all
  end

  # GET /food/1
  # GET /food/1.json
  def show
  end

  # GET /food/new
  def new
    @food = Food.new
  end

  # GET /food/1/edit
  def edit
  end

  # POST /food
  # POST /food.json
  def create
    @food = Food.new(food_params)

    respond_to do |format|
      if @food.save
        format.html { redirect_to @food, notice: 'Food Item was successfully added.' }
        format.json { render :show, status: :created, location: @food }
      else
        format.html { render :new }
        format.json { render json: @food.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /food/1
  # PATCH/PUT /food/1.json
  def update
    respond_to do |format|
      if @food.update(food_params)
        format.html { redirect_to @food, notice: 'Food Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @food }
      else
        format.html { render :edit }
        format.json { render json: @food.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /food/1
  # DELETE /food/1.json
  def destroy
    @food.destroy
    respond_to do |format|
      format.html { redirect_to food_url, notice: 'Food Item was successfully removed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food
     @food  = Food.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def food_params
      params.require(:food).permit(:name, :flavor, :size, :topping, :crust, :price, :food_image, :cuisine_id)
    end
end
