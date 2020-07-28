class Api::V1::TipsController < ApplicationController
  def show
    tip = Tip.random_tip
    render json: tip.to_json(only: :description)
  end
end
