class MyFavoritesController < ApplicationController
  # GET /my_favorites
  # GET /my_favorites.xml
  def index
    @my_favorites = MyFavorite.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @my_favorites }
    end
  end

  # GET /my_favorites/1
  # GET /my_favorites/1.xml
  def show
    @my_favorite = MyFavorite.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @my_favorite }
    end
  end

  # GET /my_favorites/new
  # GET /my_favorites/new.xml
  def new
    @my_favorite = MyFavorite.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @my_favorite }
    end
  end

  # GET /my_favorites/1/edit
  def edit
    @my_favorite = MyFavorite.find(params[:id])
  end

  # POST /my_favorites
  # POST /my_favorites.xml
  def create
    @my_favorite = MyFavorite.new(params[:my_favorite])

    respond_to do |format|
      if @my_favorite.save
        flash[:notice] = 'MyFavorite was successfully created.'
        format.html { redirect_to(@my_favorite) }
        format.xml  { render :xml => @my_favorite, :status => :created, :location => @my_favorite }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @my_favorite.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /my_favorites/1
  # PUT /my_favorites/1.xml
  def update
    @my_favorite = MyFavorite.find(params[:id])

    respond_to do |format|
      if @my_favorite.update_attributes(params[:my_favorite])
        flash[:notice] = 'MyFavorite was successfully updated.'
        format.html { redirect_to(@my_favorite) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @my_favorite.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /my_favorites/1
  # DELETE /my_favorites/1.xml
  def destroy
    @my_favorite = MyFavorite.find(params[:id])
    @my_favorite.destroy

    respond_to do |format|
      format.html { redirect_to(my_favorites_url) }
      format.xml  { head :ok }
    end
  end
end
