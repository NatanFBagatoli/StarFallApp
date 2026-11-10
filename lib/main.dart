import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'pages/login.dart';
import 'pages/register.dart';
import 'pages/home.dart';
import 'pages/challenges.dart';
import 'pages/quests.dart';
import 'pages/status.dart';
import 'pages/profile.dart';
import 'assets/colors.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  await Supabase.initialize(
    url: dotenv.env['SUPABASE_URL']!,
    publishableKey: dotenv.env['SUPABASE_PUBLISHABLE_KEY']!,
  );
  runApp(const StarFallApp());
}

class StarFallApp extends StatelessWidget {
  const StarFallApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'STAR:FALL',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.transparent,
        colorScheme: const ColorScheme.dark(
          primary: AppColors.primary,
          secondary: AppColors.shadow,
          surface: AppColors.surface,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: AppColors.surface,
          selectedItemColor: AppColors.primary,
          unselectedItemColor: AppColors.textMuted,
        ),
      ),
      home: const LoginPage(),
      routes: {
        '/home': (context) => const Navbar(),
        '/register': (context) => const RegisterPage(),
      },
    );
  }
}

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _index = 0;

  final _titles = const ['Home', 'Chall', 'Quest', 'Status', 'Profile'];

  final _pages = const [
    HomePage(),
    ChallengesPage(),
    QuestsPage(),
    StatusPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titles[_index]),
        backgroundColor: const Color(0xFF12121F),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () => setState(() => _index = 4),
          ),
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'lib/assets/images/wallpaperstarfall.png',
            fit: BoxFit.cover,
          ),
          _pages[_index],
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _index,
        onTap: (i) => setState(() => _index = i),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.flag), label: 'Chall'),
          BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Quest'),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'Status'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
