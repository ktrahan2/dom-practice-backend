class MoviesController < ApplicationController
    def index
        movies = Movie.all
        render json: movies
    end

    def show 

        movie = Movie.find(params[:id])
        render json: movie
    end

    def create

        movie = Movie.create(
            title: params[:title],
            image: params[:image],
            year: params[:year],
            description: params[:description],
            rating: params[:rating],
            url: params[:url]
        )
        render json: movie
    end

    def update
        movie = Movie.find(params[:id])

        movie.update(
            title: params[:title],
            image: params[:image],
            year: params[:year],
            description: params[:description],
            rating: params[:rating],
            url: params[:url]
        )

        render jsonL movie
    end

    def destroy
        movie = Movie.find(params[:id])

        movie.destroy

    end

end
