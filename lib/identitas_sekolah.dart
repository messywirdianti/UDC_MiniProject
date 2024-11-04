import 'package:flutter/material.dart';

class IdentitasSekolah extends StatefulWidget {
  const IdentitasSekolah({super.key});

  @override
  State<IdentitasSekolah> createState() => _IdentitasSekolahState();
}

class _IdentitasSekolahState extends State<IdentitasSekolah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Identitas Sekolah',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: const Color(0xFF3267E3),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                'Nama Sekolah :',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                'SMK Negeri 1 Jakarta',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                'NPSN :',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                '20100143',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                'NSS :',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                '321016002004',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                'NIS :',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                '40056',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                'Alamat Sekolah :',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                'Jl. Budi Utomo No. 7 RT.004 RW.008, Kel. Pasar Baru Kec. Sawah Besar Jakarta Pusat Provinsi Daerah Khusus Ibukota Jakarta 10710',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                'Telpon / Fax : 021-3813630 / (021) 350 4091',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                'Email : smkn1jakarta@gmail.com',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                'Website : smkn1jakarta.sch.id',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                'Facebook : smkn1jakarta',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                'Twitter : smkn1jakarta',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                'Youtube : smkn1jakarta',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                'Instagram : smkn1jakarta',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
