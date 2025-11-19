import 'package:flutter/material.dart';
import 'package:jurnalku_projek/widgets/dashboard_app_bar.dart';

class PermintaanSaksiPage extends StatelessWidget {
  const PermintaanSaksiPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                  color: Color(0xFFE3F2FD),
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
              Container(
                width: double.infinity,
                constraints: const BoxConstraints(minHeight: 300),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Color(0xFFE5E5E5)),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 15),
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
                            child: Text(
                              "PENGIRIM",
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
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 60),
                      child: Column(
                        children: const [
                          Icon(
                            Icons.groups_rounded,
                            size: 60,
                            color: Color(0xFFBDBDBD),
                          ),
                          SizedBox(height: 16),
                          Text(
                            "Belum ada permintaan",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF002147),
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Belum ada yang mengirim permintaan saksi kepada Anda",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF9E9E9E),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
