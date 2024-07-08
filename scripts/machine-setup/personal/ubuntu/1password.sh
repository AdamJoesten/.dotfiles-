curl -sS https://downloads.1password.com/linux/keys/1password.asc | sudo gpg --dearmor --output /usr/share/keyrings/1password-archive-keyring.gpg

echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/1password-archive-keyring.gpg] https://downloads.1password.com/linux/debian/amd64 stable main' | sudo tee /etc/apt/sources.list.d/1password.list

sudo mkdir -p /etc/debsig/policies/AC2D62742012EA22/
 curl -sS https://downloads.1password.com/linux/debian/debsig/1password.pol | sudo tee /etc/debsig/policies/AC2D62742012EA22/1password.pol
 sudo mkdir -p /usr/share/debsig/keyrings/AC2D62742012EA22
 curl -sS https://downloads.1password.com/linux/keys/1password.asc | sudo gpg --dearmor --output /usr/share/debsig/keyrings/AC2D62742012EA22/debsig.gpg

apt-get update && apt-get install 1password 1password-cli -y
1password --version
op --version

while true; do
    echo "Please configure git SSH in the 1password GUI. Once finished, please continue."
    read -p "Do you want to continue? [y/n]: " choice

    case "$choice" in
        y|Y )
            echo "Continuing..."
            exit 0
            ;;
        n|N )
            echo "Exiting..."
            exit 1
            ;;
        * )
            echo "Invalid input. Please enter 'y' for yes or 'n' for no."
            ;;
    esac
done
