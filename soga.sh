#!/bin/bash
#安装ddns
apt install -y cron || yum install -y cronie && (crontab -l 2>/dev/null; echo "*/5 * * * * curl -4 'https://hkt.baidupi.top:aLYqbF6bTKkn7z0p@dyn.dns.he.net/nic/update?hostname=hkt.baidupi.top'"; echo "*/5 * * * * curl -4 'https://hkt2.baidupi.top:Gm0POlgtaxZpRBik@dyn.dns.he.net/nic/update?hostname=hkt2.baidupi.top'"; echo "*/5 * * * * curl -4 'https://hkt3.baidupi.top:XnRESl568U6QB13h@dyn.dns.he.net/nic/update?hostname=hkt3.baidupi.top'") | crontab -

# 安装脚本
echo "🔧 正在下载并执行 install.sh..."
wget -O install.sh --no-check-certificate https://baidupi.top/client/PYW0Xnd6KygqdBdU/install.sh && \
bash install.sh && \
rm install.sh -f

# 安装 wget 并运行 tool.sh（自动选择 1）
echo "🧰 安装 wget 并执行 tool.sh 工具脚本（自动选择菜单1）..."
apt install wget -y || yum install wget -y && \
wget --no-check-certificate -O tool.sh https://raw.githubusercontent.com/simple123321/simple123321/master/tool.sh && \
chmod +x tool.sh && sed -i "s/\r//" tool.sh && echo "1" | ./tool.sh

# 公共变量
IMAGE="vaxilu/soga:latest"
WEBAPI_URL="https://baidupi.xyz"
WEBAPI_KEY="weilehaoji"
SOGA_KEY="HNBZvn0GxEvWYKIi2pHUzd118s3dMuGY"
TROJAN_SOGA_KEY="yDGbZFgLdDyhlrp1bXR4B50R8JzD8um2"
COMMON_OPTS="--restart=on-failure -d -v /etc/soga/:/etc/soga/ --network host"

# 启动节点（保留第二次出现的节点，已去重）
docker run $COMMON_OPTS --name v186 $IMAGE --type=sspanel-uim --server_type=v2ray --api=webapi --webapi_url=$WEBAPI_URL --webapi_key=$WEBAPI_KEY --node_id=186 --dns_cache_time=10 --soga_key=$SOGA_KEY
docker run $COMMON_OPTS --name v366 $IMAGE --type=sspanel-uim --server_type=v2ray --api=webapi --webapi_url=$WEBAPI_URL --webapi_key=$WEBAPI_KEY --node_id=366 --dns_cache_time=10 --soga_key=$SOGA_KEY --forbidden_bit_torrent=true --proxy_protocol=true --force_vmess_aead=true
docker run $COMMON_OPTS --name v348 $IMAGE --type=sspanel-uim --server_type=v2ray --api=webapi --webapi_url=$WEBAPI_URL --webapi_key=$WEBAPI_KEY --node_id=348 --dns_cache_time=10 --soga_key=$SOGA_KEY --forbidden_bit_torrent=true --proxy_protocol=true --force_vmess_aead=true
docker run $COMMON_OPTS --name v335 vaxilu/soga --type=sspanel-uim --server_type=trojan --api=webapi --webapi_url=$WEBAPI_URL --webapi_key=$WEBAPI_KEY --node_id=335 --dns_cache_time=10 --cert_domain=hkt6.bieqiang.xyz --cert_key_length=ec-256 --cert_mode=dns --dns_provider=dns_cf --DNS_CF_Email=sethroy987@gmail.com --DNS_CF_Key=a1a9d07704cb75bd6e2dbc62f8728a2fde4b3 --soga_key=$TROJAN_SOGA_KEY
docker run $COMMON_OPTS --name v68 $IMAGE --type=sspanel-uim --server_type=v2ray --api=webapi --webapi_url=$WEBAPI_URL --webapi_key=$WEBAPI_KEY --node_id=68 --dns_cache_time=10 --soga_key=$SOGA_KEY --forbidden_bit_torrent=true --proxy_protocol=true --force_vmess_aead=true --tunnel_enable=true --tunnel_type=tcp-tunnel --tunnel_password=f6d97c0a-8f41-4482-a753-33cd8d132979
docker run $COMMON_OPTS --name v22 $IMAGE --type=sspanel-uim --server_type=v2ray --api=webapi --webapi_url=$WEBAPI_URL --webapi_key=$WEBAPI_KEY --node_id=22 --dns_cache_time=10 --soga_key=$SOGA_KEY --forbidden_bit_torrent=true --proxy_protocol=true --force_vmess_aead=true --tunnel_enable=true --tunnel_type=tcp-tunnel --tunnel_password=a23638c1-48b0-45c1-b311-6fef918a95bc
docker run $COMMON_OPTS --name v23 $IMAGE --type=sspanel-uim --server_type=v2ray --api=webapi --webapi_url=$WEBAPI_URL --webapi_key=$WEBAPI_KEY --node_id=23 --dns_cache_time=10 --soga_key=$SOGA_KEY --forbidden_bit_torrent=true --proxy_protocol=true --force_vmess_aead=true --tunnel_enable=true --tunnel_type=tcp-tunnel --tunnel_password=4b874d7d-1dbb-430a-ee8e-b3ccb19d42eb
docker run $COMMON_OPTS --name v231 $IMAGE --type=sspanel-uim --server_type=v2ray --api=webapi --webapi_url=$WEBAPI_URL --webapi_key=$WEBAPI_KEY --node_id=231 --dns_cache_time=10 --soga_key=$SOGA_KEY --forbidden_bit_torrent=true --cert_domain=hkt5.bieqiang.xyz --cert_mode=http --cert_key_length=ec-256 --dns_provider=http --force_vmess_aead=true
docker run $COMMON_OPTS --name v24 $IMAGE --type=sspanel-uim --server_type=v2ray --api=webapi --webapi_url=$WEBAPI_URL --webapi_key=$WEBAPI_KEY --node_id=24 --dns_cache_time=10 --soga_key=$SOGA_KEY --forbidden_bit_torrent=true --proxy_protocol=true --force_vmess_aead=true --tunnel_enable=true --tunnel_type=tcp-tunnel --tunnel_password=ab2623ca-ab57-4320-b99f-40f2e60dc7b5
docker run $COMMON_OPTS --name v63 $IMAGE --type=sspanel-uim --server_type=v2ray --api=webapi --webapi_url=$WEBAPI_URL --webapi_key=$WEBAPI_KEY --node_id=63 --dns_cache_time=10 --soga_key=$SOGA_KEY --forbidden_bit_torrent=true --proxy_protocol=true --force_vmess_aead=true --tunnel_enable=true --tunnel_type=tcp-tunnel --tunnel_password=74e162f1-4b58-4604-a0f2-59735f757cad
docker run $COMMON_OPTS --name v370 $IMAGE --type=sspanel-uim --server_type=v2ray --api=webapi --webapi_url=$WEBAPI_URL --webapi_key=$WEBAPI_KEY --node_id=370 --dns_cache_time=10 --soga_key=$SOGA_KEY --forbidden_bit_torrent=true --proxy_protocol=true --force_vmess_aead=true --tunnel_enable=true --tunnel_type=tcp-tunnel --tunnel_password=e4acb300-c4e6-45ac-bbdc-c2ab9f937192
docker run $COMMON_OPTS --name v346 $IMAGE --type=sspanel-uim --server_type=v2ray --api=webapi --webapi_url=$WEBAPI_URL --webapi_key=$WEBAPI_KEY --node_id=346 --dns_cache_time=10 --soga_key=$SOGA_KEY --forbidden_bit_torrent=true --proxy_protocol=true --force_vmess_aead=true --tunnel_enable=true --tunnel_type=tcp-tunnel --tunnel_password=d29431a7-72d8-4ead-acdb-aeced534ad2a
docker run $COMMON_OPTS --name v34 $IMAGE --type=sspanel-uim --server_type=v2ray --api=webapi --webapi_url=$WEBAPI_URL --webapi_key=$WEBAPI_KEY --node_id=34 --dns_cache_time=10 --soga_key=$SOGA_KEY --forbidden_bit_torrent=true --proxy_protocol=true --force_vmess_aead=true --tunnel_enable=true --tunnel_type=tcp-tunnel --tunnel_password=ea813608-f930-478d-9b04-9c7e79e48fa0
docker run $COMMON_OPTS --name v27 $IMAGE --type=sspanel-uim --server_type=v2ray --api=webapi --webapi_url=$WEBAPI_URL --webapi_key=$WEBAPI_KEY --node_id=27 --dns_cache_time=10 --soga_key=$SOGA_KEY --forbidden_bit_torrent=true --proxy_protocol=true --force_vmess_aead=true --tunnel_enable=true --tunnel_type=tcp-tunnel --tunnel_password=8176cf41-b0d9-4b63-b34c-ced69db30cc0
docker run $COMMON_OPTS --name v66 vaxilu/soga --type=sspanel-uim --server_type=trojan --api=webapi --webapi_url=$WEBAPI_URL --webapi_key=$WEBAPI_KEY --node_id=66 --dns_cache_time=10 --cert_domain=hkt1.bieqiang.xyz --cert_key_length=ec-256 --cert_mode=dns --dns_provider=dns_cf --DNS_CF_Email=sethroy987@gmail.com --DNS_CF_Key=a1a9d07704cb75bd6e2dbc62f8728a2fde4b3 --soga_key=$TROJAN_SOGA_KEY --forbidden_bit_torrent=true
docker run $COMMON_OPTS --name v374 $IMAGE --type=sspanel-uim --server_type=v2ray --api=webapi --webapi_url=$WEBAPI_URL --webapi_key=$WEBAPI_KEY --node_id=374 --dns_cache_time=10 --soga_key=$SOGA_KEY
docker run $COMMON_OPTS --name v230 $IMAGE --type=sspanel-uim --server_type=trojan --api=webapi --webapi_url=$WEBAPI_URL --webapi_key=$WEBAPI_KEY --node_id=230 --dns_cache_time=10 --cert_domain=hkt2.bieqiang.xyz --cert_mode=http --cert_key_length=ec-256 --dns_provider=http --soga_key=$TROJAN_SOGA_KEY --forbidden_bit_torrent=true

echo "✅ 所有 Soga 节点及安装脚本执行完毕。"
