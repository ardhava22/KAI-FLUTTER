import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 475,
      width: 1000,
      decoration: BoxDecoration(
        color: Colors.white,
        
      ),
      child: 
      GridView.count(crossAxisCount: 5,
      shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.all(16),
              children: [
                _buildIconButton(Icons.train, 'Antar Kota', Colors.blue, Colors.purple),
                _buildIconButton(Icons.subway, 'Lokal', Colors.orange, Colors.red),
                _buildIconButton(Icons.train, 'Commuter Line', Colors.red, Colors.pink),
                _buildIconButton(Icons.train, 'LRT', Colors.pink, Colors.purple),
                _buildIconButton(Icons.train, 'Bandara', Colors.blue, Colors.cyan),
                _buildIconButton(Icons.hotel, 'Hotel', Colors.blue[100]!, Colors.blue),
                _buildIconButton(Icons.train, 'Kartu Multi Trip', Colors.blue[100]!, Colors.blue),
                _buildIconButton(Icons.train, 'KAI Logistik', Colors.blue[100]!, Colors.blue),
                _buildIconButton(Icons.train, 'Pulsa', Colors.blue[100]!, Colors.blue),
                _buildIconButton(Icons.bolt, 'PLN', Colors.blue[100]!, Colors.blue),
              ],
      ),
    );
  }
}
 Widget _buildIconButton(IconData icon, String label, Color startColor, Color endColor) {
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
        Text(label, style: TextStyle(fontSize: 12 )),
      ],
      
    );
  }
