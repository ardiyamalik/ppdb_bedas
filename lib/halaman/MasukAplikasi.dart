import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:ppdb_bedas/halaman/CekKelulusan.dart';

class MasukAplikasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // iphone1415promax55my (1:213)
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupuyvtQpF (P3Cc7smQgkeQkdtMvrUYVT)
              width: double.infinity,
              height: 508*fem,
              child: Stack(
                children: [
                  Positioned(
                    // rectangle118kF (1:214)
                    left: 0*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 430*fem,
                        height: 255*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            color: Color(0xff00686c),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // ppdbonlinekabupatenbandungrAT (1:256)
                    left: 17*fem,
                    top: 105.5*fem,
                    child: Center(
                      child: Align(
                        child: SizedBox(
                          width: 396*fem,
                          height: 78*fem,
                          child: Text(
                            'PPDB ONLINE \nKABUPATEN BANDUNG',
                            textAlign: TextAlign.center,
                            style: TextStyle (
                              fontFamily: 'Arial', // Ganti dengan font yang diinginkan
                              fontSize: 32*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2175*ffem/fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // pxlambangkabupatenbandungjawab (1:216)
                    left: 34*fem,
                    top: 54*fem,
                    child: Align(
                      child: SizedBox(
                        width: 36*fem,
                        height: 37*fem,
                        child: Image.asset(
                          'assets/images/px-lambangkabupatenbandungjawabaratindonesia.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle12G1D (1:218)
                    left: 30*fem,
                    top: 236*fem,
                    child: Align(
                      child: SizedBox(
                        width: 371*fem,
                        height: 272*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(7*fem),
                            color: Color(0xffd9d9d9),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group18NK9 (4:631)
                    left: 61*fem,
                    top: 264*fem,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(10*fem, 0*fem, 10*fem, 0*fem),
                        width: 86*fem,
                        height: 96*fem,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // image7qyR (1:219)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                              width: 52*fem,
                              height: 57*fem,
                              child: Image.asset(
                                'assets/images/image 7.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Center(
                              // lokasipendaftaranmcB (1:225)
                              child: Container(
                                constraints: BoxConstraints (
                                  maxWidth: 66*fem,
                                ),
                                child: Text(
                                  'Lokasi Pendaftaran',
                                  textAlign: TextAlign.center,
                                  style: TextStyle (
                                    fontFamily: 'Arial', // Ganti dengan font yang diinginkan
                                    fontSize: 10*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2575*ffem/fem,
                                    color: const Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group19Goq (4:632)
                    left: 173*fem,
                    top: 264*fem,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(17*fem, 0*fem, 17*fem, 0*fem),
                        width: 86*fem,
                        height: 96*fem,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // image8MqH (1:220)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
                              width: 52*fem,
                              height: 58*fem,
                              child: Image.asset(
                                'assets/images/image 8.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Center(
                              // dayatampungVgb (1:226)
                              child: Container(
                                constraints: BoxConstraints (
                                  maxWidth: 50*fem,
                                ),
                                child: Text(
                                  'Daya\nTampung',
                                  textAlign: TextAlign.center,
                                  style: TextStyle (
                                    fontFamily: 'Arial', // Ganti dengan font yang diinginkan
                                    fontSize: 10*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2575*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group20CL7 (4:633)
                    left: 286*fem,
                    top: 264*fem,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(9*fem, 0*fem, 9*fem, 0*fem),
                        width: 86*fem,
                        height: 99*fem,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // image96gP (1:221)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 14*fem),
                              width: 53*fem,
                              height: 54*fem,
                              child: Image.asset(
                                'assets/images/image 9.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Center(
                              // jadwalpelaksanaanRif (1:227)
                              child: Container(
                                constraints: BoxConstraints (
                                  maxWidth: 68*fem,
                                ),
                                child: Text(
                                  'Jadwal\nPelaksanaan',
                                  textAlign: TextAlign.center,
                                  style: TextStyle (
                                    fontFamily: 'Arial', // Ganti dengan font yang diinginkan
                                    fontSize: 10*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2575*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group6YoH (1:344)
                    left: 305*fem,
                    top: 395*fem,
                    child: Container(
                      width: 48*fem,
                      height: 85.5*fem,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // image12Ugw (1:224)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 21.5*fem),
                            width: 48*fem,
                            height: 48*fem,
                            child: Image.asset(
                              'assets/images/image 12.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Center(
                            // statistik1Ry (1:228)
                            child: Container(
                              width: double.infinity,
                              child: Text(
                                'Statistik',
                                textAlign: TextAlign.center,
                                style: TextStyle (
                                  fontFamily: 'Arial', // Ganti dengan font yang diinginkan
                                  fontSize: 10*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2575*ffem/fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // group5Xv7 (1:343)
                    left: 190*fem,
                    top: 399*fem,
                    child: Container(
                      width: 52*fem,
                      height: 89*fem,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // image11U4f (1:223)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                            width: 52*fem,
                            height: 48*fem,
                            child: Image.asset(
                              'assets/images/image 11.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Center(
                            // aturanprosedurCmM (1:229)
                            child: Container(
                              constraints: BoxConstraints (
                                maxWidth: 49*fem,
                              ),
                              child: Text(
                                'Aturan &\nProsedur',
                                textAlign: TextAlign.center,
                                style: TextStyle (
                                  fontFamily: 'Arial', // Ganti dengan font yang diinginkan
                                  fontSize: 10*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2575*ffem/fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // group4hi7 (1:342)
                    left: 77 * fem,
                    top: 388 * fem,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CekKelulusan()),
                        );// Tambahkan logika untuk aksi tombol di sini
                      },
                      child: Container(
                        width: 53 * fem,
                        height: 100 * fem,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // image10Re7 (1:222)
                              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 8 * fem),
                              width: 53 * fem,
                              height: 61 * fem,
                              child: Image.asset(
                                'assets/images/image 10.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Center(
                              // hasilseleksiwsM (1:230)
                              child: Container(
                                margin: EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 0 * fem),
                                constraints: BoxConstraints(
                                  maxWidth: 38 * fem,
                                ),
                                child: Text(
                                  'Hasil\nSeleksi',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'Arial', // Ganti dengan font yang diinginkan
                                    fontSize: 10 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2575 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // logobandungbedasmin1024x102439 (1:387)
                    left: 83*fem,
                    top: 54*fem,
                    child: Align(
                      child: SizedBox(
                        width: 42*fem,
                        height: 37*fem,
                        child: Image.asset(
                          'assets/images/logo-bandung-bedas-min-1024x1024.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogrouptbc9YcF (P3CcgSfUeBCKk4VRtbtbc9)
              padding: EdgeInsets.fromLTRB(35*fem, 73*fem, 29*fem, 30*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroup3r8mUVu (P3CcbhJPU28QvXcLGb3r8m)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 231*fem),
                    width: double.infinity,
                    height: 53*fem,
                    decoration: BoxDecoration (
                      color: Color(0xff1fce03),
                      borderRadius: BorderRadius.circular(10*fem),
                    ),
                    child: Center(
                      child: Center(
                        child: Text(
                          'PENDAFTARAN',
                          textAlign: TextAlign.center,
                          style: TextStyle (
                            fontFamily: 'Montserrat', // Ganti dengan font yang diinginkan
                            fontSize: 16*ffem,
                            fontWeight: FontWeight.w800,
                            height: 1.2175*ffem/fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // bedasgodigital8qM (1:233)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                    width: 142*fem,
                    height: 37*fem,
                    child: Image.asset(
                      'assets/images/bedas.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
