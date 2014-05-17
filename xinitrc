xrdb -merge ~/.Xresources

xkbcomp -I$HOME/.xkb ~/.xkb/keymap $DISPLAY
xcape -e 'Caps_Lock=Escape;Super_L=Tab'

export GTK_IM_MODULE=fcitx
export QK_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"

udiskie &

exec i3
