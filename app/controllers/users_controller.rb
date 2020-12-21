class UsersController < ApplicationController
	before_action :set_user, only: [:show, :edit, :update, :destroy]


  	def index
      @users = User.customer.order(name: :desc)
  	end

  
  	def show
  	end

  	
  	def edit
  	end

  	def new
    	@user = User.new
  	end

  	def create
    	@user = User.new(user_params)

	    respond_to do |format|
	      if @user.save
	        format.html { redirect_to @product, notice: "User #{@user.name} was successfully created." }
	        format.json { render :show, status: :created, location: @user }
	      else
	        format.html { render :new }
	        format.json { render json: @user.errors, status: :unprocessable_entity }
	      end
	    end
  	end

 
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @product, notice: "User #{@user.name} was successfully updated." }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to product_url, notice: "Product #{poduct.name} was successfully destroyed." }
      format.json { head :no_content }
    end
  end

	 private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      if params[:id] = "sign_out"
        sign_out current_user
        return
      else
        @user = User.find(params[:id])
      end
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:name, :phone_number, :address)
    end
end
