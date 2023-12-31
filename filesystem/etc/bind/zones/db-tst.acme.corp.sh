cat <<EOF >/etc/bind/zones/db-tst.acme.corp.conf
;
; BIND data file for local loopback interface
;
\$TTL    604800
@       IN      SOA     nameserver1.adm.acme.corp. root.nameserver1.adm.acme.corp. (
                           6004         ; Serial
                             1D         ; Refresh
                             1H         ; Retry
                             1W         ; Expire
                             3H )       ; Negative Cache TTL
;

; name servers - NS records
 IN  NS  nameserver1.adm.acme.corp.

; 10.30.0.0/16 - A records

slb.k3s.tst.acme.corp.                  IN A 10.30.0.31
alb.k3s.tst.acme.corp.                  IN A 10.30.0.32
i18n.iam.tst.acme.corp.                 IN A 10.30.0.32
hub.iam.tst.acme.corp.                  IN A 10.30.0.32
access.iam.tst.acme.corp.               IN A 10.30.0.32
EOF
