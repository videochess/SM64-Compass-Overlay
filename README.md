# Super Mario 64 Compass Overlay
## what is this actually doing
this is a rudimentary compass overlay for super mario 64.\
it takes mario's raw angle value and displays a compass, with angle 0 treated as south and angle 32,767 treated as north.\
it's important to remember that these cardinal direction assignments are *arbitrary*.\
32,767 as north just "feels" right. it's the angle that points toward the castle from spawn, and toward the second floor when you enter the castle.\
really, angles 0 and 32,767 just mean that mario is perfectly aligned with the z axis in game space, facing either positive or negative.\
so, just think of it as a bit of fun.\
it behaves strangely depending on mario's state (i.e. when he is opening doors) but *generally* seems to work as expected whenever you have direct control of mario.\
since it's an overlay, not something hacked into the game itself, it will continue displaying at "inappropriate" times, i.e. load screens, file select, etc as long as the script is loaded.\
don't worry about it!\
![alt text](https://github.com/videochess/SM64-Compass-Overlay/blob/main/sm64_compass_example.gif?raw=true)
## before you use it...
**if you've never used a lua script before, general word of caution: *be careful!!!***\
the functionality of lua isn't limited to things within your emulator.\
before you run any lua scripts, make sure the source is trustworthy and that the script isn't doing anything weird.\
this one's normal, in case you were wondering!
## how to use it ?
- first, you'll need some version of the Bizhawk emulator. (i have only tested it with 2.10 but maybe it works with others)
- you'll also need a mario 64 rom, obviously. it only works with the US release. (it might also work with romhacks based on that release but i haven't tested.)
- click the little green "<> Code" button at the top of this github page and select Download ZIP.
- drag the "videochess" folder out of the zip and into your Bizhawk/Lua/ directory.
- in Bizhawk, select Tools -> Lua Console from the top menu.
- in the Lua Console, hit the Open button and navigate to the "videochess" folder you extracted earlier. select sm64_compass.lua.
- there you go! should be working!
## i think thats all
i didn't test this extensively. i basically just ran around the castle and bob-omb battlefield a bit. sorry if it breaks.\
i originally put this together with the idea that it would make actively mapping out the b3313 romhack more fun and reasonable, but...\
i forgot that b3313 doesn't run in bizhawk...\
so this isn't very useful in the end. but maybe you'll get a kick out of it.\
bye!
