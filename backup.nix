{ config, pkgs, nixpkgs, ... }:
{


  services.restic.backups = {
    "localbackup" = {
      initialize = true;
      passwordFile = "/etc/restic-password";
      repository = "/root/backup-target";
      paths = [ "/etc" ];
      timerConfig.OnCalendar = "*:0,15,30,45";
      pruneOpts = [ "--keep-last 10" "--keep-hourly 24" "--keep-daily 7" "--keep-weekly 5" "--keep-monthly 12" "--keep-yearly 100" ];
    };
  };
}
