class MoviesController < ApplicationController

 def index
    @list_of_movies = Movie.all
  end

  def show
    @movie = Movie.find(params["id"])

  end

  def new_form

  end


  def create_movie
    p = Movie.new
    # p = Photo.new # for initializing and creating a new record
    p.title = params["movie_title"]
    p.year = params["movie_year"]
    p.duration = params["movie_duration"]
    p.description = params["movie_description"]
    p.image_url = params["movie_image_url"]
    p.save
    redirect_to("http://localhost:3000/movie")
  end


  def destroy
    p = Movie.find(params["id"])
    p.destroy
    p.save
    redirect_to("http://localhost:3000/movie")
  end


  def update_row
    # raise params.inspect
    p = Movie.find(params["id"])
    # I don't think we want to destroy it, just edit it
    # p.destroy
    # p = Photo.find(params["id"])
    p.title = params["the_movie_title"]
    p.year = params["the_movie_year"]
    p.duration = params["the_movie_duration"]
    p.description = params["the_movie_description"]
    p.image_url = params["the_movie_image_url"]
    p.save


        redirect_to("http://localhost:3000/movie/#{p.id}")

  end



  def edit_form
    @movie = Movie.find(params["id"])

  end

end



