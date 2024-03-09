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
      nisn: json['nisn'] != null ? int.parse(json['nisn'].toString()) : 0,
      nama: json['nama'] != null ? json['nama'].toString() : '',
      jenis_kelamin: json['jenis_kelamin'] != null ? json['jenis_kelamin'].toString() : '',
      tanggal_lahir: json['tanggal_lahir'] != null ? json['tanggal_lahir'].toString() : '',
      asal_sekolah: json['asal_sekolah'] != null ? json['asal_sekolah'].toString() : '',
      tujuan_sekolah: json['tujuan_sekolah'] != null ? json['tujuan_sekolah'].toString() : '',
      status_penerimaan: json['status_penerimaan'] != null ? json['status_penerimaan'].toString() : '',
      id: json['id'] != null ? int.parse(json['id'].toString()) : 0,
    );
  }
}
