class FamousCity {
  final String name;
  final double lat;
  final double lon;

  const FamousCity({
    required this.name,
    required this.lat,
    required this.lon,
  });
}

List<FamousCity> famousCities = [
  const FamousCity(name: 'London', lat: 51.5074, lon: -0.1278),
  const FamousCity(name: 'Paris', lat: 48.8566, lon: 2.3522),
  const FamousCity(name: 'Tokyo', lat: 35.6895, lon: 139.6917),
  const FamousCity(name: 'Sydney', lat: -33.8688, lon: 151.2093),
  const FamousCity(name: 'Seoul', lat: 37.5665, lon: 126.9780),
  const FamousCity(name: 'New Delhi', lat: 28.6139, lon: 77.2090),
  const FamousCity(name: 'Mumbai', lat: 19.0760, lon: 72.8777),
  const FamousCity(name: 'Beijing', lat: 39.9042, lon: 116.4074),
  const FamousCity(name: 'Mexico City', lat: 19.4326, lon: -99.1332),
  const FamousCity(name: 'Lima', lat: -12.0431, lon: -77.0282),
];