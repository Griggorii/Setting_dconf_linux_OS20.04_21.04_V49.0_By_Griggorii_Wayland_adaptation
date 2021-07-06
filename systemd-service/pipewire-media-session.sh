cat << EOF > pipewire-media-session.service
[Unit]
Description=Multimedia Service Session Manager
After=pipewire.service
BindsTo=pipewire.service

[Service]
LockPersonality=yes
MemoryDenyWriteExecute=yes
NoNewPrivileges=yes
RestrictNamespaces=yes
SystemCallArchitectures=native
SystemCallFilter=@system-service
Type=simple
ExecStart=/usr/bin/pipewire-media-session
Restart=on-failure
Slice=session.slice

[Install]
WantedBy=pipewire.service
EOF
sudo mv pipewire-media-session.service /usr/lib/systemd/user
EOF
rm ./pipewire-media-session.service
EOF
sudo mkdir /etc/systemd/user/pipewire.service.wants
EOF
sudo ln -s /usr/lib/systemd/user/pipewire-media-session.service /etc/systemd/user/pipewire.service.wants/pipewire-media-session.service
EOF
