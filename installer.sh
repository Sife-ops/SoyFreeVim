#!/bin/sh

#    _           _        _ _
#   (_)_ __  ___| |_ __ _| | | ___ _ __
#   | | '_ \/ __| __/ _` | | |/ _ \ '__|
#   | | | | \__ \ || (_| | | |  __/ |
#   |_|_| |_|___/\__\__,_|_|_|\___|_|

modsdir="$(pwd)/modules"
initdir="$(pwd)/plugin"

ln -sf "${modsdir}/50-begin.vim" "$initdir"/
ln -sf "${modsdir}/51-gruvbox.vim" "$initdir"/
ln -sf "${modsdir}/51-vim-commentary.vim" "$initdir"/
ln -sf "${modsdir}/51-vim-surround.vim" "$initdir"/
ln -sf "${modsdir}/52-end.vim" "$initdir"/
ln -sf "${modsdir}/53-settings.vim" "$initdir"/
ln -sf "${modsdir}/70-functions.vim" "$initdir"/
ln -sf "${modsdir}/80-autocmd.vim" "$initdir"/
ln -sf "${modsdir}/80-keymap.vim" "$initdir"/
ln -sf "${modsdir}/90-options.vim" "$initdir"/
ln -sf "$(pwd)/skeletons" "${XDG_DATA_HOME:-${HOME}/.local/share}/"
