import 'package:flutter/material.dart';
import 'package:udaskului/profil_sekolah.dart';

class DetailProvinsi extends StatefulWidget {
  const DetailProvinsi({super.key});

  @override
  State<DetailProvinsi> createState() => _DetailProvinsiState();
}

class _DetailProvinsiState extends State<DetailProvinsi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(16, 48, 16, 16),
            decoration: const BoxDecoration(
              color: Color(0xFF3267E3),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  hintText: 'cari sekolahmu disini',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Daftar Sekolah',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Sekolahmu di provinsi mana?',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilSekolah()),
              );
            },
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: ListTile(
                  leading: Image.asset('assets/sekolah2.png'),
                  title: Text(
                    'Provinsi D.K.I JAKARTA',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              // Navigasi ke halaman baru
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailProvinsi()),
              );
            },
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: ListTile(
                  leading: Image.asset('assets/sekolah2.png'),
                  title: Text(
                    'Provinsi Kepulauan Riau',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              // Navigasi ke halaman baru
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailProvinsi()),
              );
            },
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: ListTile(
                  leading: Image.asset('assets/sekolah2.png'),
                  title: Text(
                    'Provinsi Sumatera Barat',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
