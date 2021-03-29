class TrRegistrationsController < ApplicationController
  def index
  	@tr_registrations = TrRegistration.all
  end

  def edit
  	@tr_registrations = TrRegistration.find(params[:id])
  end

  def update
  	tr_registrations = TrRegistration.where(:id => params[:id])
  	tr_registrations.update(tr_registrations_params)
  	if tr_registrations
  	redirect_to tr_registrations_path, notice: "Data Telah Ter-Update"
  else
  	render 'edit'
  end
  end

  def new
  	@tr_registrations = TrRegistration.new
  end

  def create
  	@tr_registrations = TrRegistration.new(tr_registrations_params)

    if @tr_registrations.save
      redirect_to tr_registrations_path, notice: "Data Telah Ter-Upload"
    else
      render 'new'
    end
  end

  def show
  end

  def destroy
  	@tr_registrations = TrRegistration.find(params[:id])
    @tr_registrations.destroy
    redirect_to tr_registrations_path, notice: "Data Successfuly Deleted"
  end

private
  def tr_registrations_params
    params.require(:tr_registration).permit(:id, :nis, :nama, :jenis_kelamin, :tempat_lahir, :tanggal_lahir, :alamat, :asal_sekolah, :kelas, :jurusan)
  end
end
