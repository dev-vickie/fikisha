import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fikisha/models/trip_rating.dart';
import 'package:fikisha/views/Home/Components/home_extention.dart';
import 'package:fikisha/utils/colors.dart';

class RideRating extends StatefulWidget {
  final TripRating rideModel;
  final ValueChanged<TripRating> onSelected;
  RideRating({
    required this.rideModel,
    required this.onSelected,
    Key? key,
  }) : super(key: key);

  @override
  _RideRatingState createState() => _RideRatingState();
}

class _RideRatingState extends State<RideRating> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: widget.rideModel.isSelected
              ? ColorPath.Primarydark
              : ColorPath.Primarydark.withOpacity(0.29),
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Text(
            widget.rideModel.emoji,
            style: GoogleFonts.montserrat(
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ).ripple(() {
        setState(() {
          widget.onSelected(widget.rideModel);
        });
      }),
    );
  }
}
