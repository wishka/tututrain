# frozen_string_literal: true

# Controller for creating routes
class RoutesController < ApplicationController
  before_action :set_route, only: %i[ show edit update destroy ]

  def show
    @route = Route.find(params[:id])
  end

  def index
    @routes = Route.all
  end

  def new
    @route = Route.new
  end

  def create
    @route = Route.new(route_params)
    if @route.save
      flash[:notice] = 'New route was sucsessfully created'
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @route = Route.find(params[:id])
  end

  def update
    @route = Route.find(params[:id])
    if @route.update(route_params)
      redirect_to @route
    else
      render 'edit'
    end
  end

  def destroy
    Route.find(params[:id]).destroy
    flash[:success] = 'Route deleted'
    redirect_to routes_path
  end

  private

  def set_route
    @route = Route.find(params[:id])
  end

  def route_params
    params.require(:route).permit(:route_name, :stations)
  end
end
