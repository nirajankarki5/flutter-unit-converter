List<String> lengthItems = [
  "µm",
  "mm",
  "cm",
  "dm",
  "m",
  "inch",
  "ft",
  "yd",
  "mile",
  "km"
];

dynamic lengthFormulas = {
  'µm': [
    1,
    0.001,
    0.0001,
    0.00001,
    0.000001,
    0.000039,
    0.000003,
    0.000001,
    (1 / 1609344000),
    (1 / 1000000000)
  ],
  'mm': [
    1000,
    1,
    0.1,
    0.01,
    0.001,
    0.03937,
    0.003281,
    0.001094,
    (1 / 1609344),
    0.000001
  ],
  'cm': [
    10000,
    10,
    1,
    0.1,
    0.01,
    0.393701,
    0.032808,
    0.010936,
    0.000006,
    0.00001
  ],
  'dm': [
    100000,
    100,
    10,
    1,
    0.1,
    3.937008,
    0.328084,
    0.109361,
    0.000062,
    0.0001
  ],
  'm': [
    1000000,
    1000,
    100,
    10,
    1,
    39.370079,
    3.28084,
    1.093613,
    0.000621,
    0.001
  ],
  'inch': [
    25400,
    25.4,
    2.54,
    0.254,
    0.0254,
    1,
    0.083333,
    0.027778,
    0.000016,
    0.000025
  ],
  'ft': [
    304800,
    304.8,
    30.48,
    3.048,
    0.3048,
    12,
    1,
    0.333333,
    0.000189,
    0.000305
  ],
  'yd': [914400, 914.4, 91.44, 9.144, 0.9144, 36, 3, 1, 0.000568, 0.000914],
  'mile': [
    1609344000,
    1609344,
    160934.4,
    16093.44,
    1609.344,
    63360,
    5280,
    1760,
    1,
    1.609344
  ],
  'km': [
    1000000000,
    1000000,
    100000,
    10000,
    1000,
    39370.0787,
    3280.8399,
    1093.6133,
    0.621371,
    1
  ],
};
