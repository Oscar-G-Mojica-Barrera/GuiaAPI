class PlayersController < ApplicationController
    def index
      @players = Player.all
      render json: @players, include: :titulos
    end
  
    def show
      @player = Player.find(params[:id])
      render json: @player, include: :titulos
    end
  
    def create
      @player = Player.new(player_params)
      if @player.save
        render json: @player, status: :created
      else
        render json: @player.errors, status: :unprocessable_entity
      end
    end
  
    def update
      @player = Player.find(params[:id])
      if @player.update(player_params)
        render json: @player
      else
        render json: @player.errors, status: :unprocessable_entity
      end
    end
  
    def destroy
      @player = Player.find(params[:id])
      @player.destroy
    end
  
    private
  
    def player_params
      params.require(:player).permit(:name, :number, :team)
    end
  end
  
