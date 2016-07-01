require 'byebug';

class Api::SubscriptionsController < ApplicationController

  def create
    a = subscription_params

    @currentuser = current_user

    if Subscription.create(subscription_params)
      render "api/users/showpage"
    else
      render json: {base: ["You've already volunteered for this event"]}, status:400
    end
  end


  def destroy
    @subscription = Subscription.find(params[:id])
    @subscription.destroy
      render "api/users/showpage"
  end

  private

  def subscription_params
    params.require(:subscription).permit(:volunteer_id, :occasion_id)
  end

end
