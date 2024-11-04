import 'package:flutter/material.dart';
import 'identitas_sekolah.dart';

class ProfilSekolah extends StatefulWidget {
  const ProfilSekolah({super.key});

  @override
  State<ProfilSekolah> createState() => _ProfilSekolahState();
}

class _ProfilSekolahState extends State<ProfilSekolah> {
  final List<Map<String, String>> items = [
    {'image': 'assets/ref.png', 'title': 'Profil Sekolah'},
    {'image': 'assets/ref(1).png', 'title': 'E-Commerce'},
    {'image': 'assets/ref(2).png', 'title': 'Lowongan'},
    {'image': 'assets/ref(3).png', 'title': 'PPDB'},
    {'image': 'assets/ref(4).png', 'title': 'E-Commerce'},
    {'image': 'assets/ref(5).png', 'title': 'Lowongan'},
    {'image': 'assets/ref(6).png', 'title': 'PPDB'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Profil Sekolah',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF3267E3),
      ),
      body: ListView(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              // School Background Image
              Image.asset(
                'assets/profil sekolah.png',
                width: double.infinity,
                height: 250, // Mengurangi tinggi gambar agar lebih pendek
                fit: BoxFit.cover,
              ),
              // Positioned School Name and Logo
              Positioned(
                left: 16,
                bottom: -30,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end, // Memastikan teks sejajar dengan bagian bawah
                  children: [
                    Image.asset(
                      'assets/sekolahlogo1.png',
                      width: 100,
                      height: 100,
                    ),
                    const SizedBox(width: 8), // Jarak antara gambar dan teks
                    const Align(
                      alignment: Alignment.bottomLeft, // Menjaga teks di bagian bawah
                      child: Text(
                        'SMK N 1 JAKARTA',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black87,
                          shadows: [
                            Shadow(
                              offset: Offset(1, 1),
                              blurRadius: 2,
                              color: Colors.black45,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
          const SizedBox(height: 60), // Ruang kosong setelah Stack
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2, // Mengatur jumlah kolom menjadi 2
              mainAxisSpacing: 8, // Jarak vertikal antar grid item
              crossAxisSpacing: 8, // Jarak horizontal antar grid item
              childAspectRatio: 1.2, // Rasio aspek untuk grid item
              children: List.generate(items.length, (index) {
                return GestureDetector(
                  onTap: () {
                    switch (items[index]['title']) {
                      case 'Profil Sekolah':
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const IdentitasSekolah(),
                          ),
                        );
                        break;
                    }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          items[index]['image']!,
                          width: 50, // Perkecil ukuran gambar di grid item
                          height: 50,
                        ),
                        const SizedBox(height: 6),
                        Text(
                          items[index]['title']!,
                          style: const TextStyle(
                            fontSize: 14, // Ukuran font teks pada grid item
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
