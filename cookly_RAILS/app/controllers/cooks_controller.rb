  class CooksController < ApplicationController

    def index
      @cooks = Cook.all
    end

    def show
      @cook = Cook.find(params[:id])
    end

    def new
      @cook = Cook.new
    end

    def create
      @cook = Cook.new(cook_params)

      if @cook.save
        redirect_to cook_path(@cook)
      else
        render :new
      end

      def edit
        @cook = Cook.find(params[:id])
      end

      def update
        cook = Cook.find(params[:id])
        if @cook.update(cook_params)
          redirect_to @cook, notice: "Cook was successfully updated."
        else
          render :edit
        end
      end

      def destroy
        @cook = Cook.find(params[:id])
        @cook.destroy
        redirect_to cooks_url, notice: "Cook was successfully deleted."
      end

    end

    private
      def cook_params
        params.require(:cook).permit(:cook_name, :password_digest, :location, :cuisine, :specialty, :description, :cook_image)
    end

  end