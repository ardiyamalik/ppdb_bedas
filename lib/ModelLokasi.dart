class lokasi_pendaftaran {
  final String nama;
  final String alamat;
  final String notlp;
  final int id;

  const lokasi_pendaftaran({
    required this.nama,
    required this.alamat,
    required this.notlp,
    required this.id,
  });

  factory lokasi_pendaftaran.fromJson(Map<String, dynamic> json) {
    return lokasi_pendaftaran(
      nama: json['nama'] != null ? json['nama'].toString() : '',
      alamat: json['alamat'] != null ? json['alamat'].toString() : '',
      notlp: json['notlp'] != null ? json['notlp'].toString() : '',
      id: json['id'] != null ? int.parse(json['id'].toString()) : 0,
    );
  }
}
