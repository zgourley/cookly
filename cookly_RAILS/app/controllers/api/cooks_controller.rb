module API
  class CooksController < ApplicationController

    def index
      render json: Cook.all
    end

    def show
      render json: Cook.find(params[:id])
    end

    def create
      @cook = Cook.new(cook_params)

      if @cook.save
        render json: @cook, status: 201
      else
        render json: {errors: @cook.errors}, status: 422
      end

      def update
        @cook = Cook.find(params[:id])
        
        if @cook.update(cook_params)
          render json: @cook, status: 200
        else
          render json: {errors: @cook.errors}, status: 422
        end
      end

      def destroy
        @cook = Cook.find(params[:id])
        @cook.destroy
        render json: no_content
      end

    end

    private
      def cook_params
        params.require(:cook).permit(:cook_name, :password_digest, :location, :cuisine, :specialty, :description, :cook_image)
    end

  end
end