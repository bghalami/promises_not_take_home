class PromisesController < ApplicationController
  def show

  end

  def index
    @promises = Promise.all
  end

  def update

  end

  def new
    @promise = Promise.new
  end

  def create

  end

  def delete

  end
end
