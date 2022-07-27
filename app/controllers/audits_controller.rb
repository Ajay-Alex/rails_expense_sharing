class AuditsController < ApplicationController
  skip_before_action :verify_authenticity_token

  # def show_owed_by
  #   audits=Audit.find_by_from_name(params[:from_name])
  #   render json: audits
  # end
  #
  # def show_owed_to
  #   audits=Audit.find_by_to_name(params[:to_name])
  #   render json: audits
  # end

  def new_txn
    if UserServices::UserExistCheck.new(params[:name])
      group_id =UserServices::GetUserByName.new(params[:name]).call.group
    else
      render json: "User Does Not Exist"
      return
    end
    user_list=UserServices::GetUsersByGroup.new(group_id).call
    AuditServices::AddAudit.new(user_list, params[:name], params[:amount]).call
    render json: "Amount Updated"
  end



end
