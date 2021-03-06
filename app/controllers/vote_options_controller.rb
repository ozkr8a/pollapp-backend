class VoteOptionsController < ApplicationController

  def index
    allvoteoptions = VoteOption.all

    render json: allvoteoptions
  end

  def show
    vote_option = VoteOption.find(vote_option_params[:id])

    render json: VoteOptionSerializer.new(vote_option)
  end

  def create
    vote_option = VoteOption.create(vote_option_params)

    render json: vote_option
  end

  private
  def vote_option_params
    params.permit(:option_name, :poll_id)
  end

end
