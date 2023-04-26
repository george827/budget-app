class GroupsController < ApplicationController
  def index
    @groups = Group.all.where(author: current_user)
  end

  def show
    @group = Group.find(params[:id])
    @purchases = @group.purchases.order('created_at DESC')
  end

  def new
    @group = Group.new
  end

  def create
    @group = current_user.groups.build(group_params)

    if @group.save
      redirect_to @group, notice: 'Group was successfully created.'
    else
      render 'new'
    end
  end

  def destroy
    @group = Group.find(params[:id])
    @group.destroy

    redirect_to groups_path
  end

  private

  def group_params
    params.require(:group).permit(:name, :icon)
  end
end
