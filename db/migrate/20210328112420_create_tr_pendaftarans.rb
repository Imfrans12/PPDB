class CreateTrPendaftarans < ActiveRecord::Migration[5.2]
  def change
    create_table :tr_pendaftarans do |t|
      t.string :nis
      t.string :nama
      t.string :jenis_kelamin
      t.string :tempat_lahir
      t.string :tanggal_lahir
      t.string :alamat
      t.string :asal_sekolah
      t.string :kelas
      t.string :jurusan
      t.timestamps
    end
  end
end
