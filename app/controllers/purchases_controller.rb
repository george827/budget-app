class PurchasesController < ApplicationController
  def new
    @user = current_user
    @purchase = Purchase.new

    @group = Group.find_by(id: params[:group_id])
  end

  def create
    @purchase = Purchase.new(purchase_params)
    @group = Group.find_by(id: params[:group_id])
    @group.purchases << @purchase

    if @purchase.save
      flash[:success] = 'purchase saved successfully'
      redirect_to group_path(@group)

    else
      flash[:error] = "Invalid input, purchase didn't get saved"
      render :new
    end
  end

  def destroy
    @purchase = Purchase.find(params[:id])
    @purchase.destroy

    redirect_to groups_path
  end

  private

  def purchase_params
    params.require(:purchase).permit(:name, :amount, :author_id).merge(author_id: current_user.id)
  end
end
