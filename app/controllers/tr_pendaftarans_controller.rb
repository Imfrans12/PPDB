class TrPendaftaransController < ApplicationController
  before_action :id_param, only: [:show, :edit, :update, :destroy]
  def index
    @tr_pendaftarans = TrPendaftaran.all
  end

  def edit
  end

  def update
    tr_pendaftarans = TrPendaftaran.where(:id => params[:id])
    tr_pendaftarans.update(tr_pendaftarans_params)
    if tr_pendaftarans
    redirect_to tr_pendaftarans_path, notice: "Data Telah Di Perbaharui"
  else
    render 'edit'
  end
  end

  def new
    @tr_pendaftarans = TrPendaftaran.new
  end

  def create
    @tr_pendaftarans = TrPendaftaran.new(tr_pendaftarans_params)

    if @tr_pendaftarans.save
      redirect_to tr_pendaftarans_path, notice: "Terima Kasih Telah Mendaftar di SMK Wikrama Bogor"
    else
      render 'new'
    end
  end

  def show
  end

  def destroy
    @tr_pendaftarans = TrPendaftaran.find(params[:id])
    @tr_pendaftarans.destroy
    redirect_to tr_pendaftarans_path, notice: "Data Telah Terhapus"
  end
  private
  def tr_pendaftarans_params
    params.require(:tr_pendaftaran).permit(:id, :format, :nis, :nama, :jenis_kelamin, :tempat_lahir, :tanggal_lahir, :alamat, :asal_sekolah, :kelas, :jurusan, :created_by, :updated_by)
  end

  def id_param
    @tr_pendaftarans = TrPendaftaran.find_by(:id=>params[:id])
  end
end
