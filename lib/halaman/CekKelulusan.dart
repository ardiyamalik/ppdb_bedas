import 'package:flutter/material.dart';
import 'package:ppdb_bedas/Repository.dart';
import 'package:ppdb_bedas/model.dart';

class CekKelulusan extends StatefulWidget {
  const CekKelulusan({Key? key}) : super(key: key);

  @override
  _CekKelulusanState createState() => _CekKelulusanState();
}

class _CekKelulusanState extends State<CekKelulusan> {
  final SearchController controller = SearchController();
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

  List<data_murid> searchMurid(String query) {
    return muridList.where((murid) =>
        murid.nama.toLowerCase().contains(query.toLowerCase())).toList();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return MaterialApp(
      localizationsDelegates: [
        DefaultMaterialLocalizations.delegate,
        DefaultWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'),
      ],
      title: 'Your App',
      home: Scaffold(
        appBar: AppBar(title: const Text('Masukan NISN Anda')),
        body: Column(
          children: <Widget>[
            SearchAnchor(
              searchController: controller,
              builder: (BuildContext context, SearchController controller) {
                return IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    controller.openView();
                  },
                );
              },
              suggestionsBuilder: (BuildContext context, SearchController controller) {
                return muridList.map((murid) {
                  return ListTile(
                    title: Text(murid.nama),
                    onTap: () {
                      setState(() {
                        controller.closeView(murid.nama);
                      });
                    },
                  );
                }).toList();
              },
            ),
            Center(
              child: controller.text.isEmpty
                  ? const Text('No item selected')
                  : Text('Selected item: ${controller.value.text}'),
            ),
          ],
        ),
      ),
    );
  }
}
