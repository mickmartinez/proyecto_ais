class TaquillerosController < ApplicationController
  # GET /taquilleros
  # GET /taquilleros.json
  def index
    @taquilleros = Taquillero.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @taquilleros }
    end
  end

  # GET /taquilleros/1
  # GET /taquilleros/1.json
  def show
    @taquillero = Taquillero.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @taquillero }
    end
  end

  # GET /taquilleros/new
  # GET /taquilleros/new.json
  def new
    @taquillero = Taquillero.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @taquillero }
    end
  end

  # GET /taquilleros/1/edit
  def edit
    @taquillero = Taquillero.find(params[:id])
  end

  # POST /taquilleros
  # POST /taquilleros.json
  def create
    @taquillero = Taquillero.new(params[:taquillero])

    respond_to do |format|
      if @taquillero.save
        format.html { redirect_to @taquillero, :notice => 'Taquillero was successfully created.' }
        format.json { render :json => @taquillero, :status => :created, :location => @taquillero }
      else
        format.html { render :action => "new" }
        format.json { render :json => @taquillero.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /taquilleros/1
  # PUT /taquilleros/1.json
  def update
    @taquillero = Taquillero.find(params[:id])

    respond_to do |format|
      if @taquillero.update_attributes(params[:taquillero])
        format.html { redirect_to @taquillero, :notice => 'Taquillero was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @taquillero.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /taquilleros/1
  # DELETE /taquilleros/1.json
  def destroy
    @taquillero = Taquillero.find(params[:id])
    @taquillero.destroy

    respond_to do |format|
      format.html { redirect_to taquilleros_url }
      format.json { head :no_content }
    end
  end
end
