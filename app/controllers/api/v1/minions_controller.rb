class Api::V1::MinionsController < ApplicationController
  def index
    @minions = Minion.order('created_at DESC')
    if @minions
      render json: @minions.to_json(), status: :ok
    else 
      render json: 'failed to dispatch minion', status: 404
    end
  end

  def show
    @minion = Minion.where(id: params[:id])
    if @minion 
      render json: @minions, status: :ok
    else
      render json: 'No minion found!', status: 404
    end
  end

  def create
    @minion = Minion.new(minion_params)
    if @minion.save
      render json: @minion, status: 201
    else
      render json: @minion.error.full_messages, status: 500
    end
  end

  def update
    @minion = Minion.find(params[:id])
    if @minion.update(minion_params)
      render json: 'minion updated successfully', status: 201
    else
      render json: 'unable to update minion', status: unprocessable_entity
    end
  end

  def destroy
    @minion = Minion.find_by_id(params[:id])
    if @minion.destroy
      render json: 'minion Successfully deleted', status: 200
    else
      render json: 'unable to delete minion!', status: unprocessable_entity
    end
  end

private

  def minion_params
    # params.require(:post).permit(:title, :body)
    params.permit(:name, :age, :country, :email, :height)
  end

end
