import 'package:flutter/material.dart';
import 'package:jurnalku_projek/widgets/feature_box.dart';
import 'package:jurnalku_projek/widgets/dashboard_app_bar.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    const Color darkBlue = Color(0xFF0D47A1);

    return Scaffold(
      appBar: DashboardAppBar(
        titleText: "Dashboard",
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 320,
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
                    image: 'assets/icons/school.png',
                    title: "Dirancang Khusus",
                    description:
                        "Memenuhi kebutuhan spesifik sekolah kami dengan fokus pada kemajuan siswa.",
                  ),
                  FeatureBox(
                    image: 'assets/icons/student.png',
                    title: "Pemantauan Real-Time",
                    description:
                        "Lihat perkembangan dan kegiatan siswa secara langsung kapan saja dan di mana saja.",
                  ),
                  FeatureBox(
                    image: 'assets/icons/wisuda.png',
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
