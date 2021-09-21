class ArtistsController < ApplicationController

  # GET: /artists
  get "/artists" do
    Artist.all.to_json
  end

  # POST: /artists
  post "/artists" do
    # make a new artist
    if params[:name] != ""
      Artist.create(params)
    end
  end

  # GET: /artists/5
  get "/artists/:id" do
    Artist.find(params[:id]).to_json
  end

  get "/artists/:id/albums" do
    Artist.find(params[:id]).albums.to_json
  end

  # PATCH: /artists/5
  patch "/artists/:id" do
  end

  # DELETE: /artists/5/delete
  delete "/artists/:id" do
  end
end
