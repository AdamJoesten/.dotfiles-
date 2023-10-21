function mynvim --wraps='nvim' --description 'alias mynvim=set -x NVIM_APPNAME mynvim && nvim'
    set -x NVIM_APPNAME mynvim && nvim $argv

end
