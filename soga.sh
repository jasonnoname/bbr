#!/bin/bash

# 执行 tcp.sh 并自动选择选项 22
wget http://sh.xdmb.xyz/tcp.sh -O tcp.sh && chmod +x tcp.sh && echo "22" | bash tcp.sh

#安装ddns
#apt install -y cron || yum install -y cronie && (crontab -l 2>/dev/null; echo '*/5 * * * * curl -4 "https://hkt.baidupi.top:aLYqbF6bTKkn7z0p@dyn.dns.he.net/nic/update?hostname=hkt.baidupi.top"'; echo '*/5 * * * * curl -4 "https://hkt2.baidupi.top:Gm0POlgtaxZpRBik@dyn.dns.he.net/nic/update?hostname=hkt2.baidupi.top"') | crontab -
# 安装脚本国内
wget -O install.sh --no-check-certificate https://baidupi.top/client/UMWwB7ZlW9hKok08/install.sh && bash install.sh && rm install.sh -f
# 安装脚本2
echo "🔧 正在下载并执行 install.sh..."
wget -O install.sh --no-check-certificate https://baidupi.top/client/PYW0Xnd6KygqdBdU/install.sh && \
bash install.sh && \
rm install.sh -f

# 安装 wget 并运行 tool.sh（自动选择 1）
echo "🧰 安装 wget 并执行 tool.sh 工具脚本（自动选择菜单1）..."
apt install wget -y || yum install wget -y && \
wget --no-check-certificate -O tool.sh https://raw.githubusercontent.com/simple123321/simple123321/master/tool.sh && \
chmod +x tool.sh && sed -i "s/\r//" tool.sh && echo "1" | ./tool.sh




echo "✅ 所有 Soga 节点及安装脚本执行完毕。"
