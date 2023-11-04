function oops --wraps='eval sudo $history[1]' --description 'alias oops=eval sudo $history[1]'
  eval sudo $history[1] $argv
        
end
