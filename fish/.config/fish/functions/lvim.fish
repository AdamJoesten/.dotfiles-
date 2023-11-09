function lvim --wraps='nvim' --description 'alias lvim=set -x NVIM_APPNAME lazyvim && nvim'
    set -x NVIM_APPNAME lazyvim && nvim $argv

end
