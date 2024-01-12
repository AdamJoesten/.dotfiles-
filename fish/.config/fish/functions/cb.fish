function cb --wraps='flatpak run app.getclipboard.Clipboard' --description 'alias cb=flatpak run app.getclipboard.Clipboard'
  flatpak run app.getclipboard.Clipboard $argv
        
end
