class StudiosController < ApplicationController
    def index
        @studios = Studio.all
    end

    def show
        @studio = Studio.find(params[:id])
    end

    def new
        @studio = Studio.new
    end

    def create
        @studio = Studio.create(studio_params)
        redirect_to artist_path(@studio.artist_id)
    end

    def edit
        @studio = Studio.find(params[:id])
    end

    def update
        @studio = Studio.update(studio_params)
        redirect_to artist_path(@studio.artist_id)
    end

    private

    def studio_params
        params.require(:studio).permit(:artist_id, :instrument_id)
    end
end
