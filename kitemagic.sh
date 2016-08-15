#!/bin/sh
appDir='/Applications/VirtualBox.app'
dir="$appDir/Contents/MacOS"
file="$dir/VBoxManage"

mkdir -p $dir

# Hide the directory since it's not a real app
chflags hidden $appDir

cat > $file <<EOL
#!/bin/sh
if [ "\$1" = "list" ]; then
  echo '"default"'
fi
EOL

chmod +x $file
