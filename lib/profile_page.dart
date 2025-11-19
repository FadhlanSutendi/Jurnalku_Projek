import 'package:flutter/material.dart';
import 'package:jurnalku_projek/widgets/dashboard_app_bar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    const double profileRadius = 45;
    const double positionedBottom = -profileRadius;
    const double spacerHeight = profileRadius + 10;

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: DashboardAppBar(
        titleText: "Profile",
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Cover Image + Profile Picture
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 160,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: const AssetImage("assets/images/boxis.png"),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.2), BlendMode.darken),
                    ),
                  ),
                ),

                // Profile Picture
                Positioned(
                  bottom: positionedBottom,
                  left: 20,
                  child: CircleAvatar(
                    radius: profileRadius,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: profileRadius - 5, // 40
                      backgroundImage: const AssetImage(
                        "assets/images/orange_cat.png",
                      ),
                    ),
                  ),
                )
              ],
            ),

            SizedBox(height: spacerHeight),

            // Name + Details
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "M. Delvin Julian",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "12309719 | PPLG XII-5 | Cib 6",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.share),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.blue.shade800),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(10)),
                      shape: MaterialStateProperty.all(const CircleBorder()),
                    ),
                  )
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Tabs
            Container(
              height: 50,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Row(
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        "Overview",
                        style: TextStyle(
                          color: Color(0xFF0056D2),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        "Portfolio",
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        "Sertifikat",
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Portfolio Terbaru
            _sectionBox(
              title: "Portfolio Terbaru",
              icon: Icons.work,
              desc: "Portfolio akan ditampilkan di sini",
            ),

            // Sertifikat Terbaru
            _sectionBox(
              title: "Sertifikat Terbaru",
              icon: Icons.emoji_events,
              desc: "Sertifikat akan ditampilkan di sini",
            ),

            const SizedBox(height: 20),

            // Title: Dokumen
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Dokumen",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
            ),
            
            const SizedBox(height: 10),

            // =========================================
            //  BAGIAN BARU (Sesuai Gambar Referensi)
            // =========================================
            
            // 1. Card Curriculum Vitae
            _cvCard(),

            const SizedBox(height: 20),

            // 2. Card Media Sosial
            _socialMediaCard(),

            const SizedBox(height: 40), // Space bawah agar bisa scroll lebih jauh
          ],
        ),
      ),
    );
  }

  // --- Widget Helper Lama ---
  Widget _sectionBox({
    required String title,
    required IconData icon,
    required String desc,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                Text(
                  "Lihat Semua",
                  style: TextStyle(
                    color: Colors.blue.shade700,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),
          Icon(icon, size: 40, color: Colors.brown.shade400),
          const SizedBox(height: 10),
          Text(
            desc,
            style: const TextStyle(
              color: Colors.black54,
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  // --- Widget Helper Baru: CV Card ---
  Widget _cvCard() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Curriculum Vitae",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            "Dokumen CV siswa",
            style: TextStyle(
              color: Colors.black54,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: () {
                // Aksi lihat CV
              },
              icon: const Icon(Icons.file_copy_outlined, size: 18),
              label: const Text("Lihat CV"),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF003E8C), // Warna biru gelap sesuai gambar
                foregroundColor: Colors.white, // Warna text/icon putih
                padding: const EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                elevation: 0,
              ),
            ),
          )
        ],
      ),
    );
  }

  // --- Widget Helper Baru: Social Media Card ---
  Widget _socialMediaCard() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Media Sosial",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height: 12),
          const Divider(height: 1, color: Colors.black12), // Garis pemisah tipis
          
          // Item Instagram
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            leading: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.link, color: Colors.black54),
            ),
            title: const Text(
              "Instagram",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Text(
              "https://instagram.com/devaajul/",
              style: TextStyle(color: Colors.blue.shade700),
              overflow: TextOverflow.ellipsis, // Agar text tidak nabrak jika kepanjangan
            ),
            trailing: const Icon(Icons.open_in_new, size: 20, color: Colors.grey),
            onTap: () {
              // Aksi buka link
            },
          ),
        ],
      ),
    );
  }
}