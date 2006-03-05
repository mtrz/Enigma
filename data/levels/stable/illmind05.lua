-- Laser Paradise, a level for Enigma
-- Copyright (C) 2005 illmind
-- Licensed under GPL v2.0 or above 

-- level dimensions and standards
levelw = 58
levelh = 13
create_world(levelw, levelh)
oxyd_default_flavor = "d"
draw_border("st-rock1")
fill_floor("fl-black", 0,0, level_width,level_height)

-- extra stones in level
set_stones("st-rock1", {{19,2},{19,3},{19,4},{19,5},{19,6},{19,7},{19,8},{19,10},{19,11},{20,6},{20,10}})
set_stones("st-rock1", {{21,6},{21,8},{21,9},{21,10},{21,7}})
set_stones("st-rock1", {{38,1},{38,2},{38,3},{38,4},{38,5},{38,6},{38,7},{38,8},{38,9},{38,10},{38,11}})
set_stones("st-stone_break", {{22,1},{23,1},{24,1},{26,1},{27,1},{28,1},{30,1},{31,1},{32,1},{34,1},{35,1},{36,1}})
set_stones("st-stone_break", {{20,2},{21,2},{22,2},{24,2},{25,2},{26,2},{28,2},{29,2},{30,2},{32,2},{33,2},{34,2}})
set_stones("st-stone_break", {{36,2},{37,2},{20,3},{22,3},{23,3},{24,3},{26,3},{27,3},{28,3},{30,3},{31,3},{32,3}})
set_stones("st-stone_break", {{34,3},{35,3},{36,3},{20,4},{21,4},{22,4},{24,4},{25,4},{26,4},{28,4},{29,4},{30,4}})
set_stones("st-stone_break", {{32,4},{33,4},{34,4},{36,4},{37,4},{20,5},{22,5},{23,5},{24,5},{26,5},{27,5},{28,5}})
set_stones("st-stone_break", {{30,5},{31,5},{32,5},{34,5},{35,5},{36,5},{22,6},{24,6},{25,6},{26,6}})
set_stones("st-stone_break", {{28,6},{29,6},{30,6},{32,6},{33,6},{34,6},{36,6},{37,6},{22,7},{23,7},{24,7}})
set_stones("st-stone_break", {{26,7},{27,7},{28,7},{30,7},{31,7},{32,7},{34,7},{35,7},{36,7},{22,8}})
set_stones("st-stone_break", {{24,8},{25,8},{26,8},{28,8},{29,8},{30,8},{32,8},{33,8},{34,8},{36,8},{37,8},{22,9}})
set_stones("st-stone_break", {{23,9},{24,9},{26,9},{27,9},{28,9},{30,9},{31,9},{32,9},{34,9},{35,9},{36,9}})
set_stones("st-stone_break", {{22,10},{24,10},{25,10},{26,10},{28,10},{29,10},{30,10},{32,10},{33,10},{34,10}})
set_stones("st-stone_break", {{36,10},{37,10},{20,11},{22,11},{23,11},{24,11},{26,11},{27,11},{28,11},{30,11},{31,11}})
set_stones("st-stone_break", {{34,11},{35,11},{36,11},{32,11}})
set_stones("st-rock1_hole", {{19,9}})
set_stones("st-likeoxydd", {{21,1},{29,1},{37,1},{23,2},{27,2},{31,2},{35,2},{21,3},{25,3},{29,3},{33,3},{23,4}})
set_stones("st-likeoxydd", {{31,4},{35,4},{25,5},{29,5},{33,5},{37,5},{23,6},{27,6},{31,6},{35,6},{25,7}})
set_stones("st-likeoxydd", {{29,7},{33,7},{37,7},{23,8},{27,8},{31,8},{35,8},{25,9},{37,9}})
set_stones("st-likeoxydd", {{27,10},{31,10},{35,10},{21,11},{25,11},{29,11},{33,11},{37,11}})
set_stones("st-wood", {{2,10}})
set_stones("st-glass", {{4,5},{5,4},{5,6},{6,7},{7,4},{7,8},{8,4},{8,8},{9,4},{9,7},{10,6},{11,5},{11,8}})
set_stones("st-glass", {{12,4},{12,8},{13,4},{13,8},{14,5},{14,8},{15,6},{16,7},{17,8}})

-- objects and items
set_item("it-hammer", 20,8)

-- trapdoors vertical
set_stone("st-door", 19,  1, {name="ill01", type="v"})

-- trigger platforms
set_item("it-trigger", 1,10, {action="openclose", target="ill01"})

-- southbound laser stones
set_stone("st-laser", 2,1, {name="ill02", on=TRUE, dir=SOUTH})
set_stone("st-laser", 4,1, {name="ill03", on=FALSE, dir=SOUTH})
set_stone("st-laser", 6,1, {name="ill04", on=TRUE, dir=SOUTH})
set_stone("st-laser", 8,1, {name="ill05", on=TRUE, dir=SOUTH})
set_stone("st-laser", 10,1, {name="ill06", on=FALSE, dir=SOUTH})
set_stone("st-laser", 12,1, {name="ill07", on=FALSE, dir=SOUTH})
set_stone("st-laser", 14,1, {name="ill08", on=TRUE, dir=SOUTH})
set_stone("st-laser", 16,1, {name="ill09", on=FALSE, dir=SOUTH})

-- northbound laser stones
set_stone("st-laser", 3,11, {name="ill10", on=TRUE, dir=NORTH})
set_stone("st-laser", 5,11, {name="ill11", on=FALSE, dir=NORTH})
set_stone("st-laser", 7,11, {name="ill12", on=FALSE, dir=NORTH})
set_stone("st-laser", 9,11, {name="ill13", on=TRUE, dir=NORTH})
set_stone("st-laser", 11,11, {name="ill14", on=TRUE, dir=NORTH})
set_stone("st-laser", 13,11, {name="ill15", on=FALSE, dir=NORTH})
set_stone("st-laser", 15,11, {name="ill16", on=TRUE, dir=NORTH})
set_stone("st-laser", 17,11, {name="ill17", on=FALSE, dir=NORTH})

-- westbound laser stones
set_stone("st-laser", 18,2, {name="ill18", on=TRUE, dir=WEST})
set_stone("st-laser", 18,4, {name="ill19", on=TRUE, dir=WEST})
set_stone("st-laser", 18,6, {name="ill20", on=TRUE, dir=WEST})
set_stone("st-laser", 18,8, {name="ill21", on=FALSE, dir=WEST})
set_stone("st-laser", 18,10, {name="ill22", on=TRUE, dir=WEST})

-- eastbound laser stones
set_stone("st-laser", 1,3, {name="ill23", on=TRUE, dir=EAST})
set_stone("st-laser", 1,5, {name="ill24", on=FALSE, dir=EAST})
set_stone("st-laser", 1,7, {name="ill25", on=FALSE, dir=EAST})
set_stone("st-laser", 1,9, {name="ill26", on=TRUE, dir=EAST})

-- southbound laser triggers
set_stone("st-timer", 42,1, {loop=1, action="onoff", target="ill02", interval=5})
set_stone("st-timer", 42,2, {loop=1, action="onoff", target="ill03", interval=4})
set_stone("st-timer", 42,3, {loop=1, action="onoff", target="ill04", interval=5})
set_stone("st-timer", 42,4, {loop=1, action="onoff", target="ill05", interval=4})
set_stone("st-timer", 42,5, {loop=1, action="onoff", target="ill06", interval=5})
set_stone("st-timer", 42,6, {loop=1, action="onoff", target="ill07", interval=4})
set_stone("st-timer", 42,7, {loop=1, action="onoff", target="ill08", interval=5})
set_stone("st-timer", 42,8, {loop=1, action="onoff", target="ill09", interval=4})

-- northbound laser triggers
set_stone("st-timer", 43,1, {loop=1, action="onoff", target="ill10", interval=5})
set_stone("st-timer", 43,2, {loop=1, action="onoff", target="ill11", interval=4})
set_stone("st-timer", 43,3, {loop=1, action="onoff", target="ill12", interval=5})
set_stone("st-timer", 43,4, {loop=1, action="onoff", target="ill13", interval=4})
set_stone("st-timer", 43,5, {loop=1, action="onoff", target="ill14", interval=5})
set_stone("st-timer", 43,6, {loop=1, action="onoff", target="ill15", interval=4})
set_stone("st-timer", 43,7, {loop=1, action="onoff", target="ill16", interval=5})
set_stone("st-timer", 43,8, {loop=1, action="onoff", target="ill17", interval=4})

-- westbound laser triggers
set_stone("st-timer", 44,1, {loop=1, action="onoff", target="ill18", interval=5})
set_stone("st-timer", 44,2, {loop=1, action="onoff", target="ill19", interval=4})
set_stone("st-timer", 44,3, {loop=1, action="onoff", target="ill20", interval=5})
set_stone("st-timer", 44,4, {loop=1, action="onoff", target="ill21", interval=4})
set_stone("st-timer", 44,5, {loop=1, action="onoff", target="ill22", interval=5})

-- eastbound laser triggers
set_stone("st-timer", 45,1, {loop=1, action="onoff", target="ill23", interval=4})
set_stone("st-timer", 45,2, {loop=1, action="onoff", target="ill24", interval=5})
set_stone("st-timer", 45,3, {loop=1, action="onoff", target="ill25", interval=4})
set_stone("st-timer", 45,4, {loop=1, action="onoff", target="ill26", interval=5, name="ill27"})

-- override trigger switch
set_stone("st-switch", 20,7, {on=0, action="onoff", target="ill27"})

-- documents
set_item("it-document", 1,11, {text=" illmind's  laser  paradise  ..."})
set_item("it-document", 20,1, {text=" ...  now  go  back  and  get  the  hammer  !"})

-- oxyd stones
oxyd(25,1)
oxyd(33,1)
oxyd(37,3)
oxyd(27,4)
oxyd(21,5)
oxyd(29,9)
oxyd(33,9)
oxyd(23,10)
oxyd_shuffle()

-- blackball
set_actor("ac-blackball", 1.5, 1.5, {player=0})


























