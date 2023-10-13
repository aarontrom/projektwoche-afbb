
{
  config,
  pkgs,
  ...
}: {
services.tor = {
  enable = true;
  openFirewall = true;
  relay = {
      enable = true;
      role = "relay";
    };
    settings = {
      ORPort = 6666;
      ContactInfo = "akato(at)tuta.io";
      Nickname = "akato";
      Address = "192.168.170.131";
    };
  };
}



