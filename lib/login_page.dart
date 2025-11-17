import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text("Jelajahi siswa"),
        icon: const Icon(Icons.explore),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: Image.asset(
                "assets/images/1 login.jpg",
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Masuk untuk memulai Jurnalku",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 15),
                  const Text("Username atau NIS"),
                  const SizedBox(height: 5),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Masukkan username atau NIS",
                      filled: true,
                      fillColor: Colors.grey.shade100,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text("Password"),
                  const SizedBox(height: 5),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Masukkan password",
                      suffixIcon: const Icon(Icons.visibility),
                      filled: true,
                      fillColor: Colors.grey.shade100,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(14),
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Masuk",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Center(
                    child: Text(
                      "Lupa password? Hubungi guru laboran.",
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),

            // ======================================
            // JUDUL FITUR
            // ======================================
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Menyatukan Upaya untuk Kemajuan Siswa",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Jurnalku adalah aplikasi cerdas yang membantu guru dan siswa "
                "dalam memantau dan mengelola kompetensi keahlian siswa secara efektif.",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey.shade700,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // ======================================
            // FITUR FITUR (OUTLINE CARD)
            // ======================================
            _buildFeature(
              icon: Icons.school,
              bgColor: Colors.yellow.shade100,
              title: "Dirancang untuk Sekolah Kami",
              description:
                  "Dikembangkan khusus untuk memenuhi kebutuhan sekolah kami dengan fokus pada kemajuan siswa kami.",
            ),
            _buildFeature(
              icon: Icons.grid_view_rounded,
              bgColor: Colors.purple.shade100,
              title: "Pemantauan yang Terstruktur",
              description:
                  "Memudahkan guru dalam menyusun dan memantau daftar kompetensi keahlian yang harus dikuasai siswa.",
            ),
            _buildFeature(
              icon: Icons.auto_graph_rounded,
              bgColor: Colors.blue.shade100,
              title: "Fitur Praktis dan Bermanfaat",
              description:
                  "Termasuk reminder otomatis, grafik perkembangan, dan analisis mendalam untuk efektivitas belajar.",
            ),
            _buildFeature(
              icon: Icons.assignment_turned_in_rounded,
              bgColor: Colors.orange.shade100,
              title: "Pengajuan Kompetensi oleh Siswa",
              description:
                  "Siswa dapat mengajukan kompetensi yang telah dikuasai untuk diverifikasi guru.",
            ),
            _buildFeature(
              icon: Icons.verified_rounded,
              bgColor: Colors.green.shade100,
              title: "Validasi dan Tanda Tangan Guru",
              description:
                  "Kompetensi yang disetujui akan diberikan tanda terima dan tanda tangan guru sebagai bukti.",
            ),
            _buildFeature(
              icon: Icons.monitor_heart_rounded,
              bgColor: Colors.pink.shade100,
              title: "Pantauan Real-Time dan Transparan",
              description:
                  "Monitoring langsung yang menciptakan lingkungan belajar efisien.",
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  // =========================================================
  // CARD OUTLINE MIRIP DESAIN SCREENSHOT
  // =========================================================
  Widget _buildFeature({
    required IconData icon,
    required Color bgColor,
    required String title,
    required String description,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: const Color(0xFFE5E7EB), // abu-abu soft outline
          width: 1.3,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ICON DALAM KOTAK PASTEL
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, size: 30),
          ),

          const SizedBox(width: 15),

          // TEKS
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey.shade700,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
