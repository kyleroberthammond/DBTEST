class CompanyController < ApplicationController
  layout "company"


# View
  def index
    @companies = Company.all
  end

  def new
  	@company = Company.new
  end

  def edit
    @company = Company.find(params[:id])
  end
# View


# Doing stuff
  def create
    @company = Company.create(company_params)
    if(@company.valid?)
      redirect_to company_index_path
    else
      render :new
    end
  end

  def update
    @company = Company.find(params[:id])
    @company.update(company_params)

    redirect_to company_index_path
  end

  def destroy
    @company = Company.find(params[:id])
    @company.destroy

    redirect_to company_index_path
  end

# Doing stuff


# General parameters
  private
  def company_params
    params.require(:company).permit(:company_name,:address)
  end

end
