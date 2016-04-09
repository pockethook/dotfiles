from i3pystatus import Status

status = Status(standalone=True)

# Define colors
color_standard = "#b27f82"
color_attention = "#e7d844"
color_semi_urgent = "#fb6622"
color_urgent = "#fb2222"

# Clock
status.register("clock",
                format="%y-%m-%d %a %H:%M:%S")

# CPU temperature (for Intel CPUs only)
status.register("temp",
                format="{temp:.0f}°C",
                high_factor=0.7,
                color=color_standard,
                color_critical=color_urgent)

# Network. Show the address and up/down state of interface.
# If up, address is green (color_up), and the CIDR-address is shown
# If down, just interface name is shown, in red (format_down, color_down)
status.register("network",
                interface="enp3s0",
                format_up="{interface}: {v4}",
                color_up=color_standard,
                format_down="")

# Shows disk use of directory at path
status.register("disk",
                path="/",
                format="/{avail:.0f}G")

# Shows disk use of directory at path
status.register("disk",
                path="/home",
                format="~{avail:.0f}G")


# Volume info
status.register("alsa",
                format="♪{volume}%",
                color=color_standard,
                color_muted=color_attention)
	
status.run()
