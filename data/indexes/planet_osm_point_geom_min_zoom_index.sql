

CREATE INDEX
  planet_osm_point_geom_min_zoom_index
  ON planet_osm_point USING gist(way)
  WHERE
    mz_building_min_zoom IS NOT NULL OR
    mz_earth_min_zoom IS NOT NULL OR
    mz_places_min_zoom IS NOT NULL OR
    mz_poi_min_zoom IS NOT NULL OR
    mz_water_min_zoom IS NOT NULL
