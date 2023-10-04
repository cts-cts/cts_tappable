library cts_tappable;

import 'package:geodesy/geodesy.dart';
export 'package:latlong2/latlong.dart';

class CtsTappable {
  CtsTappable._();

  static final _geodesy = Geodesy();

  static bool isPointInPolygon(
      {required LatLng point, required List<LatLng> polygon}) {
    return _geodesy.isGeoPointInPolygon(point, polygon);
  }
}
