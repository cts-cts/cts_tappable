library cts_tappable;

import 'package:geodesy/geodesy.dart';
export 'package:latlong2/latlong.dart';

class CtsTappable {
  CtsTappable._();

  static final geodesy = Geodesy();

  static bool checkPointInPolygon(LatLng point, List<LatLng> polygon) {
    return geodesy.isGeoPointInPolygon(point, polygon);
  }
}
