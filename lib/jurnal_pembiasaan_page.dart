import 'package:flutter/material.dart';
import 'package:jurnalku_projek/widgets/dashboard_app_bar.dart';

class JurnalPembiasaanPage extends StatelessWidget {
  const JurnalPembiasaanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DashboardAppBar(titleText: "Jurnal Pembiasaan"),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          // TITLE
          const Text(
            "Jurnal Pembiasaan",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          const Text(
            "NOVEMBER - 2025",
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),

          const SizedBox(height: 16),

          // BUTTON BULAN SEBELUMNYA
          SizedBox(
            width: 160,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.symmetric(vertical: 10),
              ),
              child: const Text("Bulan Sebelumnya"),
            ),
          ),

          const SizedBox(height: 20),

          // A. PEMBIASAAN HARIAN
          const Text(
            "A. Pembiasaan harian",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),

          // LEGEND
          Row(
            children: [
              _buildLegend(Colors.green, "Sudah diisi"),
              const SizedBox(width: 12),
              _buildLegend(Colors.yellow, "Belum diisi"),
              const SizedBox(width: 12),
              _buildLegend(Colors.red, "Tidak diisi"),
            ],
          ),
          const SizedBox(height: 16),

          // KALENDER
          _buildCalendar(),

          const SizedBox(height: 28),

          // B. Pekerjaan
          const Text(
            "B. Pekerjaan yang dilakukan",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),

          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Column(
              children: [
                _buildTableHeader(["Pekerjaan", "Tgl", "Saksi"]),
                const ListTile(
                  title: Text("Belum ada pekerjaan yang diinput."),
                  dense: true,
                ),
                _buildAddButton("Tambah Pekerjaan"),
              ],
            ),
          ),

          const SizedBox(height: 28),

          // C. Materi yang dipelajari
          const Text(
            "C. Materi yang dipelajari",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),

          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Column(
              children: [
                _buildTableHeader(["Materi", "Sts", "Tgl"]),
                const ListTile(
                  title: Text("Belum ada materi yang diinput."),
                  dense: true,
                ),
                _buildAddButton("Tambah Materi"),
              ],
            ),
          ),
          // LEGEND APPROVED / PENDING / REVISI
          const SizedBox(height: 10),
          Row(
            children: [
              _buildLegend(Colors.green, "A : Approved"),
              const SizedBox(width: 20),
              _buildLegend(Colors.orange, "P : Pending"),
              const SizedBox(width: 20),
              _buildLegend(Colors.red, "R : Revisi"),
            ],
          ),

          const SizedBox(height: 28),

          // D. Poin
          const Text(
            "D. Poin",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),

          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Column(
              children: [
                // Header
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  color: Colors.blue.shade50,
                  child: Row(
                    children: const [
                      Expanded(
                        child: Text(
                          "Kategori Poin",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        child: Text(
                          "Jumlah Poin",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),

                // Sub header M1 - M4
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  color: Colors.grey.shade100,
                  child: Row(
                    children: const [
                      Expanded(child: SizedBox()),
                      SizedBox(
                        width: 150,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("M1"),
                            Text("M2"),
                            Text("M3"),
                            Text("M4"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                // Row 1
                _buildPoinRow(
                  "(5) mengerjakan project/adanya update progress belajar",
                ),

                // Row 2
                _buildPoinRow(
                  "(1 - 5) poin dari pertanyaan atau laporan pengetahuan materi",
                ),

                // Row 3
                _buildPoinRow(
                  "Jumlah poin minggu ini",
                ),

                // Row 4 (special, cuma 1 kolom poin)
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                  decoration: BoxDecoration(
                    border:
                        Border(top: BorderSide(color: Colors.grey.shade300)),
                  ),
                  child: Row(
                    children: const [
                      Expanded(
                        child: Text("Jumlah poin ceklist pembiasaan"),
                      ),
                      SizedBox(
                        width: 150,
                        child: Center(child: Text("0")),
                      ),
                    ],
                  ),
                ),

                // Row 5 total keseluruhan
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                  decoration: BoxDecoration(
                    border:
                        Border(top: BorderSide(color: Colors.grey.shade300)),
                  ),
                  child: Row(
                    children: const [
                      Expanded(
                        child: Text("Jumlah keseluruhan poin"),
                      ),
                      SizedBox(
                        width: 150,
                        child: Center(child: Text("0")),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 40),
        ],
      ),
    );
  }

  // LEGEND ITEM
  Widget _buildLegend(Color color, String text) {
    return Row(
      children: [
        CircleAvatar(radius: 6, backgroundColor: color),
        const SizedBox(width: 6),
        Text(text),
      ],
    );
  }

  Widget _buildPoinRow(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: Colors.grey.shade300)),
      ),
      child: Row(
        children: [
          Expanded(child: Text(text)),
          SizedBox(
            width: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("0"),
                Text("0"),
                Text("0"),
                Text("0"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // KALENDER GRID
  Widget _buildCalendar() {
    List<String> days = [
      "03",
      "04",
      "05",
      "06",
      "07",
      "10",
      "11",
      "12",
      "13",
      "14",
      "17",
      "18",
      "19",
      "20",
      "21",
      "24",
      "25",
      "26",
      "27",
      "28",
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: days.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 1.2,
      ),
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(6),
          ),
          alignment: Alignment.center,
          child: Text(
            days[index],
            style: const TextStyle(fontSize: 14),
          ),
        );
      },
    );
  }

  // TABEL HEADER
  Widget _buildTableHeader(List<String> titles) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      color: Colors.blue.shade50,
      child: Row(
        children: [
          Expanded(
              child: Text(titles[0],
                  style: const TextStyle(fontWeight: FontWeight.bold))),
          SizedBox(
              width: 70,
              child: Text(titles[1],
                  style: const TextStyle(fontWeight: FontWeight.bold))),
          SizedBox(
              width: 70,
              child: Text(titles[2],
                  style: const TextStyle(fontWeight: FontWeight.bold))),
        ],
      ),
    );
  }

  // BUTTON TAMBAH
  Widget _buildAddButton(String text) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(left: 12, bottom: 12),
      child: Text(
        "+ $text",
        style: const TextStyle(color: Colors.blue),
      ),
    );
  }
}
