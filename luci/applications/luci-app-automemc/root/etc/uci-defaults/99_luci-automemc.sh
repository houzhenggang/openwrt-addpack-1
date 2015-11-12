#!/bin/sh

uci -q batch <<-EOF >/dev/null
	delete ucitrack.@automemc[-1]
	add ucitrack automemc
	set ucitrack.@automemc[-1].init=automemc
	commit ucitrack
EOF

rm -f /tmp/luci-indexcache
exit 0
