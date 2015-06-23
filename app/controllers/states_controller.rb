class StatesController < ApplicationController

  def index
    @states = State.all
  end

  def show
    @state = State.find(params[:id])
  end

  def destroy
    @state = State.find(params[:id])
    @state.destroy
    redirect_to root_path, notice: "A state has been deleted."
  end

end