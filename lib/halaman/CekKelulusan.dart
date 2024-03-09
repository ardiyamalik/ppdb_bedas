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

  @override
  void initState() {
    super.initState();
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
        appBar: AppBar(title: const Text('Data Murid')),
        body: muridList.isEmpty
            ? Center(child: CircularProgressIndicator()) // Menampilkan indikator loading jika data masih diambil dari API
            : ListView.builder(
          itemCount: muridList.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(muridList[index].nama),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('NISN: ${muridList[index].nisn}'),
                  Text('Jenis Kelamin: ${muridList[index].jenis_kelamin}'),
                  Text('Tanggal Lahir: ${muridList[index].tanggal_lahir}'),
                  Text('Asal Sekolah: ${muridList[index].asal_sekolah}'),
                  Text('Tujuan Sekolah: ${muridList[index].tujuan_sekolah}'),
                  Text('Status Penerimaan: ${muridList[index].status_penerimaan}'),
                  Text('ID: ${muridList[index].id}'),
                ],
              ),
              onTap: () {
                // Handle when a murid is tapped
                // Contoh:
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text(muridList[index].nama),
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('NISN: ${muridList[index].nisn}'),
                          Text('Jenis Kelamin: ${muridList[index].jenis_kelamin}'),
                          Text('Tanggal Lahir: ${muridList[index].tanggal_lahir}'),
                          Text('Asal Sekolah: ${muridList[index].asal_sekolah}'),
                          Text('Tujuan Sekolah: ${muridList[index].tujuan_sekolah}'),
                          Text('Status Penerimaan: ${muridList[index].status_penerimaan}'),
                          Text('ID: ${muridList[index].id}'),
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
            );
          },
        ),
      ),
    );
  }
}
