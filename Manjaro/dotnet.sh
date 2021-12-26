# download dotnet script
wget https://dot.net/v1/dotnet-install.sh
# set dotnet script executable
chmod +x dotnet-install.sh
# install dotnet sdk: 2.1 - 2.2 - 3.0 - 3.1 - 5.0 - 6.0
./dotnet-install.sh --channel 2.1
./dotnet-install.sh --channel 2.2
./dotnet-install.sh --channel 3.0
./dotnet-install.sh --channel 3.1
./dotnet-install.sh --channel 5.0
./dotnet-install.sh --channel 6.0
echo alias dotnet=$HOME/.dotnet/dotnet >> .bashrc
