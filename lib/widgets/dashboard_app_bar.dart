import 'package:flutter/material.dart';
import 'package:jurnalku_projek/dashboard_page.dart';
import 'package:jurnalku_projek/explore_page.dart';
import 'package:jurnalku_projek/profile_page.dart';
import 'package:jurnalku_projek/panduan_pengguna_page.dart';

class DashboardAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String titleText;

  const DashboardAppBar({
    super.key,
    required this.titleText,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          const Icon(Icons.home_outlined),
          const SizedBox(width: 6),
          Text(
            "> $titleText",
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      actions: [
        PopupMenuButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          offset: const Offset(-25, 50),
          itemBuilder: (context) => [
            PopupMenuItem(
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DashboardPage()),
                  );
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePage()),
                  );
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ExplorePage()),
                  );
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PanduanPage()),
                  );
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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
