# DDoSAlert

A small Windows **PowerShell** script that watches your network adapter and raises an
alert when incoming traffic spikes look like a possible DDoS / flooding attack.

## What it does

- Detects the active connection (Wi-Fi or Ethernet) via `Get-NetConnectionProfile`.
- Polls adapter statistics (`Get-NetAdapterStatistics`) in a loop.
- Compares the incoming packet rate against a configurable **threshold**.
- When the threshold is exceeded, sends an e-mail notification about the possible
  attack (`Send-MailMessage`).

## Requirements

- Windows with PowerShell 5+ (uses the `Net*` cmdlets).
- For the e-mail alert: a reachable SMTP server and valid `-To` / `-From` addresses.

## Usage

```powershell
# Run from an elevated PowerShell prompt
.\DDoS-allert.ps1
```

Adjust the settings at the top of `DDoS-allert.ps1` to your environment:

- `$threshold` — suspicious packets-per-second level (default `1000`).
- `$timeout` — monitoring interval in seconds.
- The `Send-MailMessage` recipient, sender and SMTP details.

> Note: the script contains an Authenticode signature block; if you edit it, the
> signature will no longer match and you may need to re-sign or adjust your
> execution policy.

## Disclaimer

This is a lightweight monitoring/learning tool, not a full intrusion-detection
system. A high packet rate can have legitimate causes — tune the threshold for your
own network before relying on the alerts.
