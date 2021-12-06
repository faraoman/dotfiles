## Fallout 3 - GOTY

Source:
(https://www.protondb.com/app/22300#11hsgvkBlW)[https://www.protondb.com/app/22300#11hsgvkBlW]

So, I did play around for while how to launch a game and make it playable, and I hope this works for other people. This instructions is ONLY for FO3 NOT FO3 GOTY.

Obviously, of course you will need to download Fallout 3 on steam to able to do the other steps.

You will need to download the Xlive.dll

here is the the link where you can download it from: https://www.nexusmods.com/fallout3/mods/22591?tab=files

Now, once you have downloaded your Xlive.dll and extracted it, copy it, and paste it to the following: $HOME/.steam/steam/steamapps/common/Fallout 3

Now, once you have done that, and before you launch a game, you will need to do couple of more steps is to right click on the game and select properties, and type this custom launch command: PROTON_USE_WINED3D=11 %command%

Once, you have pasted a command, and last step is go to compatibility on games properties and enable a “Force the use of specific steam play compatibility tool” and select which proton you would be using the way you chose the proton on steam settings.

Enjoy.
