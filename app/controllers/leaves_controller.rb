class LeavesController < ApplicationController

     def index
     	@Leave = Leave.new
     end

     def new
     	@leave = Leave.new
     end

	def create
		#byebug
    @leave = Leave.new
    
    @leave.firstname = params[:leave][:firstname]
    @leave.start_date = params[:leave][:start_date]
    @leave.end_date = params[:leave][:end_date]
    @leave.leave_type_id = params[:leave][:leave_type]
    @leave.image = params[:leave][:image]
    
    


   respond_to do |format|
    if @leave.save!
      format.html  { redirect_to(@leave,
                    :notice => 'Post was successfully created.') }
      format.json  { render :json => @leave,
                    :status => :created, :location => @leave }
    else
      format.html  { render :action => "new" }
      format.json  { render :json => @leave.errors,
                    :status => :unprocessable_entity }
    end
  end

  end

  def show
  	@leave = Leave.find(params[:id])
  end

end
