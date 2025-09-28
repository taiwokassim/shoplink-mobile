import 'package:flutter/material.dart';

void main() {
  runApp(const ShoplinkApp());
}

class ShoplinkApp extends StatelessWidget {
  const ShoplinkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Shoplink Softwares",
      theme: ThemeData(
        primaryColor: const Color(0xFF004080),
        scaffoldBackgroundColor: const Color(0xFFF4F4F9),
      ),
      debugShowCheckedModeBanner: false,
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    HomeSection(),
    AboutSection(),
    ServicesSection(),
    ContactSection(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shoplink Softwares"),
        backgroundColor: const Color(0xFF004080),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: const Color(0xFF00CCFF),
        unselectedItemColor: Colors.white70,
        backgroundColor: const Color(0xFF003366),
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: "About",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: "Services",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            label: "Contact",
          ),
        ],
      ),
    );
  }
}

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: const [
          SizedBox(height: 20),
          Text(
            "Welcome to Shoplink Softwares",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFF004080),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Text(
            "At Shoplink Softwares, we specialize in cutting-edge solutions across Web2, Web3, "
            "game development, cartoon animations, and computer hardware. Our mission is to "
            "combine creativity with technology to deliver impactful results for individuals "
            "and businesses.",
            style: TextStyle(fontSize: 16, height: 1.6),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(height: 20),
          Text(
            "About Us",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFF004080),
            ),
          ),
          SizedBox(height: 20),
          Text("Registered Name: Shoplink Softwares"),
          Text("Business Registration No: BN 3713930"),
          Text("Date of Registration: 25th July, 2022"),
          Text("Nature of Business: Programming and Software Development Services"),
          SizedBox(height: 20),
          Text(
            "Shoplink Softwares is officially registered with the Corporate Affairs Commission (CAC) "
            "under the Companies and Allied Matters Act 2020. We bring together years of experience in "
            "software engineering, blockchain, gaming, animation, and hardware systems to provide "
            "world-class services.",
            style: TextStyle(fontSize: 16, height: 1.6),
          ),
        ],
      ),
    );
  }
}

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  final List<Map<String, String>> services = const [
    {
      "title": "Web2 Development",
      "desc": "High-quality web applications using modern tools and frameworks.",
    },
    {
      "title": "Web3 Solutions",
      "desc": "Blockchain-based dApps, token development, and smart contract services.",
    },
    {
      "title": "Game Development",
      "desc": "Engaging 2D/3D games designed with creativity and interactivity in mind.",
    },
    {
      "title": "Cartoon Animations",
      "desc": "Custom animations for branding, entertainment, and storytelling.",
    },
    {
      "title": "Computer Hardware",
      "desc": "Hardware maintenance, repairs, and system optimization services.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(20),
      itemCount: services.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 4,
          margin: const EdgeInsets.symmetric(vertical: 10),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: ListTile(
            title: Text(
              services[index]["title"]!,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF004080),
              ),
            ),
            subtitle: Text(services[index]["desc"]!),
          ),
        );
      },
    );
  }
}

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(height: 20),
          Text(
            "Contact Us",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFF004080),
            ),
          ),
          SizedBox(height: 20),
          Text("Address: No 107 Equitable Estate, Igbe Road, Lagos State"),
          SizedBox(height: 10),
          Text("Telegram: @taiwo_kassim"),
          SizedBox(height: 10),
          Text("Phone: +234 7086567812"),
          SizedBox(height: 40),
          Center(
            child: Text(
              "© 2025 Shoplink Softwares\nBN 3713930",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black54),
            ),
          )
        ],
      ),
    );
  }
}
