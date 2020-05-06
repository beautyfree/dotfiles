# Credit goes to https://esham.io/2018/02/zsh-profiling
if [ -f $HOME/.zshrc.profiler ]; then

   source $HOME/.dotfiles/zsh/utils/profiler.zsh
   zmodload zsh/datetime
   setopt PROMPT_SUBST
   PS4='+$EPOCHREALTIME %N:%i> '

   zshrc_profiler_logfile=$TMPDIR/zshrc_profiler.$$.log
   echo "Logging script execution to $zshrc_profiler_logfile"
   exec 3>&2 2>$zshrc_profiler_logfile
   setopt XTRACE
fi
