class BedTimesController < ApplicationController
  # GET /bed_times
  # GET /bed_times.json
  def index
    @bed_times = BedTime.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bed_times }
    end
  end

  def create
    @bed_time = BedTime.new(params[:bed_time])

    respond_to do |format|
      if @bed_time.save
        format.html { redirect_to bed_times_path, notice: 'Bed time was successfully created.' }
        format.json { render json: @bed_time, status: :created, location: @bed_time }
      else
        format.html { render action: "new" }
        format.json { render json: @bed_time.errors, status: :unprocessable_entity }
      end
    end
  end



  # DELETE /bed_times/1
  # DELETE /bed_times/1.json
  def destroy
    @bed_time = BedTime.find(params[:id])
    @bed_time.destroy

    respond_to do |format|
      format.html { redirect_to bed_times_url }
      format.json { head :no_content }
    end
  end
end
