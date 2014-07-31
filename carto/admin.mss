@admin-boundaries: #4d5967;



#admin-other {
  [admin_level = '9'],
  [admin_level = '10'] {
    [zoom >= 13] {
      line-color: @admin-boundaries;
      line-width: 2;
      line-dasharray: 2,3;
      line-clip: false;
    }
  }
  opacity: 0.5;
}

#admin-text[zoom >= 16] {
  text-name: "[name]";
  text-face-name: @book-fonts;
  text-fill: @admin-boundaries;
  text-placement: line;
  text-halo-radius: 1.0;
  text-placement: line;
  text-dy: -10;
}

#national-park-boundaries {
  [zoom >= 7] {
    ::fill [zoom < 13] {
      opacity: 0.05;
      polygon-fill: green;
    }
    ::line {
      opacity: 0.15;
      line-color: green;
      line-width: 1.5;
      line-dasharray: 4,2;
      [zoom >= 10] {
        line-width: 3;
        line-dasharray: 6,2;
        line-join: bevel;
      }
    }
  }
  [way_area > 200000000][zoom >= 8][zoom < 12],
  [zoom >= 11][zoom < 12] {
    text-name: "[name]";
    text-size: 8;
    text-fill: #9c9;
    text-face-name: @bold-fonts;
    text-halo-radius: 1;
    text-wrap-width: 14;
    [zoom >= 11] { text-size: 11; }
  }
}
