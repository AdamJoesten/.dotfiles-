function wezterm_dev --wraps='cd /home/adamj/Code/not-mine/wezterm/ ; cargo run --release --bin wezterm -- start ; cd -' --description 'alias wezterm_dev=cd /home/adamj/Code/not-mine/wezterm/ ; cargo run --release --bin wezterm -- start ; cd -'
  cd /home/adamj/Code/not-mine/wezterm/ ; cargo run --release --bin wezterm -- start ; cd - $argv
        
end
