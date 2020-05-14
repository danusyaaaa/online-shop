class ProductsController < ApplicationController
    before_action :authenticate_user!, except:[:index,:show]
  
    def index
      @products_new=Product.order(:created_at).reverse_order.first(3)
      @products_hit=Product.order(:sale).reverse_order.first(3)
      @products=Product.paginate(page: params[:page], per_page: 6)

    end
  
  
    def show
      @product=Product.find(params[:id])
    end
  
    def new
      
      @product = Product.new
    end
    def edit
        @product=Product.find(params[:id])
    end
  
    def update
      @product=Product.find(params[:id])
      if @product.update_attributes(product_params)
        redirect_to @product
      else
        flash[:error] = "Ошибка"
        render :edit
      end
    end
  

  
      def create
        @product = Product.new(product_params)
  
        if @product.save
          redirect_to @product
          flash[:success] =   "Успешно"
        else
            flash[:error] =  "Ошибка"
          render :new
        end
       end
  

       def destroy
        @product=Product.find(params[:id])
        @product.destroy
        redirect_to  products_path     
    end
  
 
      private  def product_params
        params.require(:product).permit(:name,:body,:firma,:sale,:volume,:picture,:cost,:category_id,:image)
      end
    


  
end
