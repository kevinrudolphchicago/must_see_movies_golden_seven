class DirectorsController < ApplicationController


def index
    @list_of_directors = Director.all
  end

  def show
    @director = Director.find(params["id"])

  end

  def new_form

  end


  def create_director
    p = Director.new

    p.name = params["director_name"]
    p.bio = params["director_bio"]
    p.dob = params["director_dob"]
    p.image_url = params["director_image_url"]
    p.save
    redirect_to("http://localhost:3000/director")
  end


  def destroy
    p = Director.find(params["id"])
    p.destroy
    p.save
    redirect_to("http://localhost:3000/director")
  end


  def update_row
    # raise params.inspect
    p = Director.find(params["id"])
    # I don't think we want to destroy it, just edit it
    # p.destroy
    # p = Photo.find(params["id"])
    p.name = params["the_director_name"]
    p.bio = params["the_director_bio"]
    p.dob = params["the_director_dob"]
    p.image_url = params["the_director_image_url"]
    p.save


        redirect_to("http://localhost:3000/director/#{p.id}")

  end



  def edit_form
    @director = Director.find(params["id"])

  end

end



