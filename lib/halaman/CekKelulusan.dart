import 'package:flutter/material.dart';
import 'package:ppdb_bedas/main.dart';

class CekKelulusan extends StatefulWidget {
  const CekKelulusan({Key? key}) : super(key: key);

  @override
  _CekKelulusanState createState() => _CekKelulusanState();
}

class _CekKelulusanState extends State<CekKelulusan> {
  final SearchController controller = SearchController();

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context); // Menggunakan tema dari konteks

    return MaterialApp( // Wrap your widget with MaterialApp
      localizationsDelegates: [
        // Add the delegates needed for MaterialLocalization
        DefaultMaterialLocalizations.delegate,
        DefaultWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'), // Change the locale to the one you support
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
                return List.generate(5, (int index) {
                  final String item = 'item $index';
                  return ListTile(
                    title: Text(item),
                    onTap: () {
                      setState(() {
                        controller.closeView(item);
                      });
                    },
                  );
                });
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
