// --- Parks, woods, other green things ---
// --- so para test ---

@forest: #cfe29f;
@grass: #cfe29f; // also meadow, common, garden, village_green, conservation
@golf_course: #cfe29f;
@natural: #cfe29f; // also grassland
@park: #cfe29f; // also recreation_ground
@wood: #cfe29f;
@vineyard: #cfe29f;

// --- sports ---

@stadium: #cfe29f; // also sports_centre
@track: #cfe29f;
@pitch: #cfe29f;

// --- Other ----

@aerodrome: #ccc;
@allotments: #e5c7ab;
@apron: #e9d1ff;
@attraction: #f2caea;
@barracks: #ff8f8f;
@campsite: #cbdf92; // also caravan_site, picnic_site
@cemetery: #ded6cc; // also grave_yard
@construction: #9d9d6c;
@commercial: #e4ded6;
@danger_area: pink;
@desert: #e3b57a;
@field: #660;
@garages: #996;
@heath: #d6d99f;
@industrial: #ead5df; // also railway
@farmyard: #ddbf92;
@farm: #ead8bd; // also farmland
@parking: #f3dec6;
@playground: #cbdf92;
@power: #bbb;
@rest_area: #efc8c8; // also services
@retail: #f1dada;
@residential: #ddd;
@sand: #f2ece6;
@school: #e4ded6; // also university, college, hospital, kindergarten

#landcover {
 [feature = 'leisure_swimming_pool'][zoom >= 14] {
    polygon-fill: @water-color;
    line-color: blue;
    line-width: 0.5;
  }

  [feature = 'leisure_playground'][zoom >= 13] {
    polygon-fill: @playground;
  }

  [feature = 'tourism_camp_site'],
  [feature = 'tourism_caravan_site'],
  [feature = 'tourism_picnic_site'] {
    [zoom >= 13] {
      polygon-fill: @campsite;
    }
  }

  [feature = 'tourism_attraction'][zoom >= 10] {
    polygon-fill: @attraction;
  }

  [feature = 'landuse_quarry'][zoom >= 11] {
    polygon-pattern-file: url('symbols/quarry2.png');
    line-width: 0.5;
    line-color: grey;
  }

  [feature = 'landuse_vineyard'] {
    [zoom >= 10][zoom < 13] {
      polygon-fill: @vineyard;
    }
    [zoom >= 13] {
      polygon-pattern-file: url('symbols/vineyard.png');
    }
  }

  [feature = 'landuse_orchard'][zoom >= 10] {
    polygon-pattern-file: url('symbols/orchard.png');
  }

  [feature = 'landuse_cemetery'],
  [feature = 'landuse_grave_yard'],
  [feature = 'amenity_grave_yard'] {
    [zoom >= 13][zoom < 14] {
      polygon-fill: @cemetery;
    }
    [zoom >= 14] {
      [religion = 'jewish'] { polygon-pattern-file: url('symbols/cemetery_jewish.18.png'); }
      [religion = 'christian'] { polygon-pattern-file: url('symbols/grave_yard.png'); }
      [religion = 'INT-generic'] { polygon-pattern-file: url('symbols/grave_yard_generic.png'); }
    }
  }

  [feature = 'landuse_residential'][zoom >= 10] {
    polygon-fill: @residential;
  }

  [feature = 'landuse_garages'][zoom >= 12] {
    polygon-fill: @garages;
    polygon-opacity: 0.2;
  }

  [feature = 'military_barracks'][zoom >= 10] {
    polygon-fill: @barracks;
  }

  [feature = 'landuse_field'],
  [feature = 'natural_field'] {
    [zoom >= 10] {
      polygon-fill: @field;
      polygon-opacity: 0.2;
      [zoom >= 14] {
        line-width: 0.3;
        line-opacity: 0.4;
        line-color: #660;
      }
    }
  }

  [feature = 'military_danger_area'] {
    [zoom >= 9][zoom < 11] {
      polygon-fill: @danger_area;
      polygon-opacity: 0.3;
    }
    [zoom >= 11] {
      polygon-pattern-file: url('symbols/danger.png');
    }
  }

  [feature = 'landuse_meadow'],
  [feature = 'landuse_grass'] {
    [zoom >= 10] {
      polygon-fill: @grass;
    }
  }

  [feature = 'leisure_park'],
  [feature = 'leisure_recreation_ground'] {
    [zoom >= 10] {
      polygon-fill: @park;
     // polygon-opacity: 0.6;
    }
  }

  [feature = 'tourism_zoo'][zoom >= 10] {
    polygon-pattern-file: url('symbols/zoo.png');
  }

  [feature = 'leisure_common'][zoom >= 10] {
    polygon-fill: @grass;
  }

  [feature = 'leisure_garden'][zoom >= 10] {
    polygon-fill: @grass;
  }

  [feature = 'leisure_golf_course'][zoom >= 10] {
    polygon-fill: @golf_course;
  }

  [feature = 'landuse_allotments'] {
    [zoom >= 10][zoom < 14] {
      polygon-fill: @allotments;
    }
    [zoom >= 14] {
      polygon-pattern-file: url('symbols/allotments.png');
    }
  }

  [feature = 'landuse_forest'] {
    [zoom >= 8] {
      polygon-fill: @forest;
    }
    [zoom >= 14] {
      polygon-pattern-file: url('symbols/forest.png');
    }
  }

  [feature = 'landuse_farmyard'][zoom >= 12] {
    polygon-fill: @farmyard;
  }

  [feature = 'landuse_farm'],
  [feature = 'landuse_farmland'] {
    [zoom >= 12] {
      polygon-fill: @farm;
    }
  }

  [feature = 'landuse_recreation_ground'],
  [feature = 'landuse_conservation'] {
    [zoom >= 10] {
      polygon-fill: @grass;
    }
  }

  [feature = 'landuse_village_green'][zoom >= 11] {
    polygon-fill: @grass;
  }

  [feature = 'landuse_retail'][zoom >= 14] {
    polygon-fill: @retail;
    [zoom >= 15] {
      line-width: 0.3;
      line-color: red;
    }
  }

  [feature = 'landuse_industrial'],
  [feature = 'landuse_railway'] {
    [zoom >= 12] {
      polygon-fill: @industrial;
    }
  }

  [feature = 'power_station'],
  [feature = 'power_generator'] {
     [zoom >= 12] {
	 polygon-fill: @power;
     line-width: 0.4;
     line-color: #555;
      }
    
  }

  [feature = 'power_sub_station'][zoom >= 13] {
    polygon-fill: @power;
    line-width: 0.4;
    line-color: #555;
  }

  [feature = 'landuse_commercial'][zoom >= 10] {
    polygon-fill: @commercial;
  }

  [feature = 'landuse_construction'] {
    [zoom >= 10] {
      polygon-fill: @construction;
      polygon-opacity: 0.7;
    }
  }

  [feature = 'natural_wood'] {
    [zoom >= 8] {
      polygon-fill: @wood;
    }
  }

  [feature = 'natural_desert'][zoom >= 8] {
    polygon-fill: @desert;
  }

  [feature = 'natural_sand'][zoom >= 10] {
    polygon-fill: @sand;
  }

  [feature = 'natural_heath'][zoom >= 10] {
    polygon-fill: @heath;
  }

  [feature = 'natural_grassland'][zoom >= 10] {
    polygon-fill: #c6e4b4;
  }

  [feature = 'natural_scrub'] {
    [zoom >= 10][zoom < 14] {
      polygon-fill: #b5e3b5;
    }
    [zoom >= 14] {
      polygon-pattern-file: url('symbols/scrub.png');
    }
  }

  [feature = 'amenity_university'],
  [feature = 'amenity_college'],
  [feature = 'amenity_school'],
  [feature = 'amenity_hospital'],
  [feature = 'amenity_kindergarten'] {
    [zoom >= 13] {
      polygon-fill: @school;
      }
  }
  

  [feature = 'amenity_parking'][zoom >= 10] {
    polygon-fill: @parking;
    [zoom >= 15] {
      line-width: 0.3;
      line-color: @parking;
    }
  }

  [feature = 'aeroway_apron'][zoom >= 12] {
    polygon-fill: @apron;
  }

  [feature = 'aeroway_aerodrome'][zoom >= 12] {
    polygon-fill: @aerodrome;
    polygon-opacity: 0.2;
    line-width: 0.2;
    line-color: #555;
  }

  [feature = 'natural_beach'][zoom >= 13] {
    polygon-pattern-file: url('symbols/beach.png');
  }

  [feature = 'highway_services'],
  [feature = 'highway_rest_area'] {
    [zoom >= 14] {
      polygon-fill: @rest_area;
    }
  }
}

/* man_made=cutline */
#landcover-line {
  [zoom >= 14] {
    line-width: 3;
    line-join: round;
    line-cap: square;
    line-color: @land-color;
    [zoom >= 16] {
      line-width: 6;
    }
  }
}

#sports-grounds {
  [leisure = 'sports_centre'],
  [leisure = 'stadium'] {
    [zoom >= 10] {
      polygon-fill: @stadium;
    }
  }

  [leisure = 'track'][zoom >= 10] {
    polygon-fill: @track;
    line-width: 0.5;
    line-color: #888;
  }

  [leisure = 'pitch'][zoom >= 13] {
    polygon-fill: @pitch;
  }
}


#landuse-overlay {
  [landuse = 'military'][zoom >= 12]::landuse {
    polygon-pattern-file: url('symbols/military_red_hatch.png');
    polygon-pattern-alignment: global;
    line-color: #f8d7dc;
    line-width: 3;
    line-opacity: 0.329;
  }
  [leisure = 'nature_reserve'][zoom >= 10] {
    polygon-pattern-file: url('symbols/nature_reserve5.png');
    line-color: #6c3;
    line-width: 0.5;
    [zoom >= 14] {
      polygon-pattern-file: url('symbols/nature_reserve6.png');
      line-width: 1;
    }
  }
}

#cliffs {
  [natural = 'cliff'][zoom >= 13] {
    line-pattern-file: url('symbols/cliff.png');
    [zoom >= 15] {
      line-pattern-file: url('symbols/cliff2.png');
    }
  }
  [man_made = 'embankment'][zoom >= 15]::man_made {
    line-pattern-file: url('symbols/cliff.png');
  }
}

#area-barriers {
  [zoom >= 16] {
    line-color: #444;
    line-width: 0.4;
    [barrier = 'hedge'] {
      polygon-fill: #aed1a0;
    }
  }
}

.barriers {
  [zoom >= 16] {
    line-width: 0.4;
    line-color: #444;
  }
  [barrier = 'embankment'][zoom >= 14] {
    line-width: 0.4;
    line-color: #444;
  }
  [barrier = 'hedge'][zoom >= 16] {
    line-width: 3;
    line-color: #aed1a0;
  }
}


#theme-park {
  [tourism = 'theme_park'][zoom >= 13] {
    line-color: #734a08;
    line-width: 1.5;
    line-dasharray: 9,3;
    line-opacity: 0.6;
    [zoom >= 15] {
      line-width: 2.5;
    }
  }
}
