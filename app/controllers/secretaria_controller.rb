class SecretariaController < ApplicationController
  # GET /secretaria
  # GET /secretaria.json
  def index
    @secretaria = Secretarium.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @secretaria }
    end
  end

  # GET /secretaria/1
  # GET /secretaria/1.json
  def show
    @secretarium = Secretarium.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @secretarium }
    end
  end

  # GET /secretaria/new
  # GET /secretaria/new.json
  def new
    @secretarium = Secretarium.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @secretarium }
    end
  end

  # GET /secretaria/1/edit
  def edit
    @secretarium = Secretarium.find(params[:id])
  end

  # POST /secretaria
  # POST /secretaria.json
  def create
    @secretarium = Secretarium.new(params[:secretarium])

    respond_to do |format|
      if @secretarium.save
        format.html { redirect_to @secretarium, :notice => 'Secretarium was successfully created.' }
        format.json { render :json => @secretarium, :status => :created, :location => @secretarium }
      else
        format.html { render :action => "new" }
        format.json { render :json => @secretarium.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /secretaria/1
  # PUT /secretaria/1.json
  def update
    @secretarium = Secretarium.find(params[:id])

    respond_to do |format|
      if @secretarium.update_attributes(params[:secretarium])
        format.html { redirect_to @secretarium, :notice => 'Secretarium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @secretarium.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /secretaria/1
  # DELETE /secretaria/1.json
  def destroy
    @secretarium = Secretarium.find(params[:id])
    @secretarium.destroy

    respond_to do |format|
      format.html { redirect_to secretaria_url }
      format.json { head :no_content }
    end
  end
end
