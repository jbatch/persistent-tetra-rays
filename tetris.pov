#include "colors.inc"
#include "shapes.inc"
background { color Cyan }
camera {
  location <20, 20, -20>
  look_at <0, 0, 0>
  rotate <0,clock*72,0>
  }

light_source {
  <2, 4, -3> color White }

box {
  <-10,-2,-10>,
  <15,0,10>
  pigment { color White }
}

#declare t_cube = Round_Box(
  <0,0,0>,
  <2,2,2>,
  0.1,
  0
)

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

/*object { z_block
  translate<0,5,0>
  translate <0, floor(-1*clock), 0>
  }*/

#declare t_block = union {
  object { t_cube }
  object { t_cube
    translate <2,0,0>}
  object { t_cube
    translate <2,2,0>}
  object { t_cube
    translate <4,0,0>}
  pigment { color red 0.54 blue 0.54 green 0 }
}

#if (clock <= 5)
    object { t_block
      rotate <0,0,0>
      translate <0,10,0>
      translate <0,floor(-2*clock),0>}
#else
   object { t_block
      rotate <0,0,0>
      translate <0,0,0>}
#end
#if (5 < clock <= 10)
    object { s_block
      rotate<0,90,0>
      translate <0,10,6>
      translate <0,floor(-2*(clock-5)),0>}
#end
object { o_block
  translate <2,0,2>}
object { l_block
  rotate <180,0,90>
  translate <-2,0,2>}
object { i_block
  rotate <0,0,0>
  translate <-2,0,6>}
object { z_block
  rotate<0,90,0>
  translate<-2,0,8>}
