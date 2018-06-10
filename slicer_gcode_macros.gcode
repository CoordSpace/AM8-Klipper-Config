; Cura + Klipper

; Start GCode
G21 ;metric values
G90 ;absolute positioning
M82 ;set extruder to absolute mode
M107 ;start with the fan off
M190 S{material_bed_temperature_layer_0} ; set bed temp and wait
BED_TILT_CALIBRATE ;perform auto bed leveling
M109 T0 S{material_print_temperature_layer_0} ; set extruder temp and wait
G0 X0 Y0 F7200 ;move off the bed at 45mms
G1 Z15.0 F9000 ;move the platform down 15mm
G92 E0 ;zero the extruded length
G1 X100 E15 F600 ; move X-carriage 100mm while purging 15mm of filament
G92 E0 ;zero the extruded length
M117 Printing...

; End GCode
M104 S0
M140 S0
G92 E1 ; extruder set to relative positioning
G1 E-1 F300 ; retract
G91 ; set axes to relative
G0 Z5 F9000 ; move the hotend up, off the part
G90 ; set axes back to absolute
G0 X0 F7200 ; move hotend out of the way
G0 Y200 F7200 ; put the part where its accessible
M84 ; turn off steppers

