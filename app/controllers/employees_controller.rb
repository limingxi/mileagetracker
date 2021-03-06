class EmployeesController < ApplicationController
  # GET /employees
  # GET /employees.json
  def index
    if session[:authorized].nil? or session[:authorized] == false
	render :status => :forbidden, :text => "Forbidden" and return
    end
    @employees = Employee.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @employees }
    end
  end

  # GET /employees/1
  # GET /employees/1.json
  def show
    if session[:authorized].nil? or session[:authorized] == false
	render :status => :forbidden, :text => "Forbidden" and return
    end
    @employee = Employee.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @employee }
    end
  end

  # GET /employees/new
  # GET /employees/new.json
  def new
    if session[:authorized].nil? or session[:authorized] == false
	render :status => :forbidden, :text => "Forbidden" and return
    end
    @employee = Employee.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @employee }
    end
  end

  # GET /employees/1/edit
  def edit
    if session[:authorized].nil? or session[:authorized] == false
	render :status => :forbidden, :text => "Forbidden" and return
    end
    @employee = Employee.find(params[:id])
  end

  # POST /employees
  # POST /employees.json
  def create
    if session[:authorized].nil? or session[:authorized] == false
	render :status => :forbidden, :text => "Forbidden" and return
    end
    @employee = Employee.new(params[:employee])

    respond_to do |format|
      if @employee.save
        format.html { redirect_to @employee, notice: 'Employee was successfully created.' }
        format.json { render json: @employee, status: :created, location: @employee }
      else
        format.html { render action: "new" }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /employees/1
  # PUT /employees/1.json
  def update
    if session[:authorized].nil? or session[:authorized] == false
	render :status => :forbidden, :text => "Forbidden" and return
    end
    @employee = Employee.find(params[:id])

    respond_to do |format|
      if @employee.update_attributes(params[:employee])
        format.html { redirect_to @employee, notice: 'Employee was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employees/1
  # DELETE /employees/1.json
  def destroy
    if session[:authorized].nil? or session[:authorized] == false
	render :status => :forbidden, :text => "Forbidden" and return
    end
    @employee = Employee.find(params[:id])
    @employee.destroy

    respond_to do |format|
      format.html { redirect_to employees_url }
      format.json { head :no_content }
    end
  end
end
