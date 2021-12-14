class SpicesController < ApplicationController

def index
  spice = Spice.all
  render json: spice
end

def create
  spice = Spice.create(jango)
  render json: spice, status: :created
end

def update
  spice = Spice.find_by(id: params[:id])
  spice.update(jango)
  render json: spice
end

def destroy
  spice = Spice.find(params[:id])
  spice.destroy
end

private

def jango
  params.permit(:title, :image, :description, :notes, :rating)
end

end
