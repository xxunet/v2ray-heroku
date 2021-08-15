#!/bin/sh

cat << EOF > /etc/v2ray/config.json
{
    "policy": {
        "levels": {
            "0": {
                "handshake": 5,
                "connIdle": 300,
                "uplinkOnly": 2,
                "downlinkOnly": 5,
                "statsUserUplink": false,
                "statsUserDownlink": false,
                "bufferSize": 10240
            } },
        "system": {
            "statsInboundUplink": false,
            "statsInboundDownlink": false,
            "statsOutboundUplink": false,
            "statsOutboundDownlink": false
     } },
     "inbounds": [{
        "port": ${PORT},
        "protocol": "${Proto}",
        "settings": { "clients": [{"id": "${ID}","decryption": "none","alterId": ${AID}, "method": "${SRmed}", "password": "$SRpwd"}]},
        "streamSettings": {"network": "${Netw}","wsSettings": {"path": "${WSPath}" } }
     }],
   "outbounds": [{"protocol": "freedom"}]
}
EOF

# Run V2Ray
/usr/bin/v2ray -config /etc/v2ray/config.json
