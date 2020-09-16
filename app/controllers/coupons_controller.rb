class CouponsController < ApplicationController
  def index
   
  
    @coupons = Coupon.all

    #byebug

    render(:index)
  end

  def new 
    
    @coupon = Coupon.new
    render :new
    
  end


  def create 
    code = params["coupon"]["code"]
    store = params["coupon"]["store"]
    coupon = Coupon.create(code:code, store:store)
    redirect_to coupon_path(coupon)

  end

  def show  
    id = params[:id]
    @coupon = Coupon.find(id)
   byebug
  end



end
