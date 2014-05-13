@marina-text: #576ddf; // also swimming_pool
@military-text: #99001a;
@park-text: #2c4b2c;

.points {

  [amenity = 'fuel'][zoom >= 17]::amenity {
    point-file: url('symbols/fuel.p.16.png');
    point-placement: interior;
  }

  [tourism = 'guest_house'][zoom >= 17]::tourism {
    point-file: url('symbols/guest_house.p.16.png');
    point-placement: interior;
  }

  [tourism = 'bed_and_breakfast'][zoom >= 17]::tourism {
    point-file: url('symbols/bandb.p.20.png');
    point-placement: interior;
  }

  [tourism = 'hostel'][zoom >= 17]::tourism {
    point-file: url('symbols/hostel.p.20.png');
    point-placement: interior;
  }

  [tourism = 'hotel'][zoom >= 17]::tourism {
    point-file: url('symbols/hotel2.p.20.png');
    point-placement: interior;
  }

  [tourism = 'motel'][zoom >= 17]::tourism {
    point-file: url('symbols/motel.p.20.png');
    point-placement: interior;
  }

  [amenity = 'parking'][zoom >= 15]::amenity {
    point-file: url('symbols/parking.p.16.png');
    point-placement: interior;
    [access != ''][access != 'public'][access != 'yes'] {
      point-file: url('symbols/parking_private.p.16.png');
    }
  }

  [amenity = 'emergency_phone'][zoom >= 17]::amenity {
    point-file: url('symbols/sosphone.png');
    point-placement: interior;
  }

  [leisure = 'slipway'][zoom >= 17]::leisure {
    point-file: url('symbols/transport_slipway.p.20.png');
    point-placement: interior;
  }
}



.text {

  [leisure = 'park']::leisure,
  [leisure = 'recreation_ground']::leisure,
  [landuse = 'recreation_ground']::landuse,
  [landuse = 'conservation']::landuse,
  [landuse = 'village_green']::landuse,
  [leisure = 'common']::leisure,
  [leisure = 'garden']::leisure,
  [leisure = 'golf_course']::leisure,
  [leisure = 'nature_reserve']::leisure {
    [way_area >= 150000][zoom >= 14],
    [way_area >= 80000][zoom >= 15],
    [way_area >= 20000][zoom >= 16],
    [zoom >= 17] {
      text-name: "[name]";
      text-size: 11;
      text-fill: @park-text;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-halo-fill: rgba(255,255,255,0.6);
      text-wrap-width: 30;
      text-placement: interior;
    }
  }

  [place = 'island'][zoom >= 12]::place {
    text-name: "[name]";
    text-fill: #000;
    text-size: 9;
    text-face-name: @oblique-fonts;
    text-halo-radius: 1;
    text-placement: interior;
  }

  [amenity = 'parking'][zoom >= 17]::amenity {
    text-name: "[name]";
    text-size: 9;
    text-fill: #0066ff;
    text-dy: 9;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 34;
    text-placement: interior;
    [access != ''][access != 'public'][access != 'yes'] {
      text-fill: #66ccaf;
    }
  }

  [natural = 'wood'][zoom >= 15]::natural {
    text-name: "[name]";
    text-size: 10;
    text-fill: darken(@wood, 50%);
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 10;
    text-placement: interior;
  }

  [natural = 'peak']::natural,
  [natural = 'volcano']::natural {
    [zoom >= 13] {
      text-name: "[name]";
      text-size: 10;
      text-fill: brown;
      text-dy: 7;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-placement: interior;
      ele/text-name: "[ele]";
      ele/text-size: 9;
      ele/text-fill: brown;
      ele/text-dy: 6;
      ele/text-face-name: @oblique-fonts;
      ele/text-halo-radius: 1;
      ele/text-placement: interior;
      [name != ''] {
        ele/text-dy: 19;
      }
    }
  }

  [natural = 'water']::natural,
  [natural = 'lake']::natural,
  [landuse = 'reservoir']::landuse,
  [landuse = 'basin']::landuse {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 12;
      text-fill: @water-text;
      text-face-name: @oblique-fonts;
      text-halo-radius: 1;
      text-wrap-width: 20;
      text-placement: interior;
    }
  }

  [landuse = 'residential']::landuse {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 9;
      text-fill: #000;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-wrap-width: 10;
    }
  }

  [landuse = 'garages']::landuse {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 9;
      text-fill: darken(@garages, 50%);
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-wrap-width: 10;
    }
  }

  [landuse = 'field']::landuse {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 9;
      text-fill: darken(@field, 50%);
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-wrap-width: 10;
    }
  }

  [landuse = 'allotments']::landuse {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 9;
      text-fill: darken(@allotments, 60%);
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-wrap-width: 10;
    }
  }

  [landuse = 'forest']::landuse {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 9;
      text-fill: darken(@forest, 50%);
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-wrap-width: 10;
    }
  }

  [landuse = 'farm']::landuse,
  [landuse = 'farmland']::landuse,
  [landuse = 'farmyard']::landuse {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 9;
      text-fill: darken(@farm, 70%);
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-wrap-width: 10;
    }
  }

  [landuse = 'retail']::landuse {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 9;
      text-fill: darken(@retail, 60%);
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-wrap-width: 10;
    }
  }

  [landuse = 'industrial']::landuse,
  [landuse = 'railway']::landuse {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 9;
      text-fill: darken(@industrial, 60%);
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-wrap-width: 10;
    }
  }

  [landuse = 'commercial']::landuse {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 9;
      text-fill: darken(@commercial, 60%);
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-wrap-width: 10;
    }
  }

  [landuse = 'brownfield']::landuse,
  [landuse = 'landfill']::landuse,
  [landuse = 'greenfield']::landuse,
  [landuse = 'construction']::landuse {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 9;
      text-fill: darken(@construction, 50%);
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-wrap-width: 10;
    }
  }

  [natural = 'bay'][zoom >= 14]::natural {
    text-name: "[name]";
    text-size: 10;
    text-fill: #6699cc;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 20;
    text-placement: interior;
  }

  [natural = 'spring'][zoom >= 16]::natural {
    text-name: "[name]";
    text-size: 10;
    text-fill: #6699cc;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 20;
    text-placement: interior;
    text-dy: 6;
  }

  [amenity = 'shelter'][zoom >= 17]::amenity {
    text-name: "[name]";
    text-size: 9;
    text-fill: #6699cc;
    text-dy: 10;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-placement: interior;
    ele/text-name: "[ele]";
    ele/text-size: 8;
    ele/text-fill: #6699cc;
    ele/text-dy: 22;
    ele/text-face-name: @oblique-fonts;
    ele/text-halo-radius: 1;
    ele/text-placement: interior;
  }

  [tourism = 'hotel']::tourism,
  [tourism = 'motel']::tourism,
  [tourism = 'hostel']::tourism {
    [zoom >= 17] {
      text-name: "[name]";
      text-size: 10;
      text-fill: #0066ff;
      text-dy: 11;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-placement: interior;
    }
  }

  [tourism = 'guest_house'][zoom >= 17]::tourism {
    text-name: "[name]";
    text-size: 8;
    text-fill: #0066ff;
    text-dy: 10;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-placement: interior;
  }

  [tourism = 'bed_and_breakfast'][zoom >= 17]::tourism {
    text-name: "[name]";
    text-size: 8;
    text-fill: #0066ff;
    text-dy: 8;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-placement: interior;
  }

  [amenity = 'fuel']::amenity,
  [amenity = 'bus_station']::amenity {
    [zoom >= 17] {
      text-name: "[name]";
      text-size: 9;
      text-fill: #0066ff;
      text-dy: 9;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
    }
  }

 
  [military = 'danger_area'][zoom >= 12]::military {
    text-name: "[name]";
    text-size: 9;
    text-fill: @military-text;
    text-face-name: @bold-fonts;
    text-halo-radius: 1;
    text-wrap-width: 10;
    text-placement: interior;
  }


  [aeroway = 'gate'][zoom >= 17]::aeroway {
    text-name: "[ref]";
    text-size: 10;
    text-fill: #aa66cc;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 10;
    text-placement: interior;
  }
}
