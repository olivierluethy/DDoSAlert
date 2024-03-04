# Überwache den Netzwerkverkehr
$networkInterface = "Ethernet"  # Netzwerkadapter, den du überwachen möchtest
$timeout = 10  # Timeout in Sekunden für die Überwachung

while ($true) {
    $packets = Get-NetAdapterStatistics -Name $networkInterface

    # Überprüfe die Anzahl der eingehenden Pakete pro Sekunde
    if ($packets.ReceivedPerSecond -gt 1000) {
        # Sende eine Benachrichtigung über den DDoS-Angriff
        Send-MailMessage -To "admin@example.com" -From "alert@example.com" -Subject "DDoS-Angriff erkannt" -Body "Es wurden verdächtig viele Pakete empfangen."
    }

    Start-Sleep -Seconds $timeout
}

# SIG # Begin signature block
# MIIFhQYJKoZIhvcNAQcCoIIFdjCCBXICAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUVvwAxhXjnfrrRZBd73lhsl9s
# KnCgggMYMIIDFDCCAfygAwIBAgIQZ0CgUDKeFYRD5zk2fLADZjANBgkqhkiG9w0B
# AQsFADAiMSAwHgYDVQQDDBdQb3dlclNoZWxsIENvZGUgU2lnbmluZzAeFw0yNDAz
# MDQxMDU3MTNaFw0yNTAzMDQxMTE3MTNaMCIxIDAeBgNVBAMMF1Bvd2VyU2hlbGwg
# Q29kZSBTaWduaW5nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvcQ6
# GYuT29dmPkGS9EPaspMcErOdqfTI/+gxjRaotybEF5LsrHTfHtioI0Fts68hpZ8O
# tHz6EKIGSC/2Sujfu76Y69moCSVTTZAxrHVe9Ciour8/UDYYKU5ujgOf4RxgXkGm
# ybgUorJQs07Lo0ZMd3fzSpPVg3e64QJ9D4JvCT9le0bhDhOWGyrJdBgCnpxb9vZj
# a9OdYOVE8JXYQiOYiEmQUnE41jLA+1NKn+I3pEOI0FBLOe2w4i5mxs3CSN3qp4tO
# btBK4mbLxMyDb254KjHqzMR8QNZY9FiPVBKkqzinEtZy+ztVJMcL6k94Vxn9Rd0H
# fOfcYZ+zlo9HtZIjXQIDAQABo0YwRDAOBgNVHQ8BAf8EBAMCB4AwEwYDVR0lBAww
# CgYIKwYBBQUHAwMwHQYDVR0OBBYEFDK0VO27idxBqVB3NjpLBfVg/lSoMA0GCSqG
# SIb3DQEBCwUAA4IBAQBZz0z88GWYT0+KAy7NmdbLNS3U+1cQRSWENZsW0dsQqGtZ
# qV1wxh6ZsvdTgdrKbk7JhnG6jgO0UtOBAeIdfjSer1vVtdD1kesvrFySc5hZsfF+
# JelzfddssuaGvcklv46jSGKNpKRgvhqG2aGzXMV7BZTUG3ii1le6Y294J7IbfBp4
# OAgBVuyCOr06f4UBfYyeIe4H7UllNC3FLP52ZtrftRlq4HxRfeKBL12qnBFgDAvy
# L1FcoG4MhHsehUncpm6ihAC383PtSPLrjQMdNviL75gUjCVPDq2eBmtm+cY5AV6q
# u9unE0gPO+VjTJnslxnqMybzYJfmz5VUNWbPjxphMYIB1zCCAdMCAQEwNjAiMSAw
# HgYDVQQDDBdQb3dlclNoZWxsIENvZGUgU2lnbmluZwIQZ0CgUDKeFYRD5zk2fLAD
# ZjAJBgUrDgMCGgUAoHgwGAYKKwYBBAGCNwIBDDEKMAigAoAAoQKAADAZBgkqhkiG
# 9w0BCQMxDAYKKwYBBAGCNwIBBDAcBgorBgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIB
# FTAjBgkqhkiG9w0BCQQxFgQUS9l9bW7WCvIM8ywG9u7qZ3Wyr+swDQYJKoZIhvcN
# AQEBBQAEggEAbx7PAp4hFN/ZnjQef3QACDHAkNKjQsOH5H3okrsp8wvCONDtUetG
# OWVcZZVqgtGsF0qn0ot2pY7MENuGLhLHb7IvZm6n/3XEPyCGJAEIHpq7B1p1LyGe
# 3MwG/tHgRo8isnVAPPH0qEtobc/4ZR9uw57tPraLuPfBukpw1u+cjvtj655Ib5dV
# dR/jEyU8uMc3g78581k+rL+REhPcG0mIrW+4vY1U4jnvzDO1z3+YLGaDdBXPJbCK
# WXa88Vd+kQDTyZIbJgn+We0D5hsaevtcXSTF+Ld6X+YSHyk7bBh/MwYyDn4wPL/P
# 2IKeWpOeWafk5MnnsyMrfxWPG9anmrd/YQ==
# SIG # End signature block
