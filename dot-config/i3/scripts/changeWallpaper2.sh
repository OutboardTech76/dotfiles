#!/bin/bash

date=$(date +%H | sed 's/\<0//g')
if (($date>= 22));then
   feh --bg-scale $HOME/.config/i3/wallpapers/mojave_dynamic_16.jpeg
elif (($date >= 21));then
   feh --bg-scale $HOME/.config/i3/wallpapers/mojave_dynamic_15.jpeg
elif (($date >= 20));then
   feh --bg-scale $HOME/.config/i3/wallpapers/mojave_dynamic_14.jpeg
elif (($date >= 19));then
   feh --bg-scale $HOME/.config/i3/wallpapers/mojave_dynamic_13.jpeg
elif (($date >= 18));then
   feh --bg-scale $HOME/.config/i3/wallpapers/mojave_dynamic_12.jpeg
elif (($date >= 17));then
   feh --bg-scale $HOME/.config/i3/wallpapers/mojave_dynamic_11.jpeg
elif (($date >= 16));then
   feh --bg-scale $HOME/.config/i3/wallpapers/mojave_dynamic_11.jpeg
elif (($date >= 15));then
   feh --bg-scale $HOME/.config/i3/wallpapers/mojave_dynamic_10.jpeg
elif (($date >= 14));then
   feh --bg-scale $HOME/.config/i3/wallpapers/mojave_dynamic_9.jpeg
elif (($date >= 13));then
   feh --bg-scale $HOME/.config/i3/wallpapers/mojave_dynamic_8.jpeg
elif (($date >= 12));then
   feh --bg-scale $HOME/.config/i3/wallpapers/mojave_dynamic_7.jpeg
elif (($date >= 11));then
   feh --bg-scale $HOME/.config/i3/wallpapers/mojave_dynamic_6.jpeg
elif (($date >= 9));then
   feh --bg-scale $HOME/.config/i3/wallpapers/mojave_dynamic_5.jpeg
elif (($date >= 8));then
   feh --bg-scale $HOME/.config/i3/wallpapers/mojave_dynamic_4.jpeg
elif (($date >= 7));then
   feh --bg-scale $HOME/.config/i3/wallpapers/mojave_dynamic_3.jpeg
elif (($date >= 6));then
   feh --bg-scale $HOME/.config/i3/wallpapers/mojave_dynamic_2.jpeg
elif (($date >= 5));then
   feh --bg-scale $HOME/.config/i3/wallpapers/mojave_dynamic_1.jpeg
else
   feh --bg-scale $HOME/.config/i3/wallpapers/mojave_dynamic_16.jpeg
fi

