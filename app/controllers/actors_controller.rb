class ActorsController < ApplicationController


def index
    @list_of_actors = Actor.all
  end

  def show
    @actor = Actor.find(params["id"])

  end

  def new_form

  end


  def create_actor
    p = Actor.new

    p.name = params["actor_name"]
    p.bio = params["actor_bio"]
    p.dob = params["actor_dob"]
    p.image_url = params["actor_image_url"]
    p.save
    redirect_to("http://localhost:3000/actor")
  end


  def destroy
    p = Actor.find(params["id"])
    p.destroy
    p.save
    redirect_to("http://localhost:3000/actor")
  end


  def update_row
    # raise params.inspect
    p = Actor.find(params["id"])
    # I don't think we want to destroy it, just edit it
    # p.destroy
    # p = Photo.find(params["id"])
    p.name = params["the_actor_name"]
    p.bio = params["the_actor_bio"]
    p.dob = params["the_actor_dob"]
    p.image_url = params["the_actor_image_url"]
    p.save


        redirect_to("http://localhost:3000/actor/#{p.id}")

  end



  def edit_form
    @actor = Actor.find(params["id"])

  end

end



