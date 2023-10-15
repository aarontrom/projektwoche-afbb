## Projekt Tor-Relay 

##### Projektmitglieder:
Lindsey, Michel, Aaron

### Beschreibung:
Wir möchten als Projekt ein Tor Relay auf einen V-Server aufsetzen, den Aaron gemietet hat. Dafür werden wir einen SSH-Key auf dem Server hinterlegen, um uns einloggen zu können und den Server vernixen, also NixOS darauf installieren. Das erleichtert das Einrichten des Relays sehr, da es nur eine config-Datei braucht, die dann mit nixos-rebuild switch deployed werden kann und das Relay somit laufen sollte. Dann werden wir uns um eine Backup-Strategie und das Monitoring kümmern. Angedacht ist eine 7-4-12-1-Strategie, bei der 1 Mal täglich, 1 Mal wöchentlich, 1 Mal monatlich und 1 Mal jährlich Backups erstellt, bzw. behalten werden sollen. 
Für das Monitoring muss ich noch Gedanken machen. 


##### Ziele/persönliche Motivation:
- Zum Tor-Netzwerk beitragen
- Menschen helfen, sicherer zu kommunizieren
- zu lernen, wie IT-Dienste stabil betrieben werden können inklusive Monitoring + Backup-Strategie.
- mehr über Linux und insbesondere NixOS lernen.
- Spaß und Freude an der Sache

##### Dienste:
- Monitoring: Prometheus, Grafana,  
- Backup: restic
- Tor-Relay

##### Links:
- https://xeiaso.net/blog/borg-backup-2021-01-09/
- https://xeiaso.net/blog/prometheus-grafana-loki-nixos-2020-11-20/


## Projektdokumentation

#### Aufgabenverteilung

###### Lindsey: 
- Einrichtung Grafana

###### Michel:
- Einrichtung Backup mit Borg

###### Aaron:
- Servereinrichtung: Installation von NixOS + Hinzufügen der SSH-Keys
- Einrichtung Tor-Relay

## Ressourcen:
- 2 vServer, davon 1 produktiv und 1 Backup
- 1 Git-Repository, in dem die config gespeichert ist 

## Monitoring Strategie:

- Monitoring:
- Network-Traffic 
- CPU-Auslastung
- Memory
- Festplattenplatz

## Backup Strategie:

- restic:
- 1 mal stündlich
- 1 mal täglich
- 1 mal wöchentlich 
- 1 mal monatlich

--> mit jeweils Pruning, sodass Speicherplatz effizient genutzt werden kann


## Was ist passiert?

##### Dienstag:
- Projekteinführung und -besprechung
- Aufgabenverteilung
- Gedanken über Monitoring und Backup + Strategie
- Bereitstellen der Server + Installation NixOS
- Einrichten der SSH-Schlüssel, sodass alle Projektmitglieder Zugriff haben

##### Donnerstag: 
- Proxmox-Installation auf einem IT-Labor-Server
- NixOS-Installation auf einem It-Labor Rechner

##### Freitag:
- Einbindung des Tor-Relay
- Einbindung des Monitoring-Systems mit Prometheus und Grafana
- Einbindung des Backupsystems mit restic

