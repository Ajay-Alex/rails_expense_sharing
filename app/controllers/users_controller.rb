class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    render json: "Welcome To The Home Page Of Expense Sharing App"
  end

  # def show_all
  #   user_list=User.all
  #   render json: user_list
  # end
  #
  # def show
  #   begin
  #     user=User.find(params[:id])
  #     render json: user
  #   rescue ActiveRecord::RecordNotFound
  #     render json: "No such record exist"
  #   end
  # end

  def create
    group_exist_check=GroupServices::GroupExistCheck.new(params[:group]).call
    if !group_exist_check
      render json: "Group doesn't exist"
      return
    end
    user_exist_check=UserServices::UserExistCheck.new(params[:name]).call
    if user_exist_check
      render json: "User already exists"
      return
    end
    group=GroupServices::GetGroupByName.new(params[:group]).call.id
    UserServices::AddUser.new(params[:name],params[:email],params[:mobile],group).call
    render json: "Successfully Created"
  end

  # def update
  #   begin
  #     user=User.find(params[:id])
  #     user.update(name: params[:name],email: params[:email],mobile: params[:mobile],group: params[:group])
  #     render json: "Successfully Updated"
  #   rescue ActiveRecord::RecordNotFound
  #     render json: "No such record exist"
  #   end
  # end
  #
  # def delete
  #   begin
  #     user=User.find(params[:id])
  #     user.destroy
  #     render json: "Successfully Deleted"
  #   rescue ActiveRecord::RecordNotFound
  #     render json: "No such record exist"
  #   end
  # end
end
