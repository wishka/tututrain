# frozen_string_literal: true

# Controller for creating stations
class StationsController < ApplicationController
  before_action :set_station, only: %i[ show edit update destroy ]

  def show
    @station = Station.find(params[:id])
  end

  def index
    @stations = Station.all
  end

  def new
    @station = Station.new
  end

  def create
    @station = Station.new(station_params)
    if @station.save
      flash[:notice] = 'New station was sucsessfully created'
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @station = Station.find(params[:id])
  end

  def update
    @station = Station.find(params[:id])
    if @station.update(station_params)
      redirect_to @station
    else
      render 'edit'
    end
  end

  def destroy
    Station.find(params[:id]).destroy
    flash[:success] = 'Station deleted'
    redirect_to stations_path
  end

  private

  def set_station
    @station = Station.find(params[:id])
  end

  def station_params
    params.require(:station).permit(:name, :current_trains)
  end
end
