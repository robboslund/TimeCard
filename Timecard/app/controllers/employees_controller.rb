class EmployeesController < ApplicationController

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :username, :password)
  end

  def show
    id = params[:id] # retrieve movie ID from URI route
    @employee = Employee.find(id) # look up movie by unique ID
    # will render app/views/movies/show.<extension> by default
  end
  
  def check
    if Employee.exists?(username: params[:employee][:username], password: params[:employee][:password]) then
      flash[:notice] = "login successful"
    else
      flash[:notice] = "login failed"
    end
    redirect_to employees_path
  end

  def index
    @employees = Employee.all
  end

  def new
    # default: render 'new' template
  end

  def create
    @employee = Employee.create!(employee_params)
    #flash[:notice] = "#{@movie.title} was successfully created."
    redirect_to employees_path
  end

  def edit
    @employee = Employee.find params[:id]
  end

  def update
    @employee = Employee.find params[:id]
    @employee.update_attributes!(employee_params)
    #flash[:notice] = "#{@movie.title} was successfully updated."
    redirect_to employee_path(@employee)
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    #flash[:notice] = "Movie '#{@movie.title}' deleted."
    redirect_to employees_path
  end

end
