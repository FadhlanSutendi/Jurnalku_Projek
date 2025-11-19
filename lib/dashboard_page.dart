import 'package:flutter/material.dart';
import 'package:jurnalku_projek/widgets/feature_box.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    const Color darkBlue = Color(0xFF0D47A1);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.home_outlined),
          onPressed: () {},
        ),
        actions: [
          PopupMenuButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            offset: const Offset(-25, 50),
            itemBuilder: (context) => [
              // ... (Kode PopupMenuItem Anda tetap sama) ...
              PopupMenuItem(
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '');
                  },
                  child: const Row(
                    children: [
                      Icon(Icons.home_outlined),
                      SizedBox(width: 10),
                      Text("Dashboard"),
                    ],
                  ),
                ),
              ),
              PopupMenuItem(
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '');
                  },
                  child: const Row(
                    children: [
                      Icon(Icons.person_outline),
                      SizedBox(width: 10),
                      Text("Profil"),
                    ],
                  ),
                ),
              ),
              PopupMenuItem(
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '');
                  },
                  child: const Row(
                    children: [
                      Icon(Icons.explore_outlined),
                      SizedBox(width: 10),
                      Text("Jelajahi"),
                    ],
                  ),
                ),
              ),
              PopupMenuItem(
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '');
                  },
                  child: const Row(
                    children: [
                      Icon(Icons.book),
                      SizedBox(width: 10),
                      Text("Jurnal Pembiasaan"),
                    ],
                  ),
                ),
              ),
              PopupMenuItem(
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '');
                  },
                  child: const Row(
                    children: [
                      Icon(Icons.person_rounded),
                      SizedBox(width: 10),
                      Text("Permintaan Saksi"),
                    ],
                  ),
                ),
              ),
              PopupMenuItem(
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '');
                  },
                  child: const Row(
                    children: [
                      Icon(Icons.stacked_bar_chart_outlined),
                      SizedBox(width: 10),
                      Text("Progress"),
                    ],
                  ),
                ),
              ),
              PopupMenuItem(
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '');
                  },
                  child: const Row(
                    children: [
                      Icon(Icons.warning),
                      SizedBox(width: 10),
                      Text("Catatan Sikap"),
                    ],
                  ),
                ),
              ),
              PopupMenuItem(
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '');
                  },
                  child: const Row(
                    children: [
                      Icon(Icons.menu_book_outlined),
                      SizedBox(width: 10),
                      Text("Panduan Penggunaan"),
                    ],
                  ),
                ),
              ),
              PopupMenuItem(
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '');
                  },
                  child: const Row(
                    children: [
                      Icon(Icons.settings_outlined),
                      SizedBox(width: 10),
                      Text("Pengaturan Akun"),
                    ],
                  ),
                ),
              ),
              PopupMenuItem(
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '');
                  },
                  child: const Row(
                    children: [
                      Icon(Icons.logout),
                      SizedBox(width: 10),
                      Text("Logout"),
                    ],
                  ),
                ),
              ),
            ],
            child: const Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "M. Delvin Julian",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "PPLG XII-5",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 15),
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("Assets/Images/1 login.jpg"),
                ),
                SizedBox(width: 15),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 1. Container Biru Latar Belakang
            Container(
              height: 320, // Tinggi dikembalikan ke 320
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("Assets/Images/backgorund_dashboard.png"),
                  fit: BoxFit.fill,
                ),
              ),
              child: const Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Selamat Datang di Jurnalku",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      "Solusi cerdas untuk memantau perkembangan kompetensi siswa secara efektif",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: Container(
                height: 220,
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: darkBlue,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Apa itu Jurnalku?",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Jurnalku adalah aplikasi cerdas yang membantu guru dan siswa dalam memantau dan mengelola kompetensi keahlian siswa secara efektif, terstruktur, dan real-time. Dengan fitur lengkap, proses pemantauan menjadi lebih mudah dan transparan.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  FeatureBox(
                    icon: Icons.account_balance,
                    title: "Dirancang Khusus",
                    description:
                        "Memenuhi kebutuhan spesifik sekolah kami dengan fokus pada kemajuan siswa.",
                  ),

                  // Kotak Fitur Kedua
                  FeatureBox(
                    icon: Icons.timer,
                    title: "Pemantauan Real-Time",
                    description:
                        "Lihat perkembangan dan kegiatan siswa secara langsung kapan saja dan di mana saja.",
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
