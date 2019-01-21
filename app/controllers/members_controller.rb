class MembersController < ApplicationController
  def index # GET
    @members = Member.all
  end

  def new # GET
    @member = Member.new
  end

  def create # POST
    Member.transaction do
      member_params = params.require(:member)
        .permit(:name, :email, :age)

      @member = Member.new  member_params
      @member.save!
    end

  rescue
    render action: :new
  end

  def show
    @member = Member.find(params[:id])
  end

  def edit
    @member = Member.find params[:id]
  end

  def update
    Member.transaction do
      member_params = params.require(:member)
        .permit(:name, :email, :age)

      @member = Member.find params[:id]
      @member.attributes = member_params
      @member.save!
    end
    
  rescue
    render action: :new
  end
end
