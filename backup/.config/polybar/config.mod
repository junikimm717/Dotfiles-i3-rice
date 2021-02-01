;==========================================================
;
;
;   ██████╗  ██████╗ ██╗  ██╗   ██╗██████╗  █████╗ ██████╗
;   ██╔══██╗██╔═══██╗██║  ╚██╗ ██╔╝██╔══██╗██╔══██╗██╔══██╗
;   ██████╔╝██║   ██║██║   ╚████╔╝ ██████╔╝███████║██████╔╝
;   ██╔═══╝ ██║   ██║██║    ╚██╔╝  ██╔══██╗██╔══██║██╔══██╗
;   ██║     ╚██████╔╝███████╗██║   ██████╔╝██║  ██║██║  ██║
;   ╚═╝      ╚═════╝ ╚══════╝╚═╝   ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝
;
;
;   To learn more about how to configure Polybar
;   go to https://github.com/polybar/polybar
;
;   The README contains a lot of information
;
;==========================================================

[colors]
;background = ${xrdb:color0:#222}
background = #222
background-alt = #444
;foreground = ${xrdb:color7:#222}
foreground = #dfdfdf
foreground-alt = #555
primary = #ffb52a
secondary = #e60053
alert = #bd2c40
black = #000
white = #fff
grey = #aaa
darkgrey = #555
red = #f00
green = #0f0
blue = #4c7899
yellow = #d2b55b


[bar/background]
modules-center = date
modules-right = backlight battery wlan
tray-position = right
font-0 = JetBrains Mono:style=Regular
height = 30
width = 1820
offset-y = 15
offset-x = 50
background = #144840
radius = 15
override-redirect=true


[module/wlan]
type = internal/network
interface = wlan0
label-connected = "| %essid% %{F#00F000}%local_ip%"

[module/date]
type = internal/date
date = "%h-%d-20%y %H:%M:%S"

[bar/i3]
modules-center = i3
height = 30
width = 400
offset-y = 15
offset-x = 50
radius=15
override-redirect=true
;background = #004b59

[module/i3]
type = internal/i3
label-focused = %index%
label-focused-background = ${colors.yellow}
label-focused-foreground = ${colors.black}
label-focused-underline= #ffffff
label-focused-line-size=3
label-focused-padding = 2

label-unfocused = %index%
label-unfocused-foreground = ${colors.grey}
label-unfocused-padding = 2
label-urgent = %index%
label-urgent-foreground = ${colors.white}
label-urgent-background = ${colors.red}
label-urgent-padding = 2

[module/battery]
type = internal/battery
; This is useful in case the battery never reports 100% charge
full-at = 100
; Use the following command to list batteries and adapters:
; $ ls -1 /sys/class/power_supply/
battery = BAT0
adapter = ADP1
; If an inotify event haven't been reported in this many
; seconds, manually poll for new values.
poll-interval = 5

time-format = %H:%M
label-charging = | Charging %percentage%%
label-discharging = | Discharging %percentage%%
label-full =  | Fully charged

[module/backlight]
type = internal/backlight
card = intel_backlight
; Enable changing the backlight with the scroll wheel
; NOTE: This may require additional configuration on some systems. Polybar will
; write to `/sys/class/backlight/${self.card}/brightness` which requires polybar
; to have write access to that file.
; DO NOT RUN POLYBAR AS ROOT. 
; The recommended way is to add the user to the
; `video` group and give that group write-privileges for the `brightness` file.
; See the ArchWiki for more information:
; https://wiki.archlinux.org/index.php/Backlight#ACPI
; Default: false
enable-scroll = true
label = "brightness: %percentage%%"
