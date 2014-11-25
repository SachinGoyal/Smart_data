class ProductsController < InheritedResources::Base


  def create
    @product = Product.create(product_params)
    redirect_to @product
  end

  private

    def product_params
      params.require(:product).permit(:name, :description, :status , :image, :remote_image_url)
      #params.require(:product).permit(:avatar)
    end
end

