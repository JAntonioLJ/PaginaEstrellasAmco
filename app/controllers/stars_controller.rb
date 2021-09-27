# frozen_string_literal: true

# Documment
class StarsController < ApplicationController
  def new
    @star = Star.new
  end

  def create
    star = Star.create(star_params)
    redirect_to star_path(star.id)
  end

  def index
    @stars = Star.all
  end

  def show
    @star = Star.find(params[:id])
  end

  def update
    @star = Star.find(star_id)
    @star.update(star_params)
    redirect_to stars_path
  end

  private

  def star_params
    params.require(:star).permit(:name, :distance, :travel_time)
  end

  def star_id
    params.permit(:id).to_h[:id]
  end
end
