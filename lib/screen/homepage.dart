import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas1/models/products.dart';
import 'package:tugas1/widget/productcard.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<Product> products = [
    Product(
      name: "Wortel 500gr",
      price: "Rp. 10.000",
      imageKey: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTi1qC7UPi-3EU5pFv7Ss6m_999bMclyU3UzQ&s",
      rating: 4.6,
    ),
    Product(
      name: "Jamur Enoki",
      price: "Rp. 3.500",
      imageKey: "https://foto.kontan.co.id/Mt5y8yamrvQ5ekr2vsPPsIJ_96E=/smart/filters:format(webp)/2023/01/25/196528812.jpg",
      rating: 5.0,
    ),
    Product(
      name: "Kol Segar 500gr",
      price: "Rp. 6.000",
      imageKey: "https://niagatani.id/public/uploads/all/jego2KOL8mTl0JIjMNT8yhyFQLXFQYBrbBudSPLQ.jpg",
      rating: 4.7,
    ),
    Product(
      name: "Kentang 500gr",
      price: "Rp. 8.000",
      imageKey: "https://media.istockphoto.com/id/157430678/id/foto/tiga-kentang.jpg?s=612x612&w=0&k=20&c=I_G3u8mSoU1kgUaD7VMY0sJQvqLWcI3HO7idf7XjM9w=",
      rating: 4.8,
    ),
    Product(
      name: "Bumbu Sayur Sop",
      price: "Rp. 2.500",
      imageKey: "https://pict.sindonews.net/dyn/850/pena/news/2020/06/09/722/63498/segar-manis-sop-sayur-tanpa-daging-ini-resepnya-uyp.png",
      rating: 4.5,
    ),
    Product(
      name: "Seledri 500gr",
      price: "Rp. 4.000",
      imageKey: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIJgo6hRJCFjvofFtvCYcFXiCoI-Y6PTQKnA&s",
      rating: 4.8,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsGeometry.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Hola! Supernova',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                   // SizedBox(height: 2),
                    Text(
                      'Siap menjalani harimu?',
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage('assets/logo.png'),
                ),
              ],
            ),
            SizedBox(height: 24),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey.shade400),
                ),
                child: Row(
                  children: [
                    Icon(Icons.search, color: Colors.indigo[900], size: 28),
                    const SizedBox(width: 12),
                    Text(
                      "Cari barang apa nih?",
                      style: TextStyle(
                        color: Colors.indigo[900],
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Expanded(
                child: GridView.builder(
                  padding: const EdgeInsets.only(bottom: 20),
                  itemCount: products.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.75,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                  ),
                  itemBuilder: (context, index) {
                    return ProductCard(product: products[index]);
                  },
                ),
              ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
            color: Color(0xFF1E3A52),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
                IconButton(
                    icon: const Icon(Icons.shopping_cart_outlined, color: Colors.grey, size: 28),
                    onPressed: () {},
                ),
                IconButton(
                    icon: const Icon(Icons.home, color: Colors.white, size: 32),
                    onPressed: () {},
                ),
                IconButton(
                    icon: const Icon(Icons.person_outline, color: Colors.grey, size: 28),
                    onPressed: () {},
                ),
            ],
        ),
      ),
    );
  }
}
