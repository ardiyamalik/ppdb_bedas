import 'package:flutter/material.dart';
import 'package:ppdb_bedas/RepositoryLokasi.dart';
import 'package:ppdb_bedas/ModelLokasi.dart';

class LokasiPendaftaran extends StatefulWidget {
  const LokasiPendaftaran({Key? key}) : super(key: key);

  @override
  _LokasiPendaftaranState createState() => _LokasiPendaftaranState();
}

class _LokasiPendaftaranState extends State<LokasiPendaftaran> {
  final RepositoryLokasi repositoryLokasi = RepositoryLokasi();
  List<lokasi_pendaftaran> lokasiList = [];

  @override
  void initState() {
    super.initState();
    getDataFromApi();
  }

  void getDataFromApi() async {
    try {
      List<lokasi_pendaftaran> data = await repositoryLokasi.getData();
      setState(() {
        lokasiList = data;
      });
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lokasi Pendaftaran',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff00686c),
          title: Text(
            'LOKASI PENDAFTARAN',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 28,
              fontWeight: FontWeight.w700,
              color: Color(0xffffffff),
            ),
          ),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.grey[300],
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: lokasiList.isEmpty
                  ? Center(child: CircularProgressIndicator())
                  : ListView.builder(
                itemCount: lokasiList.length,
                itemBuilder: (context, index) {
                  final lokasi = lokasiList[index];
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      title: Text(lokasi.nama),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Alamat: ${lokasi.alamat}'),
                          Text('No.Tlp: ${lokasi.notlp}'),
                          Text('ID: ${lokasi.id}'),
                        ],
                      ),
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text(lokasi.nama),
                              content: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text('Alamat: ${lokasi.alamat}'),
                                  Text('No.Tlp: ${lokasi.notlp}'),
                                  Text('ID: ${lokasi.id}'),
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
