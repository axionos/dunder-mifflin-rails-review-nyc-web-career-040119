class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def sort
    @dogs = Dog.all.sort_by {|dog| dog.employees.length}.reverse
    render :index
  end
end
