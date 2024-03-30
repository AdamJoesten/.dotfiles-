function li --wraps='eza -lahUm --git --octal-permissions --icons -s type' --wraps='eza --long --almost-all --icons --dereference --git --git-repos --created --modified --header --octal-permissions --time-style long-iso --sort age' --description 'alias li=eza --long --almost-all --icons --dereference --git --git-repos --created --modified --header --octal-permissions --time-style long-iso --sort type'
  eza --long --almost-all --icons --dereference --git --git-repos --created --modified --header --octal-permissions --time-style long-iso --sort type $argv
        
end
