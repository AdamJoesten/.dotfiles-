function lazyvim --wraps='nvim' --description 'alias lazyvim=set -x NVIM_APPNAME lazyvim && nvim'
    set -x NVIM_APPNAME lazyvim && nvim $argv

end
