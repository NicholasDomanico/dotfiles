// -*- mode: json -*-

{
	"layer": "top",
	"position": "top",

	"modules-left": [
		"hyprland/workspaces",
		"custom/right-arrow-dark"
    //"wireplumber"
	],
	"modules-center": [
		"custom/left-arrow-dark",
		"clock#1",
		"custom/left-arrow-light",
		"custom/left-arrow-dark",
		"clock#2",
		"custom/right-arrow-dark",
		"custom/right-arrow-light",
		"clock#3",
		"custom/right-arrow-dark"
	],
	"modules-right": [
		"custom/left-arrow-dark",
		"pulseaudio",
		"custom/left-arrow-light",
		"custom/left-arrow-dark",
		//"memory",
		//"custom/left-arrow-light",
		//"custom/left-arrow-dark",
		"cpu",
		"custom/left-arrow-light",
		"custom/left-arrow-dark",
		"battery",
		"custom/left-arrow-light",
		"custom/left-arrow-dark",
		//"disk",
    "network",
		"custom/left-arrow-light",
		"custom/left-arrow-dark",
		"power-profiles-daemon",
    "custom/left-arrow-light",
    "custom/left-arrow-dark",
    "custom/power"
	],

	"custom/left-arrow-dark": {
		"format": "",
		"tooltip": false
	},
	"custom/left-arrow-light": {
		"format": "",
		"tooltip": false
	},
	"custom/right-arrow-dark": {
		"format": "",
		"tooltip": false
	},
	"custom/right-arrow-light": {
		"format": "",
		"tooltip": false
	},

	//"sway/workspaces": {
	//	"disable-scroll": true,
//		"format": "{name}"
//	},
"hyprland/workspaces": {
         "disable-scroll": true,
         "all-outputs": true,
         "warp-on-scroll": false,
         "format": "{name}: {icon}",
         "format-icons": {
             "1": "",
             "2": "",
             "3": "",
             "4": "",
             "5": "",
             "urgent": "",
             "focused": "",
             "default": ""
         }
     },

	"clock#1": {
		"format": "{:%a}",
		"tooltip": false
	},
	"clock#2": {
		"format": "{:%I:%M}",
		"tooltip": false
	},
	"clock#3": {
		"format": "{:%m-%d}",
		"tooltip": false
	},

	"pulseaudio": {
		"format": "{icon} {volume:2}%",
		"format-bluetooth": "{icon}  {volume}%",
		"format-muted": "MUTE",
		"format-icons": {
			"headphones": "",
			"default": [
				"",
				""
			]
		},
		"scroll-step": 5,
		//"on-click": "pamixer -t",
		"on-click": "pavucontrol"
	},
  //"wireplumber": {
  //  "format": "{volume}% {icon}",
  //  "format-muted": "",
  //  "on-click": "helvum",
  //  "format-icons": ["", "", ""]
//},
	"memory": {
		"interval": 5,
		"format": "Mem{}%"
	},
	"cpu": {
		"interval": 5,
		"format": " {usage:2}%"
	},
	"battery": {
		"states": {
			"good": 95,
			"warning": 30,
			"critical": 15
		},
		"format": "{icon}  {capacity}%",
		"format-icons": [
			"",
			"",
			"",
			"",
			""
		]
	},
	"disk": {
		"interval": 5,
		"format": "Disk {percentage_used:2}%",
		"path": "/"
	},
  "network": {
        // "interface": "wlp2*", // (Optional) To force the use of this interface
        "format-wifi": "  {signalStrength}%",
        "format-ethernet": "  {ipaddr}/{cidr}",
        "tooltip-format-wifi": "{essid}\n {ifname} {ipaddr}/{cidr} via {gwaddr} \n Freq: {frequency}GHz, {signaldBm}dBm",
        "tooltip-format-ethernet": "{ifname {ipaddr}/{cidr} via {gwaddr}",
        "format-linked": "{ifname} (No IP) ",
        "format-disconnected": "Disconnected ⚠",
        "format-alt": "{ifname}: {ipaddr}/{cidr}"
    },
	"tray": {
		"icon-size": 20
	},
  "custom/power": {
        "format" : "⏻ ",
		"tooltip": false,
		"menu": "on-click",
	//	"on-click": "nwg-bar",
		"menu-file": "$HOME/.config/waybar/power_menu.xml", // Menu file in resources folder
		"menu-actions": {
			"shutdown": "shutdown now",
			"reboot": "reboot now",
			"suspend": "systemctl suspend",
			"hibernate": "systemctl hibernate"
		}
    },
  "power-profiles-daemon": {
      "format": "{icon}",
      "icon-size": 2,
      "tooltip-format": "Power profile: {profile}\nDriver: {driver}",
      "tooltip": true,
      "format-icons": {
        "default": "",
        "performance": "",
        "balanced": "",
        "power-saver": ""
      }
    },
}
