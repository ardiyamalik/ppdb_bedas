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
      return muridList;
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
          title: Text('Data Murid'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
            Expanded(
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
          ],
        ),
        body: muridList.isEmpty
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
          itemCount: getFilteredMuridList(searchController.text).length,
          itemBuilder: (context, index) {
            final murid = getFilteredMuridList(searchController.text)[index];
            return ListTile(
              title: Text(murid.nama),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('NISN: ${murid.nisn}'),
                ],
              ),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text(murid.nama),
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('NISN: ${murid.nisn}'),
                          Text('Jenis Kelamin: ${murid.jenis_kelamin}'),
                          Text('Tanggal Lahir: ${murid.tanggal_lahir}'),
                          Text('Asal Sekolah: ${murid.asal_sekolah}'),
                          Text('Tujuan Sekolah: ${murid.tujuan_sekolah}'),
                          Text('Status Penerimaan: ${murid.status_penerimaan}'),
                          Text('ID: ${murid.id}'),
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
