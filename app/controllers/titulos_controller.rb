class TitulosController < ApplicationController
    def create
      @player = Player.find(params[:player_id])
      @title = @player.titulos.new(titulos_params)
      if @titulo.save
        render json: @titulo, status: :created
      else
        render json: @titulo.errors, status: :unprocessable_entity
      end
    end
  
    private
  
    def titulo_params
      params.require(:titulo).permit(:type, :count)
    end
  end
  