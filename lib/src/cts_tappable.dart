library cts_tappable;

import 'package:cts_tappable/src/geo_points.dart';
import 'package:latlong2/latlong.dart';

export 'package:latlong2/latlong.dart';

class CtsTappable {
  CtsTappable._();

  static bool isPointInPolygon(
      {required LatLng point, required List<LatLng> polygon}) {
    return GeoPoints.isGeoPointInPolygon(point, polygon);
  }
}
