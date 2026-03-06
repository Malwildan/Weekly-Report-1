import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas1/screen/auth/masuk.dart';

class Daftar extends StatefulWidget {
  const Daftar({super.key});

  @override
  State<Daftar> createState() => _DaftarState();
}

class _DaftarState extends State<Daftar> {
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _nohpController = TextEditingController();
  final TextEditingController _katasandiController = TextEditingController();
  final TextEditingController _konfirmasiKatasandiController = TextEditingController();
  bool katasandi = true;
  bool kkatasandi = true;

  @override
  void dispose() {
    _namaController.dispose();
    _usernameController.dispose();
    _nohpController.dispose();
    _katasandiController.dispose();
    _konfirmasiKatasandiController.dispose();
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
                      'Daftar',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      'Buat akun baru kamu!',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 42),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Nama Lengkap', style: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w400),),
                    SizedBox(height: 12,),
                    TextFormField(
                      controller: _namaController,
                      decoration: InputDecoration(
                        hintText: "Supernova by Aespa",
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
            
                    Text('No. Handphone', style: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w400),),
                    SizedBox(height: 12,),
                    TextFormField(
                      controller: _nohpController,
                      decoration: InputDecoration(
                        hintText: "0896805666",
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
                      obscureText: katasandi,
                      controller: _katasandiController,
                      decoration: InputDecoration(
                        hintText: katasandi ? "********" : "Halofilkom123",
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
                                katasandi = !katasandi;
                              });
                            },
                            icon: Icon(katasandi ? Icons.visibility : Icons.visibility_off, color: Color.fromARGB(255, 229, 158, 74),),
                                              
                          ),
                        ),
                      ),
                    ),
            
                    SizedBox(height: 24,),
            
                    Text('Konfirmasi Kata Sandi', style: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w400),),
                    SizedBox(height: 12,),
                    TextFormField(
                      obscureText: kkatasandi,
                      controller: _konfirmasiKatasandiController,
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
            
                    SizedBox(height: 42,),
            
                    Column(
                      children: [
                        ElevatedButton(onPressed: () {}, style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 37, 71, 95),
                          minimumSize: Size(double.infinity, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          elevation: 0,
                        ), child:  Text('Daftar', style: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white),),),
                        SizedBox(height: 12,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Sudah punya akun? ', style: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w400, color: Color.fromARGB(255, 48, 93, 124)),),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Masuk()));
                              },
                              child: Text('Masuk', style: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w700, color: Color.fromARGB(255, 37, 71, 95)),),
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
