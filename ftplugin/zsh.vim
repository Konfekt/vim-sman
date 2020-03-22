if !has('gui_running') && executable('less')
  command! -buffer -nargs=1 RunHelp silent exe '!zsh -ic "autoload -Uz run-help; run-help <args> 2>/dev/null | LESS= less"' | redraw!
elseif has('terminal')
  command! -buffer -nargs=1 RunHelp silent exe ':term zsh -ic "autoload -Uz run-help; run-help <args>"'
else
  command! -buffer -nargs=1 RunHelp echo system('zsh -ic "autoload -Uz run-help; run-help <args> 2>/dev/null"')
endif
setlocal keywordprg=:RunHelp

