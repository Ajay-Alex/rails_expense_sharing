class GroupsController < ApplicationController
  skip_before_action :verify_authenticity_token


  def show_all
    group_list=Group.all
    render json: group_list
  end

  def show
    begin
      group=Group.find(params[:id])
      render json: group
    rescue ActiveRecord::RecordNotFound
      render json: "No such record exist"
    end
  end

  def create
    begin
      group=Group.find_by_name(:name)
      render json: "Group already exists"
    rescue ActiveRecord::RecordNotFound
      group=Group.new(params.permit(:name))
      group.save
      render json: "Successfully Created"
    end
  end
end
