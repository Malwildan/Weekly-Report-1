import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas1/screen/auth/daftar.dart';
import 'package:tugas1/screen/homepage.dart';

class Masuk extends StatefulWidget {
  const Masuk({super.key});

  @override
  State<Masuk> createState() => _DaftarState();
}

class _DaftarState extends State<Masuk> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _katasandiController = TextEditingController();
  bool katasandi = true;
  bool kkatasandi = true;

  @override
  void dispose() {
    _usernameController.dispose();
    _katasandiController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  children: [
                    Text(
                      'Masuk',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      'Selamat Datang Kembali!',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 42),
                Image.asset('assets/logo.png', height: 120,),
                SizedBox(height: 42),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
            
                    Text('Username', style: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w400),),
                    SizedBox(height: 12,),
                    TextFormField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                        hintText: "Supernova",
                        hintStyle: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w400, color: Color.fromARGB(255, 48, 93, 124)),
                        filled: true,
                        fillColor: Color.fromARGB(255, 238, 246, 252),
                    
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Color.fromARGB(255, 37, 71, 95)),
                        ),  
                    
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Color.fromARGB(255, 37, 71, 95)),
                        ),
                      ),
                    ),
            
                    SizedBox(height: 24,),
            
            
                    Text('Kata Sandi', style: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w400),),
                    SizedBox(height: 12,),
                    TextFormField(
                      obscureText: kkatasandi,
                      controller: _katasandiController,
                      decoration: InputDecoration(
                        hintText: kkatasandi ? "********" : "Halofilkom123",
                        hintStyle: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w400, color: Color.fromARGB(255, 48, 93, 124)),
                        filled: true,
                        fillColor: Color.fromARGB(255, 238, 246, 252),
                    
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Color.fromARGB(255, 37, 71, 95)),
                        ),  
                    
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Color.fromARGB(255, 37, 71, 95)),
                        ),
            
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                kkatasandi = !kkatasandi;
                              });
                            },
                            icon: Icon(kkatasandi ? Icons.visibility : Icons.visibility_off, color: Color.fromARGB(255, 229, 158, 74),),
                                              
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 12,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Lupa password?', style: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w400, color: Color.fromARGB(255, 48, 93, 124)),),
                      ],
                    ),
            
                    SizedBox(height: 42,),
            
                    Column(
                      children: [
                        ElevatedButton(onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homepage()));
                        }, style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 37, 71, 95),
                          minimumSize: Size(double.infinity, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          elevation: 0,
                        ), child:  Text('Masuk', style: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white),),),
                        SizedBox(height: 12,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Belum punya akun? ', style: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w400, color: Color.fromARGB(255, 48, 93, 124)),),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Daftar()));
                              },
                              child: Text('Daftar', style: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w700, color: Color.fromARGB(255, 37, 71, 95)),),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
