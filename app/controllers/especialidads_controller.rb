class EspecialidadsController < ApplicationController
  # GET /especialidads
  # GET /especialidads.json
  def index
    @especialidads = Especialidad.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @especialidads }
    end
  end

  # GET /especialidads/1
  # GET /especialidads/1.json
  def show
    @especialidad = Especialidad.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @especialidad }
    end
  end

  # GET /especialidads/new
  # GET /especialidads/new.json
  def new
    @especialidad = Especialidad.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @especialidad }
    end
  end

  # GET /especialidads/1/edit
  def edit
    @especialidad = Especialidad.find(params[:id])
  end

  # POST /especialidads
  # POST /especialidads.json
  def create
    @especialidad = Especialidad.new(params[:especialidad])

    respond_to do |format|
      if @especialidad.save
        format.html { redirect_to @especialidad, :notice => 'Especialidad was successfully created.' }
        format.json { render :json => @especialidad, :status => :created, :location => @especialidad }
      else
        format.html { render :action => "new" }
        format.json { render :json => @especialidad.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /especialidads/1
  # PUT /especialidads/1.json
  def update
    @especialidad = Especialidad.find(params[:id])

    respond_to do |format|
      if @especialidad.update_attributes(params[:especialidad])
        format.html { redirect_to @especialidad, :notice => 'Especialidad was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @especialidad.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /especialidads/1
  # DELETE /especialidads/1.json
  def destroy
    @especialidad = Especialidad.find(params[:id])
    @especialidad.destroy

    respond_to do |format|
      format.html { redirect_to especialidads_url }
      format.json { head :no_content }
    end
  end
end
