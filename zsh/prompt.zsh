autoload -Uz promptinit && promptinit

local BRBLACK=%B{234}
local BLACK=%B{235}
local BRGREEN=%B{240}
local BRYELLOW=%B{241}
local BRBLUE=%B{244}
local BRCYAN=%B{245}
local WHITE=%B{254}
local BRWHITE=%B{230}
local YELLOW=%F{136}
local ORANGE=%F{166}
local RED=%F{160}
local MAGENTA=%F{125}
local VIOLET=%F{61}
local BLUE=%F{033}
local CYAN=%F{037}
local GREEN=%F{064}

PROMPT='${MAGENTA}%n${CYAN}@${YELLOW}%m${RED}:${CYAN}~${RED}|%f  '
