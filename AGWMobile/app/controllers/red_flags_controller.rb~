class RedFlagsController < ApplicationController
  # GET /red_flags
  # GET /red_flags.json
  def index
    @red_flags = RedFlag.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @red_flags }
    end
  end

  # GET /red_flags/1
  # GET /red_flags/1.json
  def show
    @red_flag = RedFlag.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @red_flag }
    end
  end

  # GET /red_flags/new
  # GET /red_flags/new.json
  def new
    @red_flag = RedFlag.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @red_flag }
    end
  end

  # GET /red_flags/1/edit
  def edit
    @red_flag = RedFlag.find(params[:id])
  end

  # POST /red_flags
  # POST /red_flags.json
  def create
    @red_flag = RedFlag.new(params[:red_flag])

    respond_to do |format|
      if @red_flag.save
        format.html { redirect_to @red_flag, notice: 'Red flag was successfully created.' }
        format.json { render json: @red_flag, status: :created, location: @red_flag }
      else
        format.html { render action: "new" }
        format.json { render json: @red_flag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /red_flags/1
  # PUT /red_flags/1.json
  def update
    @red_flag = RedFlag.find(params[:id])

    respond_to do |format|
      if @red_flag.update_attributes(params[:red_flag])
        format.html { redirect_to @red_flag, notice: 'Red flag was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @red_flag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /red_flags/1
  # DELETE /red_flags/1.json
  def destroy
    @red_flag = RedFlag.find(params[:id])
    @red_flag.destroy

    respond_to do |format|
      format.html { redirect_to red_flags_url }
      format.json { head :no_content }
    end
  end
end
