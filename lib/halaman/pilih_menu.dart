import 'package:flutter/material.dart';
import 'package:ppdb_bedas/uttils.dart';

class pilih_menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: EdgeInsets.fromLTRB(0 * fem, 54 * fem, 0 * fem, 35 * fem),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xff00686c),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(34 * fem, 0 * fem, 300 * fem, 99 * fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 18 * fem, 0 * fem),
                    width: 36 * fem,
                    height: 37 * fem,
                    child: Image.asset(
                      'assets/images/px-lambangkabupatenbandungjawabaratindonesia.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 42 * fem,
                    height: 37 * fem,
                    child: Image.asset(
                      'assets/images/logo-bandung-bedas-min-1024x1024.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 136 * fem),
                constraints: BoxConstraints(
                  maxWidth: 444 * fem,
                ),
                child: Text(
                  'PPDB ONLINE \nKABUPATEN BANDUNG',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont(
                    'Montserrat',
                    fontSize: 32 * ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.2189999819 * ffem / fem,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(34 * fem, 0 * fem, 37 * fem, 287 * fem),
              width: double.infinity,
              height: 158 * fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton( // Ubah menjadi ElevatedButton
                    onPressed: () {

                      Navigator.pushNamed(context, '/CekKelulusan');// Aksi ketika tombol pertama ditekan
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffffffff), // Warna latar belakang tombol
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10 * fem), // Ubah ke bentuk tombol
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/image-1.png',
                          width: 71 * fem,
                          height: 71 * fem,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          'CARI SISWA\nPPDB',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w800,
                            height: 1.2189999819 * ffem / fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 45 * fem), // Tambahkan jarak antara tombol
                  ElevatedButton( // Ubah menjadi ElevatedButton
                    onPressed: () {
                      Navigator.pushNamed(context, '/page_3');// Aksi ketika tombol kedua ditekan
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffffffff), // Warna latar belakang tombol
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10 * fem), // Ubah ke bentuk tombol
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/image-2.png',
                          width: 65 * fem,
                          height: 68 * fem,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          'MASUK APP',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w800,
                            height: 1.2189999819 * ffem / fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 142 * fem,
              height: 37 * fem,
              child: Image.asset(
                'assets/images/bedas.png',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
