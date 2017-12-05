class GardensController < ApplicationController

  def garden_params
    params.require(:garden).permit(:garden_name, :size_x, :size_y)
  end

  def show
    id = params[:id] # retrieve garden ID from URI route
    @garden = Garden.find(id) # look up garden by unique ID
    # will render app/views/gardens/show.<extension> by default. 
  end

  def index
    @gardens = Garden.all
    redirect = false
    @User_pot_list=session[@User_pot_list]
    if session[:garden_row]
      @garden_row=session[:garden_row]
    else
      @garden_row=[[nil]]
    end
    
    @all_garden_sizes = ['Large Pot','Medium Pot','Small Pot','Small plot of Land', "Medium Plot of Land", "Large Plot of Land", "Acres"]
    if params[:pot] != nil
      @currentRow=@garden_row.length-1
      if @garden_row[0][0]==nil
        @garden_row[0][0]=params[:pot]
        session[:garden_row]=@garden_row
      elsif @garden_row[@currentRow].length == 1
        @garden_row << []
        @currentRow+=1
        @garden_row[@currentRow]<< params[:pot]
        session[:garden_row]=@garden_row
      else 
        @garden_row[@currentRow]<< params[:pot]
        session[:garden_row]=@garden_row
      end
      params[:pot]=nil
    end
    
    if params[:sort]
      @sort_by = params[:sort]
      session[:sort_by]=params[:sort]
    elsif session[:sort_by]
      @sort_by = session[:sort_by]
      redirect=true
    else
      @sort_by = nil
    end

    if @sort_by
      @gardens = Garden.order(@sort_by)
      case @sort_by
      when 'garden_name'
        @garden_name_hilite = 'hilite'
      when 'garden_date'
        @garden_date_hilite = 'hilite'
      end
    else
      @gardens = Garden.all
    end
    
    if !@garden_sizes
      @garden_sizes = Hash.new
    end
    
  end

  def new
    # default: render 'new' template
  end

  def create
    garden_paramsfinal = garden_params.merge(:user_id => 0, :plants => [["Large Pot"]])
    @garden = Garden.create!(garden_paramsfinal)
    flash[:notice] = "#{@garden.garden_name} was successfully created."
    redirect_to plants_path(:garden=>@garden)
  end

  def edit
    @garden = Garden.find params[:id]
  end

  def update
    @garden = Garden.find params[:id]
    @garden.update_attributes!(garden_params)
    flash[:notice] = "#{@garden.garden_name} was successfully updated."
    redirect_to garden_path(@garden)
  end

  def destroy
    @garden = Garden.find(params[:id])
    @garden.destroy
    flash[:notice] = "Garden '#{@garden.garden_name}' deleted."
    redirect_to plants_path
  end

end
