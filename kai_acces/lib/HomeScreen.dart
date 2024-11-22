import 'package:flutter/material.dart';
import 'package:kai_acces/Body.dart';
import 'package:kai_acces/Navbar.dart';
import 'package:kai_acces/BuildIcon.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.fromLTRB(16, 40, 16, 20),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF6A35FF),
              Color.fromARGB(255, 255, 71, 71),
              // Color.fromARGB(255, 255, 253, 253)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Selamat Pagi',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      'ARDHAVA PRADIFTYA',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.shopping_cart_outlined,
                          color: Colors.white),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon:
                          const Icon(Icons.email_outlined, color: Colors.white),
                      onPressed: () {},
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.headset_mic, color: Colors.white),
                      label: const Text(
                        'Bantuan',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 55,
            ),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Kai Pay',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Rp 1.000.000,00',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      Expanded(
                        child: SizedBox(),
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Icon(
                                Icons.qr_code_scanner_outlined,
                                color: Colors.blue,
                              ),
                              Text('Scan'),
                            ],
                          ),
                          SizedBox(width: 16),
                          Column(
                            children: [
                              Icon(
                                Icons.account_balance_wallet,
                                color: Colors.blue,
                              ),
                              Text('Top Up'),
                            ],
                          ),
                          SizedBox(width: 16),
                          Column(
                            children: [
                              Icon(
                                Icons.history,
                                color: Colors.grey,
                              ),
                              Text('Riwayat'),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 27,
                  ),
                  Row(
                    children: [
                      Icon(Icons.circle, size: 25, color: Colors.orange),
                      Text(
                        '9999',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                        ),
                      ),
                      Text(' RailPoin',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.normal)),
                      Expanded(child: SizedBox()),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blue[100],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            Text(
                              'Basic',
                              style: TextStyle(
                                color: Colors.blue[700],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.chevron_right,
                              color: Colors.blue[700],
                              size: 20,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              width: 1000,
              child: Column(
                children: [
                  SizedBox(height: 35,),
                  GridView.count(
                    crossAxisCount: 5,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    // padding: EdgeInsets.all(16),
                    children: [
                      _buildIconButton(Icons.train, 'Antar Kota', Colors.blue,
                          Colors.purple),
                      _buildIconButton(
                          Icons.subway, 'Lokal', Colors.orange, Colors.red),
                      _buildIconButton(Icons.train, 'Commuter Line', Colors.red,
                          Colors.pink),
                      _buildIconButton(
                          Icons.train, 'LRT', Colors.pink, Colors.purple),
                      _buildIconButton(
                          Icons.train, 'Bandara', Colors.blue, Colors.cyan),
                      _buildIconButton(
                          Icons.hotel, 'Hotel', Colors.blue[100]!, Colors.blue),
                      _buildIconButton(Icons.train, 'Kartu Multi Trip',
                          Colors.blue[100]!, Colors.blue),
                      _buildIconButton(Icons.train, 'KAI Logistik',
                          Colors.blue[100]!, Colors.blue),
                      _buildIconButton(
                          Icons.train, 'Pulsa', Colors.blue[100]!, Colors.blue),
                      _buildIconButton(
                          Icons.bolt, 'PLN', Colors.blue[100]!, Colors.blue),
                    ],
                  ),
                  SizedBox(
                    height: 55  ,
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.blue,
                        Color.fromARGB(255, 98, 0, 255)
                      ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('TRIP Planner',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            Text('Buat perencanaan terbaik untuk perjalananmu.',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white)),
                          ],
                        ),
                        SizedBox(height: 55,),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                // primary: Colors.white,
                                // onPrimary Colors.blue,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12))),
                            child: Text('Buat'))
                      ],
                    ),
                  ),
                   Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    child: Text(
                      'Layanan Tambahan Untuk Perjalanan Kamu',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: GridView.count(
                      crossAxisCount: 4,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        _buildMenuIcon(Icons.fastfood,'RailFoos', Colors.pinkAccent, Colors.redAccent),
                        _buildMenuIcon(Icons.local_taxi, 'Taksi', Colors.blue[100]!, Colors.blue),
                        _buildMenuIcon(Icons.directions_bus, 'Bus', Colors.cyan,Color.fromARGB(255, 0, 248, 223)),
                        _buildMenuIcon(Icons.hotel,'Hotel', Colors.purple[100]!, Colors.purpleAccent ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 55,)
           
          ],
        ),
      ),
      bottomNavigationBar: Navbar(
        currentIndex: _currentIndex,
        onTapChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

Widget _buildIconButton(
    IconData icon, String label, Color startColor, Color endColor) {
  return Column(
    children: [
      Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [startColor, endColor],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Icon(icon, color: Colors.white, size: 24),
      ),
      SizedBox(height: 8),
      Text(label, style: TextStyle(fontSize: 12)),
    ],
  );
}
Widget _buildMenuIcon(
    IconData icon, String label, Color startColor, Color endColor) {
  return Column(
    children: [
      Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [startColor, endColor],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Icon(icon, color: Colors.white, size: 24),
      ),
      SizedBox(height: 8),
      Text(label, style: TextStyle(fontSize: 12)),
    ],
  );
}

//  Widget _buildMenuIcon(String label, IconData icon) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         CircleAvatar(
//           backgroundColor: Colors.blue[100],
//           child: Icon(icon, color: Colors.blue),
//         ),
//         SizedBox(height: 8),
//         Text(
//           label,
//           textAlign: TextAlign.center,
//           style: TextStyle(fontSize: 12),
//         ),
//       ],
//     );
//   }

