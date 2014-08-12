#include "colors.inc"
background { color Cyan }
camera {
  location <5, 5, -12>
  look_at <0, 0, 0>
  }

light_source {
  <2, 4, -3> color White }

#declare t_cube = box {
  <0, 0, 0>,
  <2, 2, 2>
}

#declare i_block = union {
  object { t_cube }
  object { t_cube
    translate <2,0,0>}
  object { t_cube
    translate <4,0,0>}
  object { t_cube
    translate <6,0,0>}
  pigment { color Cyan }
}

#declare j_block = union {
  object { t_cube }
  object { t_cube
    translate <2,0,0>}
  object { t_cube
    translate <4,0,0>}
  object { t_cube
    translate <4,-2,0>}
  pigment { color Blue }
}

#declare l_block = union {
  object { t_cube }
  object { t_cube
    translate 2*x}
  object { t_cube
    translate <4,0,0>}
  object { t_cube
    translate <4,2,0>}
  pigment { color Orange }
}

#declare o_block = union {
  object { t_cube }
  object { t_cube
    translate <2,0,0>}
  object { t_cube
    translate <2,2,0>}
  object { t_cube
    translate <0,2,0>}
  pigment { color Yellow }
}

#declare s_block = union {
  object { t_cube }
  object { t_cube
    translate <2,0,0>}
  object { t_cube
    translate <2,2,0>}
  object { t_cube
    translate <4,2,0>}
  pigment { color LimeGreen }
}

#declare z_block = union {
  object { t_cube
    translate <0,2,0>}
  object { t_cube
    translate <2,2,0>}
  object { t_cube
    translate <2,0,0>}
  object { t_cube
    translate <4,0,0>}
  pigment { color Red }
}

object { z_block }

#declare t_block = union {
  object { t_cube }
  object { t_cube
    translate <2,0,0>}
  object { t_cube
    translate <2,2,0>}
  object { t_cube
    translate <2,-2,0>}
  pigment { color red 0.54 blue 0.54 green 0 }
}
