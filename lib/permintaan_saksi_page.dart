import 'package:flutter/material.dart';
import 'package:jurnalku_projek/widgets/dashboard_app_bar.dart';

class PermintaanSaksiPage extends StatelessWidget {
  const PermintaanSaksiPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Data Dummy untuk contoh 3 item
    final List<Map<String, String>> dummyData = [
      {
        "pengirim": "Ahmad Rizky",
        "tanggal": "19 Nov 2025",
        "status": "Menunggu",
        "detail":
            "Mohon kesediaannya menjadi saksi atas kejadian bullying di kantin jam istirahat."
      },
      {
        "pengirim": "Siti Aminah",
        "tanggal": "18 Nov 2025",
        "status": "Diterima",
        "detail": "Saya butuh saksi untuk laporan kehilangan helm di parkiran."
      },
      {
        "pengirim": "Budi Santoso",
        "tanggal": "15 Nov 2025",
        "status": "Ditolak",
        "detail": "Saksi kejadian perkelahian di lapangan basket."
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const DashboardAppBar(titleText: "Permintaan Saksi"),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Permintaan Saksi",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF002147),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "Kelola permintaan menjadi saksi dari siswa lain",
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF757575),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                decoration: BoxDecoration(
                  color: const Color(0xFFE3F2FD),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  "Wednesday, 19 November 2025",
                  style: TextStyle(
                    color: Color(0xFF1565C0),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 25),

              // --- BAGIAN YANG DIUBAH ---
              Container(
                width: double.infinity,
                constraints: const BoxConstraints(
                    minHeight: 100), // Min height disesuaikan
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: const Color(0xFFE5E5E5)),
                ),
                child: Column(
                  children: [
                    // HEADER TABEL
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal:
                              16), // Tambah padding horizontal agar sejajar
                      decoration: const BoxDecoration(
                        color: Color(0xFFF7F7F7),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                        ),
                        border: Border(
                          bottom: BorderSide(color: Color(0xFFE0E0E0)),
                        ),
                      ),
                      child: Row(
                        children: const [
                          Expanded(
                            flex: 3,
                            child: Text(
                              "PENGIRIM",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Color(0xFF757575),
                                letterSpacing: 0.5,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              "TANGGAL",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Color(0xFF757575),
                                letterSpacing: 0.5,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Text(
                              "KONFIRMASI",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Color(0xFF757575),
                                letterSpacing: 0.5,
                              ),
                            ),
                          ),
                          // Spacer untuk kompensasi icon panah expansion tile
                          SizedBox(width: 24),
                        ],
                      ),
                    ),

                    // LIST ITEM (EXPANSION TILES)
                    Column(
                      children: dummyData.map((data) {
                        return Container(
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: Color(0xFFEEEEEE)),
                            ),
                          ),
                          child: Theme(
                            // Menghilangkan garis border default ExpansionTile
                            data: Theme.of(context)
                                .copyWith(dividerColor: Colors.transparent),
                            child: ExpansionTile(
                              tilePadding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 4),
                              title: Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Text(
                                      data['pengirim']!,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Color(0xFF002147),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Text(
                                      data['tanggal']!,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: Color(0xFF616161),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Center(
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 4),
                                        decoration: BoxDecoration(
                                          color:
                                              _getStatusColor(data['status']!)
                                                  .withOpacity(0.1),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Text(
                                          data['status']!,
                                          style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.bold,
                                            color: _getStatusColor(
                                                data['status']!),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              children: [
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(16, 0, 16, 16),
                                  width: double.infinity,
                                  color: Colors.white,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Divider(),
                                      const Text(
                                        "Detail Kejadian:",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Color(0xFF757575),
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        data['detail']!,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            color: Colors.black87),
                                      ),
                                      const SizedBox(height: 12),
                                      // Tombol Aksi (Hanya muncul jika status Menunggu)
                                      if (data['status'] == 'Menunggu')
                                        Row(
                                          children: [
                                            Expanded(
                                              child: OutlinedButton(
                                                onPressed: () {},
                                                style: OutlinedButton.styleFrom(
                                                  foregroundColor: Colors.red,
                                                  side: const BorderSide(
                                                      color: Colors.red),
                                                  padding: const EdgeInsets
                                                      .symmetric(vertical: 0),
                                                ),
                                                child: const Text("Tolak"),
                                              ),
                                            ),
                                            const SizedBox(width: 10),
                                            Expanded(
                                              child: ElevatedButton(
                                                onPressed: () {},
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      const Color(0xFF002147),
                                                  padding: const EdgeInsets
                                                      .symmetric(vertical: 0),
                                                ),
                                                child: const Text("Terima",
                                                    style: TextStyle(
                                                        color: Colors.white)),
                                              ),
                                            ),
                                          ],
                                        ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              // --- AKHIR BAGIAN YANG DIUBAH ---
            ],
          ),
        ),
      ),
    );
  }

  // Helper untuk warna status
  Color _getStatusColor(String status) {
    switch (status) {
      case 'Menunggu':
        return Colors.orange;
      case 'Diterima':
        return Colors.green;
      case 'Ditolak':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }
}
