import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// void main() {
  // runApp(const RegisterScreen());
// }

// Widget Placeholder untuk Menu di Drawer
class MenuTile extends StatelessWidget {
  final String title;
  const MenuTile({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
      onTap: (){
        // Logika Navigasi Menu
      },
    );
  }
}


class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const RegisterPage();
  }
}

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool obscureTextPassword = true;
  bool obscureTextConfirm = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // endDrawer adalah properti Scaffold
      endDrawer: Drawer(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              const MenuTile(title: 'Beranda'),
              const MenuTile(title: 'Tentang Kami'),
              const MenuTile(title: 'Program Studi'),
              const MenuTile(title: 'Akreditasi'),
              const MenuTile(title: 'Berita'),
              const MenuTile(title: 'Download'),
            ],
          ),
        ),
      ),

      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.grey,
        elevation: 4,
        automaticallyImplyLeading: false,

        leading: Padding(
          padding: const EdgeInsets.all(12),
          child: Image.asset('assets/images/Logo-USM.png'),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset('assets/images/ftik_usm_jaya.png', width: 150, height: 150),
              const SizedBox(height: 20.0),

              Container(
                alignment: Alignment.center,
                child: Text(
                  'REGISTER',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
              const SizedBox(height: 16),

              const TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Email',
                  focusedBorder: OutlineInputBorder(),
                  border: OutlineInputBorder(),
                  isDense: true,
                ),
              ),
              const SizedBox(height: 16),

              TextField(
                obscureText: obscureTextPassword,
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: const OutlineInputBorder(),
                  focusedBorder: const OutlineInputBorder(),
                  isDense: true,
                  suffixIcon: IconButton(
                    icon: Icon(
                      obscureTextPassword ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        obscureTextPassword = !obscureTextPassword;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Konfirmasi Password
              TextField(
                obscureText: obscureTextConfirm,
                decoration: InputDecoration(
                  hintText: 'Konfirmasi Password',
                  border: const OutlineInputBorder(),
                  focusedBorder: const OutlineInputBorder(),
                  isDense: true,
                  suffixIcon: IconButton(
                    icon: Icon(
                      obscureTextConfirm ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        obscureTextConfirm = !obscureTextConfirm;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // Tombol DAFTAR (ElevatedButton)
              ElevatedButton(
                onPressed: () {
                  // Logika pendaftaran
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFE84218),
                  padding: const EdgeInsets.all(8.0),
                ),
                child: const Text(
                  'DAFTAR',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Separator 'Atau'
              Row(
                children: const[
                  Expanded(child: Divider(thickness: 1, color: Colors.black)),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text('Atau daftar dengan', style: TextStyle(color: Colors.black)),
                  ),
                  Expanded(child: Divider(thickness: 1, color: Colors.black)),
                ],
              ),
              const SizedBox(height: 16),

              // Tombol Sosial Media
              OutlinedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: Colors.black),
                ),
                icon: const FaIcon(
                  FontAwesomeIcons.google,
                  color: Colors.grey,
                ),
                label: Text(
                  'Daftar dengan google',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              OutlinedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: Colors.black),
                ),
                icon: const FaIcon(
                  FontAwesomeIcons.facebook,
                  color: Colors.blue,
                ),
                label: Text(
                  'Daftar dengan facebook',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              const SizedBox(
                width: 16,
              ),

              // Teks 'Sudah punya akun?'
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Sudah punya akun?'),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: const Text(
                      'Masuk di sini',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFE84218),
                      ),
                    ),
                  ),
                ],
              ),

              // Teks Persetujuan
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Divider(
                    color: Colors.black
                ),
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Dengan melakukan daftar, Anda setuju dengan ',
                  style: Theme.of(context).textTheme.bodyLarge,
                  children: const [
                    TextSpan(
                      text: 'syarat & ketentuan FTIK USM',
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Fungsi untuk membuat tombol sosial media
Widget _buildSocialButton({
  required IconData icon,
  required String text,
  required Color color,
  required VoidCallback onPressed,
}) {
  return OutlinedButton(
    onPressed: onPressed,
    style: OutlinedButton.styleFrom(
      padding: const EdgeInsets.symmetric(vertical: 16),
      side: BorderSide(color: color, width: 1.5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(icon, color: color, size: 20,),
        const SizedBox(width: 12),
        Text(
          text,
          style: TextStyle(fontSize: 16, color: color, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}

