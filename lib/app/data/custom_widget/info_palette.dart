import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoPalette extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  const InfoPalette(
      {super.key,
      required this.title,
      required this.description,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Icon(
            icon,
            size: 22.0,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          title,
          style: GoogleFonts.nunito(
            fontWeight: FontWeight.w800,
            fontSize: 18.0,
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        Container(
          width: 200.0,
          child: Text(
            description,
            style: GoogleFonts.nunito(
              fontWeight: FontWeight.w400,
              color: Colors.black54,
              fontSize: 14.0,
            ),
            textAlign: TextAlign.justify,
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
      ],
    );
  }
}

class InfoPaletteWithOutSpace extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  const InfoPaletteWithOutSpace(
      {super.key,
      required this.title,
      required this.description,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Icon(
            icon,
            size: 22.0,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          title,
          style: GoogleFonts.nunito(
            fontWeight: FontWeight.w800,
            fontSize: 18.0,
          ),
        ),
        Container(
          width: 200.0,
          child: Text(
            description,
            style: GoogleFonts.nunito(
              fontWeight: FontWeight.w400,
              color: Colors.black54,
              fontSize: 13.0,
            ),
            textAlign: TextAlign.justify,
          ),
        ),
      ],
    );
  }
}
