class ItemsController < ApplicationController

  def create
    @user = current_user
    # @user = User.find(params[:id])
    # @items = @user.items
    @item = Item.new( item_params )
    @item.user = current_user
    # @new_item = Item.new

    # authorize @comment

    if @item.save
      redirect_to @user, notice: "Item was saved successfully."
    else
      flash[:error] = "There was an error saving the item. Please try again."
    end

    # respond_to do |format|
    #   format.html
    #   format.js
    # end
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end

end
