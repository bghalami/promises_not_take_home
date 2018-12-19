class PromisesController < ApplicationController
  def show
    @promise = Promise.find(params[:id])
  end

  def index
    @promises = Promise.all
  end

  def update
    promise = Promise.find(params[:id])
    promise.update(status: params[:promise][:status])
    promise.save
    flash[:notice] = "Successfully updated status to '#{params[:promise][:status]}'"
    redirect_to promise_path(promise)
  end

  def new
    @promise = Promise.new
  end

  def create
    @promise = Promise.new(promise_params)
    if @promise.save
      redirect_to promise_path(@promise)
    else
      flash[:notice] = "Something went wrong, please try again"
    end
  end

  def destroy
    promise = Promise.find(params[:id])
    promise.destroy
    flash[:notice] = "Successfully deleted promise by #{promise.person}"
    redirect_to promises_path
  end

  private

  def promise_params
    params.require("promise").permit(:person, :promise, :status)
  end
end
