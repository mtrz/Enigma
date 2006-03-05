-- Copyright (c) 2005 JuSt
-- License: GPL v2.0 or above
-- Enigma Level: Doors forever

levelw=21
levelh=25

create_world( levelw, levelh)

-- fill_floor("fl-bluegray", 0,0,levelw,levelh)
enigma.ConserveLevel=FALSE


function renderFloor(line, pattern)
    for i=1, strlen(pattern) do
        local c = strsub( pattern, i, i)
        if c ==" " then
            fill_floor("fl-bluegray", i-1, line)
        elseif c =="1" then
            fill_floor( "fl-abyss", i-1, line)
        elseif c =="2" then
            fill_floor( "fl-water", i-1, line)
        end
    end
end


function renderLine(line, pattern)
    for i=1, strlen(pattern) do
        local c = strsub( pattern, i, i)
        if c =="#" then
            set_stone( "st-rock1", i-1, line)
        elseif c == "o" then
            oxyd( i-1, line)
        elseif c == "a" then
            doorv (i-1, line, {name="door1"})
        elseif c == "A" then
            set_stone("st-switch", i-1, line, {action="openclose", target="door1"})
        elseif c == "b" then
            doorv (i-1, line, {name="door2"})
        elseif c == "c" then
            doorh (i-1, line, {name="door3"})
        elseif c == "d" then
            doorh (i-1, line, {name="door4"})
        elseif c == "D" then
            set_stone("st-switch", i-1, line, {action="openclose", target="door4"})
        elseif c == "e" then
            doorh (i-1, line, {name="door5"})
        elseif c == "E" then
            set_stone("st-coinslot", i-1, line, {action="openclose", target="door5"})
        elseif c == "f" then
            doorv (i-1, line, {name="door6"})
        elseif c == "F" then
            set_stone("st-switch", i-1, line, {action="openclose", target="door6"})
        elseif c == "g" then
            doorh (i-1, line, {name="door7"})
        elseif c == "G" then
            set_stone("st-switch", i-1, line, {action="openclose", target="door7"})
        elseif c == "h" then
            doorh (i-1, line, {name="door8"})
        elseif c == "H" then
            set_stone("st-floppy", i-1, line, {action="openclose",target="door8"})
        elseif c == "i" then
            doorh (i-1, line, {name="door9"})
        elseif c == "j" then
            doorh (i-1, line, {name="door10"})
        elseif c == "k" then
            doorh (i-1, line, {name="door11"})
        elseif c == "l" then
            doorh (i-1, line, {name="door12"})
        elseif c == "L" then
            set_stone("st-switch", i-1, line, {action="openclose",target="door12"})
        elseif c == "m" then
            set_stone("st-laser-e", i-1, line, {name="laser1"} )
        elseif c == "t" then
            set_stone("st-laser-w", i-1, line, {name="laser2"} )
        elseif c == "." then
            set_stone("st-stoneimpulse", i-1, line)
        elseif c == "+" then
            set_stone("st-rock1_hole", i-1, line)
        elseif c == "=" then
            set_stone("st-wood", i-1, line)
        elseif c == "x" then
            set_stone("st-death", i-1, line)
        elseif c == "z" then
            if difficult then
                set_stone("st-death", i-1, line)
            else
                set_stone( "st-rock1", i-1, line)
            end
        elseif c == "/" then
            set_stone("st-rock3_move", i-1, line)
        elseif c == "n" then
            set_stone("st-rock3_break", i-1, line)
        elseif c == ";" then
            set_stone("st-rotator_move-right", i-1, line)
        elseif c == "r" then
            set_stone("st-mail-e", i-1, line)
        elseif c == "s" then
            set_stone("st-knight", i-1, line)
        elseif c == "p" then
            set_stone("st-swap", i-1, line)
        elseif c == "q" then
            set_stone("st-pull", i-1, line)
        elseif c == "O" then
            set_stone("st-glass", i-1, line)
        elseif c == ">" then
            set_stone("st-oneway_black-e", i-1, line)
        elseif c == "<" then
            set_stone("st-oneway_black-w", i-1, line)
        elseif c == "^" then
            set_stone("st-oneway_black-n", i-1, line)
        elseif c == "y" then
            set_stone("st-oneway_black-s", i-1, line)
        elseif c == "u" then
            mirrorp (i-1, line, FALSE, FALSE, 3)
        elseif c == "v" then
            mirrorp (i-1, line, TRUE, FALSE, 2)
        elseif c == "w" then
            mirrorp (i-1, line, TRUE, TRUE, 2)
        elseif c == "(" then
            set_stone ("st-laserswitch", i-1, line, {action="open", target = "door9"} )
        elseif c == ")" then
            set_stone ("st-laserswitch", i-1, line, {action="open", target = "door10"} )
        elseif c == "[" then
            set_stone ("st-laserswitch", i-1, line, {action="open", target = "door11"} )
        end
    end	
end


function renderItem(line, pattern)
    for i=1, strlen(pattern) do
        local c = strsub( pattern, i, i)
        if c=="*" then
            set_actor("ac-blackball", i-.5, line+.5, {player=0})
        elseif c=="+" then
            set_actor("ac-whiteball", i-.5, line+.5, {player=1})
        elseif c == "B" then
            set_item("it-trigger", i-1, line, {action="openclose", target="door2"})
        elseif c == "C" then
            set_item("it-trigger", i-1, line, {action="openclose", target="door3"})
        elseif c == "M" then
            set_item("it-trigger", i-1, line, {action="onoff", target="laser1"})
        elseif c == "T" then
            set_item("it-trigger", i-1, line, {action="onoff", target="laser2"})
        elseif c == "`" then
            set_item("it-pipe-sw", i-1, line)
        elseif c == "|" then
            set_item("it-pipe-v", i-1, line)
        elseif c == "/" then
            set_item("it-pipe-wn", i-1, line)
        elseif c == "-" then
            set_item("it-pipe-h", i-1, line)
        elseif c == "@" then
            set_item("it-coin1", i-1, line)
        elseif c == "1" then
            set_item("it-puller-s", i-1, line)
        elseif c == "2" then
            set_stone("st-brake", i-1, line)
        elseif c == "3" then
            set_item("it-puller-w", i-1, line)
        elseif c == "4" then
            set_item("it-brush", i-1, line)
        elseif c == "5" then
            set_item("it-dynamite", i-1, line)
        elseif c == "6" then
            set_item("it-floppy", i-1, line)
        elseif c == "7" then
            set_item("it-yinyang", i-1, line)
        elseif c == "8" then
            set_item("it-coffee", i-1, line)
        elseif c == "9" then
            set_item("it-key_c", i-1, line)
        elseif c == "0" then
            set_item("it-seed", i-1, line)
        elseif c == "!" then
            set_item("it-extinguisher", i-1, line)
        elseif c == "$" then
            set_item("it-glasses", i-1, line)
        elseif c == "s" then
            set_item("it-sword", i-1, line)
        elseif c == "a" then
            set_item("it-magnet", i-1, line, {name="mm1"})
        elseif c == "b" then
            set_item("it-magnet", i-1, line, {name="mm2"})
        elseif c == "c" then
            set_item("it-magnet", i-1, line, {name="mm3"})
        elseif c == "d" then
            set_item("it-magnet", i-1, line, {name="mm4"})
        elseif c == "e" then
            set_item("it-magnet", i-1, line, {name="mm5"})
        elseif c == "O" then
            if difficult then
                set_item("it-trigger", i-1, line, {action="callback", target="mag_on"})
            end
        elseif c == "P" then
            if difficult then
                set_item("it-trigger", i-1, line, {action="callback", target="mag_off"})
            end
        elseif c == "_" then
            set_item("it-blackbomb", i-1, line)
        elseif c == "x" then
            set_item("it-wormhole", i-1, line, {strength=2,targetx="2.5",targety="23.5", name="wh1"})
        elseif c == "y" then
            set_item("it-wormhole", i-1, line, {strength=2,targetx="1.5",targety="1.5", name="wh2"})
        elseif c == "," then
            set_item("it-document", i-1, line, {text="Look carefully at anything!"} )
        elseif c == "." then
            set_item("it-document", i-1, line, {text="Do you need a helping hand?"} )
        elseif c == "Z" then
            set_item("it-umbrella", i-1, line)
        end
    end	
end


function puzzling()
  xpos =   { 9, 10, 11, 11, 11, 10, 11, 11, 12}        -- X-Koordinaten der Puzzelsteine
  ypos =   {10, 10, 10, 11, 12, 13, 13, 14, 14}        -- Y-Koordinaten      "
  stones = { 2,  4,  5,  5,  6, 11, 11, 12, 13}        -- Puzzelstein-Typen, die gebraucht werden
  anzstones = 9                                        -- Anzahl der Puzzelsteine
  --
  randomseed(enigma.GetTicks())                        -- Zufallsgenerator mit Zufallswert starten
  for i = 1, anzstones do
    ok = 0
    repeat
      xx = random(anzstones)
      if not (stones[xx] == 0) then
        puzzle2(xpos[i], ypos[i], stones[xx])
        stones[xx] = 0
        ok = 1
      end
    until ok == 1
  end
end


function mag_on ()
  SendMessage ("mm1", "on")
  SendMessage ("mm2", "on")
  SendMessage ("mm3", "on")
  SendMessage ("mm4", "on")
  SendMessage ("mm5", "on")
end


function mag_off ()
  SendMessage ("mm1", "off")
  SendMessage ("mm2", "off")
  SendMessage ("mm3", "off")
  SendMessage ("mm4", "off")
  SendMessage ("mm5", "off")
end



--             -----------------------
renderFloor(00,"                     ")
renderFloor(01,"                     ")
renderFloor(02,"                     ")
renderFloor(03,"                     ")
renderFloor(04,"                     ")
renderFloor(05,"                     ")
renderFloor(06,"                     ")
renderFloor(07,"                     ")
renderFloor(08,"                     ")
renderFloor(09,"   22      2         ")
renderFloor(10,"                     ")
renderFloor(11,"           1         ")
renderFloor(12,"           1         ")
renderFloor(13,"                     ")
renderFloor(14,"     222             ")
renderFloor(15,"                     ")
renderFloor(16,"                     ")
renderFloor(17,"                     ")
renderFloor(18,"                     ")
renderFloor(19,"                     ")
renderFloor(20,"                     ")
renderFloor(21,"                  1  ")
renderFloor(22,"      22             ")
renderFloor(23,"                     ")
renderFloor(24,"                     ")
--             -----------------------

--            -----------------------
renderLine(00,"#################### ")
renderLine(01,"A a #      b       # ")
renderLine(02,"### # #....##;####c# ")
renderLine(03,"o # # #. =.#C #+   # ")
renderLine(04,"o #   #. B.# /## = r ")
renderLine(05,"#i#####....####  ==# ")
renderLine(06,"#j#    ###L   # == # ")
renderLine(07,"#k# ==# =f  # #  ==# ")
renderLine(08,"#l#   x  ####e# == # ")
renderLine(09,"# #         # #  ==# ")
renderLine(10,"# # # pq 123# #  = # ")
renderLine(11,"# # #   ###4# #d#### ")
renderLine(12,"# # = #####5E    ++# ")
renderLine(13,"# # ==# n 67######## ")
renderLine(14,"# #     #  89      # ")
renderLine(15,"# ###z###########Gg# ")
renderLine(16,".=      ### #^yy^> # ")
renderLine(17,"u         [ #y<>^> # ")
renderLine(18,"#   w ) #=# #y>><< # ")
renderLine(19,"#   v OO    t<>>>> # ")
renderLine(20,"(OO    #  # ##hH#### ")
renderLine(21,"####   # ## x#   # D ")
renderLine(22,"m  #      #   #x # # ")
renderLine(23,"#  s#     ##x    # # ")
renderLine(24,"###F##########x#x### ")
--            -----------------------

--            -----------------------
renderItem(00,"                     ")
renderItem(01," *                   ")
renderItem(02,"                     ")
renderItem(03,"   ,        C  .     ")
renderItem(04,"         B        1 `")
renderItem(05,"                2 Z |")
renderItem(06,"                34  |")
renderItem(07,"                6 7 |")
renderItem(08,"                389 |")
renderItem(09,"                0   |")
renderItem(10,"                ! $ |")
renderItem(11,"                    |")
renderItem(12,"                @sx |")
renderItem(13,"                    |")
renderItem(14,"                    |")
renderItem(15,"                    |")
renderItem(16,"   _                |")
renderItem(17,"   _                |")
renderItem(18," ___                |")
renderItem(19,"                    |")
renderItem(20,"                    |")
renderItem(21,"        T    aO  b7 |")
renderItem(22,"           P       -/")
renderItem(23," yM              c+  ")
renderItem(24,"             d e     ")
--            -----------------------

puzzling ()





























