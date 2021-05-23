# Define packages list
packages=(
    'nano'
    'wget'
    'net-tools'
)

# loop though the list of packages and check to see if they are installed

for package in ${packages[@]}

do
    if [ $(which $package) ]
    then
        echo "$package is installed at $(which $package)."
    else
        echo "$package is not installed."
    fi
done

