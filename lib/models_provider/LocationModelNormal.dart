
class LocationModelNormal {
  final String name;
  final String url;
  final GeoPoint coordinates;
  final String videoURL;

  LocationModelNormal(
    {
      this.name,
      this.url,
      this.coordinates,
      this.videoURL,
    }
  );

  factory LocationModelNormal.fromMap(Map<String, dynamic> data ) {
    return LocationModelNormal(
      name: data['name'] ?? '',
      url: data['url'] ?? '',
      coordinates: data['location'] ?? null,
      videoURL: data['link'] ?? '',
    );
  }

  factory LocationModelNormal.initialData() {
    return LocationModelNormal(
      coordinates: null,
      name: '',
      videoURL: '',
      url:'',
    );
  }
}