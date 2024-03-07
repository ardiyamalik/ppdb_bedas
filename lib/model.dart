class data_murid {
  final String nama;
  final String jenis_kelamin;
  final String tanggal_lahir;
  final String asal_sekolah;
  final String tujuan_sekolah;
  final String status_penerimaan;
  final int id;
  final int nisn;

  const data_murid({
    required this.nama,
    required this.jenis_kelamin,
    required this.tanggal_lahir,
    required this.asal_sekolah,
    required this.tujuan_sekolah,
    required this.status_penerimaan,
    required this.nisn,
    required this.id
  });

  factory data_murid.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
      'nisn': int nisn,
      'nama': String nama,
      'jenis_kelamin': String jenis_kelamin,
      'tanggal_lahir' : String tanggal_lahir,
      'asal_sekolah' : String asal_sekolah,
      'tujuan_sekolah' : String tujuan_sekolah,
      'status_penerimaan' : String status_penerimaan,
      'id' : int id,
      } =>
          data_murid(
            nisn: nisn,
            nama: nama,
            jenis_kelamin: jenis_kelamin,
            tanggal_lahir: tanggal_lahir,
            asal_sekolah: asal_sekolah,
            tujuan_sekolah: tujuan_sekolah,
            status_penerimaan: status_penerimaan,
            id: id,
          ),
      _ => throw const FormatException('Failed to load album.'),
    };
  }
}