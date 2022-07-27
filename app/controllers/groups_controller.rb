class GroupsController < ApplicationController
  skip_before_action :verify_authenticity_token


  # def show_all
  #   group_list=Group.all
  #   render json: group_list
  # end
  #
  # def show
  #   begin
  #     group=Group.find(params[:id])
  #     render json: group
  #   rescue ActiveRecord::RecordNotFound
  #     render json: "No such record exist"
  #   end
  # end

  def create
    if GroupServices::GroupExistCheck.new(params[:name]).call
      render json: "Group Already Exist"
    else
      GroupServices::AddGroup.new(params.permit(:name)).call
      render json: "Successfully Created"
    end
  end
end
