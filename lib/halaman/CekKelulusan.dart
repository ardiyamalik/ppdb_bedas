// Tambahkan import untuk Font Montserrat
import 'package:flutter/material.dart';
import 'package:ppdb_bedas/Repository.dart';
import 'package:ppdb_bedas/model.dart';

class CekKelulusan extends StatefulWidget {
  const CekKelulusan({Key? key}) : super(key: key);

  @override
  _CekKelulusanState createState() => _CekKelulusanState();
}

class _CekKelulusanState extends State<CekKelulusan> {
  final Repository repository = Repository();
  List<data_murid> muridList = [];
  late TextEditingController searchController;

  @override
  void initState() {
    super.initState();
    searchController = TextEditingController();
    getDataFromApi();
  }

  void getDataFromApi() async {
    try {
      List<data_murid> data = await repository.getData();
      setState(() {
        muridList = data;
      });
    } catch (e) {
      print(e.toString());
    }
  }

  List<data_murid> getFilteredMuridList(String query) {
    if (query.isEmpty) {
      return [];
    } else {
      return muridList.where((murid) => murid.nisn.toString().contains(query)).toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        DefaultMaterialLocalizations.delegate,
        DefaultWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'),
      ],
      title: 'PPDB_BEDAS',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff00686c), // Mengubah warna app bar menjadi hijau tua
          title: Text('Data Murid'),
          actions: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 8, 0), // Menambahkan padding di sebelah kanan search box
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white, // Warna kotak putih
                  ),
                  child: TextField(
                    controller: searchController,
                    onChanged: (value) {
                      setState(() {});
                    },
                    decoration: InputDecoration(
                      hintText: 'Cari berdasarkan NISN',
                      border: InputBorder.none,
                      isDense: true,
                      contentPadding: EdgeInsets.all(8),
                    ),
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
          ],
        ),
        body: Container(
          color: Colors.grey[300], // Mengubah warna latar belakang menjadi abu-abu
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9, // Lebar ListView 80% dari lebar layar
              child: searchController.text.isEmpty // Tampilkan hanya jika searchbox tidak kosong
                  ? Center(
                child: Text(
                  'Silakan masukkan NISN untuk melakukan pencarian',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
                  : muridList.isEmpty
                  ? Center(child: CircularProgressIndicator())
                  : ListView.builder(
                itemCount: getFilteredMuridList(searchController.text).length,
                itemBuilder: (context, index) {
                  final murid = getFilteredMuridList(searchController.text)[index];
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 8), // Menambahkan margin vertikal
                    padding: EdgeInsets.all(16), // Menambahkan padding
                    decoration: BoxDecoration(
                      color: Colors.white, // Mengubah warna latar belakang menjadi putih
                      borderRadius: BorderRadius.circular(10), // Mengubah bentuk menjadi kotak dengan sudut melengkung
                    ),
                    child: ListTile(
                      title: Text(murid.name),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Nama: ${murid.name}'),
                          Text('NISN: ${murid.nisn}'),
                        ],
                      ),
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text(murid.name),
                              content: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text('Nama: ${murid.name}'),
                                  Text('NISN: ${murid.nisn}'),
                                  Text('Jenis Kelamin: ${murid.jenis_kelamin}'),
                                  Text('Tanggal Lahir: ${murid.tanggal_lahir}'),
                                  Text('Asal Sekolah: ${murid.asal_sekolah}'),
                                  Text('Tujuan Sekolah: ${murid.tujuan_sekolah}'),
                                  Text('Status Penerimaan: ${murid.status_penerimaan}'),
                                ],
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('OK'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
