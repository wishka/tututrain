# frozen_string_literal: true

# Controller for creating trains
class TrainsController < ApplicationController
  before_action :set_train, only: %i[ show edit update destroy ]

  def show
    @train = Train.find(params[:id])
  end

  def index
    @trains = Train.all
  end

  def new
    @train = Train.new
  end

  def create
    @train = Train.new(train_params)
    if @train.save
      flash[:notice] = 'New train was sucsessfully created'
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @train = Train.find(params[:id])
  end

  def update
    @train = Train.find(params[:id])
    if @train.update(train_params)
      redirect_to @train
    else
      render 'edit'
    end
  end

  def destroy
    Train.find(params[:id]).destroy
    flash[:success] = 'Train deleted'
    redirect_to trains_path
  end

  private

  def set_train
    @train = Train.find(params[:id])
  end

  def train_params
    params.require(:train).permit(:train_number, :carriage_type, :route,
                                  :carriage_list, :carriage_max)
  end
end
