import 'package:flutter/material.dart';
import 'package:jurnalku_projek/dashboard_page.dart';

class ExplorePage extends StatefulWidget {
  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  bool showFilter = false;
  String searchQuery = "";

  String selectedRombel = "Semua Rombel";
  String selectedRayon = "Semua Rayon";
  String selectedJurusan = "Semua Jurusan";

  final List<String> rombelList = [
    "Semua Rombel",
    "PPLG X-1",
    "PPLG X-2",
    "PPLG X-3",
    "PPLG XII-4",
    "DKV XI-2",
    "TJKT X-1"
  ];

  final List<String> rayonList = [
    "Semua Rayon",
    "Ciawi 1",
    "Cicurug 2",
    "Cibedug 3"
  ];

  final List<String> jurusanList = [
    "Semua Jurusan",
    "PPLG",
    "DKV",
    "TJKT"
  ];

  final List<Map<String, dynamic>> students = [
    {
      "name": "Abdee Munzie",
      "major": "PPLG X-3",
      "certificate": "8 sertifikat",
      "portfolio": "12 portfolio",
      "photo": "assets/images/profile.jpg"
    },
    {
      "name": "Abdul Hadi",
      "major": "PPLG XII-4",
      "certificate": "14 sertifikat",
      "portfolio": "22 portfolio",
      "photo": "assets/images/profile.jpg"
    },
    {
      "name": "Arga R.",
      "major": "DKV XI-2",
      "certificate": "5 sertifikat",
      "portfolio": "9 portfolio",
      "photo": "assets/images/profile.jpg"
    },
    {
      "name": "Dina Salsabila",
      "major": "TJKT X-1",
      "certificate": "7 sertifikat",
      "portfolio": "10 portfolio",
      "photo": "assets/images/profile.jpg"
    },
  ];

  List<Map<String, dynamic>> get filteredStudents {
    return students.where((s) {
      final matchesSearch = s["name"]
          .toString()
          .toLowerCase()
          .contains(searchQuery.toLowerCase());
      final matchesRombel = selectedRombel == "Semua Rombel" ||
          s["major"].toString().contains(selectedRombel.split(" ")[0]);
      final matchesJurusan = selectedJurusan == "Semua Jurusan" ||
          s["major"].toString().contains(selectedJurusan);
      return matchesSearch && matchesRombel && matchesJurusan;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Column(
        children: [


Container(
  height: 60,
  padding: EdgeInsets.symmetric(horizontal: 16),
  color: Colors.white,
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      InkWell(
        onTap: () {
          // Arahkan ke halaman lain (atau halaman sama)
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DashboardPage()),
          );
        },
        child: Row(
          children: [
            Icon(Icons.menu_book_rounded, color: Colors.blue[900], size: 28),
            SizedBox(width: 8),
            Text(
              "Jurnalku",
              style: TextStyle(
                color: Colors.blue[900],
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),

      InkWell(
        onTap: () {
          // Bisa arahkan ke halaman dashboardmu
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DashboardPage()),
          );
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.blue[900],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            "Dashboard",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      )
    ],
  ),
),


          Stack(
            children: [
              Container(
                height: 220, // header lebih tinggi
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/1 login.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                height: 220,
                width: double.infinity,
                color: Colors.black.withOpacity(0.55),
              ),
              Positioned(
                bottom: 10,
                left: 20,
                right: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Direktori Siswa",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      "Temukan dan jelajahi profil siswa SMK Wikrama Bogor",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.9),
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 12),
                    // SEARCH BAR
                    TextField(
                      onChanged: (v) => setState(() => searchQuery = v),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Cari nama siswa...",
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    // FILTER TOGGLE
                    InkWell(
                      onTap: () => setState(() => showFilter = !showFilter),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.grey.shade300),
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.filter_list, size: 18),
                            SizedBox(width: 6),
                            Text("Filter Lanjutan"),
                            Icon(showFilter
                                ? Icons.keyboard_arrow_up
                                : Icons.keyboard_arrow_down),
                          ],
                        ),
                      ),
                    ),
                    AnimatedSwitcher(
                      duration: Duration(milliseconds: 200),
                      child: showFilter
                          ? Column(
                              key: ValueKey(true),
                              children: [
                                SizedBox(height: 12),
                                dropdownBox(
                                  title: "Rombel",
                                  value: selectedRombel,
                                  items: rombelList,
                                  onChanged: (v) =>
                                      setState(() => selectedRombel = v!),
                                ),
                                SizedBox(height: 8),
                                dropdownBox(
                                  title: "Jurusan",
                                  value: selectedJurusan,
                                  items: jurusanList,
                                  onChanged: (v) =>
                                      setState(() => selectedJurusan = v!),
                                ),
                              ],
                            )
                          : SizedBox.shrink(),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: GridView.builder(
                itemCount: filteredStudents.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 0.65, // card lebih pendek
                ),
                itemBuilder: (context, index) {
                  return StudentExploreCard(data: filteredStudents[index]);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget dropdownBox({
    required String title,
    required String value,
    required List<String> items,
    required Function(String?) onChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 6),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: DropdownButton<String>(
            value: value,
            isExpanded: true,
            underline: SizedBox(),
            items: items
                .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                .toList(),
            onChanged: onChanged,
          ),
        )
      ],
    );
  }
}

class StudentExploreCard extends StatelessWidget {
  final Map<String, dynamic> data;

  const StudentExploreCard({required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.blueAccent, width: 2),
              image: DecorationImage(
                image: NetworkImage(data["photo"]),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            data["name"],
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(height: 4),
          Text(
            data["major"],
            style: TextStyle(color: Colors.grey[600], fontSize: 13),
          ),
          SizedBox(height: 8),
          // SERTIFIKAT & PORTFOLIO (portfolio dibawah)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.workspace_premium, size: 16, color: Colors.orange),
              SizedBox(width: 4),
              Text(data["certificate"], style: TextStyle(fontSize: 13)),
            ],
          ),
          SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.folder, size: 16, color: Colors.blue),
              SizedBox(width: 4),
              Text(data["portfolio"], style: TextStyle(fontSize: 13)),
            ],
          ),
        ],
      ),
    );
  }
}
