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
    required this.id,
  });

  factory data_murid.fromJson(Map<String, dynamic> json) {
    return data_murid(
      nisn: json['nisn'] as int,
      nama: json['nama'] as String,
      jenis_kelamin: json['jenis_kelamin'] as String,
      tanggal_lahir: json['tanggal_lahir'] as String,
      asal_sekolah: json['asal_sekolah'] as String,
      tujuan_sekolah: json['tujuan_sekolah'] as String,
      status_penerimaan: json['status_penerimaan'] as String,
      id: json['id'] as int,
    );
  }
}
