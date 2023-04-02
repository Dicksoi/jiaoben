#!/bin/bash

blue(){
    echo -e "\033[34m\033[01m$1\033[0m"
}
green(){
    echo -e "\033[32m\033[01m$1\033[0m"
}
yellow(){
    echo -e "\033[33m\033[01m$1\033[0m"
}
red(){
    echo -e "\033[31m\033[01m$1\033[0m"
}

if [[ -f /etc/redhat-release ]]; then
    release="centos"
    systemPackage="yum"
    systempwd="/usr/lib/systemd/system/"
elif cat /etc/issue | grep -Eqi "debian"; then
    release="debian"
    systemPackage="apt-get"
    systempwd="/lib/systemd/system/"
elif cat /etc/issue | grep -Eqi "ubuntu"; then
    release="ubuntu"
    systemPackage="apt-get"
    systempwd="/lib/systemd/system/"
elif cat /etc/issue | grep -Eqi "centos|red hat|redhat"; then
    release="centos"
    systemPackage="yum"
    systempwd="/usr/lib/systemd/system/"
elif cat /proc/version | grep -Eqi "debian"; then
    release="debian"
    systemPackage="apt-get"
    systempwd="/lib/systemd/system/"
elif cat /proc/version | grep -Eqi "ubuntu"; then
    release="ubuntu"
    systemPackage="apt-get"
    systempwd="/lib/systemd/system/"
elif cat /proc/version | grep -Eqi "centos|red hat|redhat"; then
    release="centos"
    systemPackage="yum"
    systempwd="/usr/lib/systemd/system/"
fi

$systemPackage -y install wget curl

vps_superspeed(){
	wget -qO- --no-check-certificate https://raw.githubusercontent.com/oooldking/script/master/superbench.sh | bash
}

vps_zbench(){
	wget -N --no-check-certificate https://raw.githubusercontent.com/FunctionClub/ZBench/master/ZBench-CN.sh && bash ZBench-CN.sh
}

vps_testrace(){
	bash <(curl -Ls https://raw.githubusercontent.com/sjlleo/nexttrace/main/nt_install.sh)
}

vps_LemonBenchIntl(){
    curl -fsL https://ilemonra.in/LemonBenchIntl | bash -s fast
}

vps_Cn2GIA(){
    wget -N --no-check-certificate https://raw.githubusercontent.com/wangn9900/testvps/master/return.sh && bash return.sh
}

vps_make-a(){
    wget -P /root -N --no-check-certificate "https://raw.githubusercontent.com/Yssscloud/v2ray-agent/master/install.sh" && chmod 700 /root/install.sh && /root/install.sh
}

vps_wulabing1(){
    wget -N --no-check-certificate -q -O install.sh "https://raw.githubusercontent.com/wulabing/V2Ray_ws-tls_bash_onekey/master/install.sh" && chmod +x install.sh && bash install.sh
}

vps_wulabing2(){
     bash <(curl -fsSL https://git.io/hysteria.sh)
}
vps_bt1(){
   yum install -y wget && wget -O install.sh http://download.bt.cn/install/install_6.0.sh && sh install.sh
}

vps_bt2(){
   wget -O install.sh http://download.bt.cn/install/install-ubuntu_6.0.sh && bash install.sh
}

vps_bt3(){
   wget -O install.sh http://download.bt.cn/install/install-ubuntu_6.0.sh && sudo bash install.sh
}

vps_bt4(){
   curl http://v7.hostcli.com/install/update6.sh|bash
}
vps_bbr1(){
   wget -N --no-check-certificate "https://raw.githubusercontent.com/chiakge/Linux-NetSpeed/master/tcp.sh" && chmod +x tcp.sh && ./tcp.sh
}

vps_bbr2(){
  wget -N --no-check-certificate "https://raw.githubusercontent.com/ylx2016/Linux-NetSpeed/master/tcp.sh" && chmod +x tcp.sh && ./tcp.sh
}
vps_nf(){
  bash <(curl -sSL https://raw.githubusercontent.com/wxfyes/nf/main/nf.sh)
}
vps_nf1(){
  bash <(curl -L -s https://raw.githubusercontent.com/wxfyes/nf/main/check.sh)
}
vps_v2-ui(){
  bash <(curl -Ls https://raw.githubusercontent.com/vaxilu/x-ui/master/install.sh)
}
vps_suoha(){
  wget https://www.baipiao.eu.org/suoha.sh -O suoha.sh && bash suoha.sh
}
vps_root(){
  wget -N --no-check-certificate https://raw.githubusercontent.com/Dicksoi/root-login/main/root.sh && bash root.sh
}
vps_trojan(){
  wget https://raw.githubusercontent.com/wxfyes/trojan/master/Trojan.sh && bash Trojan.sh
}
vps_frps(){
  wget https://raw.githubusercontent.com/MvsCode/frps-onekey/master/install-frps.sh -O ./install-frps.sh && chmod 700 ./install-frps.sh && ./install-frps.sh install
}
vps_nps(){
  wget https://github.com/ehang-io/nps/releases/download/v0.26.10/linux_amd64_server.tar.gz && tar -zxvf linux_amd64_server.tar.gz && sudo ./nps install && ./nps start
}
vps_warp(){
  wget -N https://raw.githubusercontent.com/fscarmen/warp/main/menu.sh && bash menu.sh
}
vps_gost(){
  wget --no-check-certificate -O gost.sh https://raw.githubusercontent.com/KANIKIG/Multi-EasyGost/master/gost.sh && chmod +x gost.sh && ./gost.sh
}
vps_ehco(){
  wget -N --no-check-certificate https://github.com/Ehco1996/ehco/releases/download/v0.1.4/ehco_0.1.4_Linux_amd64.tar.gz && tar -zxf ehco_0.1.4_Linux_amd64.tar.gz && chmod +x ehco
}
vps_ip(){
  curl ip.p3terx.com
}
vps_openvz(){
  wget --no-cache -O lkl-haproxy.sh https://github.com/mzz2017/lkl-haproxy/raw/master/lkl-haproxy.sh && bash lkl-haproxy.sh
}
vps_warp1(){
 wget -N --no-check-certificate https://raw.githubusercontent.com/Dicksoi/acme-1key/master/acme1key.sh && bash acme1key.sh
}
vps_jg(){
   bash <(curl -fsSL https://raw.githubusercontent.com/wxfyes/bt/master/installjg.sh)
}
vps_xd(){
   bash <(wget --no-check-certificate -qO- 'https://sh.xdmb.xyz/xiandan/xd.sh')
}  
vps_nezha(){
   curl -L https://raw.githubusercontent.com/naiba/nezha/master/script/install.sh  -o nezha.sh && chmod +x nezha.sh && bash nezha.sh
}
vps_jsnf(){
   wget --no-check-certificate -O dnsmasq_sniproxy.sh https://raw.githubusercontent.com/myxuchangbin/dnsmasq_sniproxy_install/master/dnsmasq_sniproxy.sh && bash dnsmasq_sniproxy.sh -f
}
vps_cdn(){
   wget https://raw.githubusercontent.com/Har-Kuun/OneClickCDN/master/translation/translated_scripts/OneClickCDN_zh-CN.sh && sudo bash OneClickCDN_zh-CN.sh
}
vps_tcp(){
   wget https://raw.githubusercontent.com/wxfyes/bt/master/tools.sh && bash tools.sh
}   
open_ports(){
    systemctl stop firewalld.service 2>/dev/null
    systemctl disable firewalld.service 2>/dev/null
    setenforce 0 2>/dev/null
    ufw disable 2>/dev/null
    iptables -P INPUT ACCEPT 2>/dev/null
    iptables -P FORWARD ACCEPT 2>/dev/null
    iptables -P OUTPUT ACCEPT 2>/dev/null
    iptables -t nat -F 2>/dev/null
    iptables -t mangle -F 2>/dev/null
    iptables -F 2>/dev/null
    iptables -X 2>/dev/null
    netfilter-persistent save 2>/dev/null
    green "VPS的防火墙端口已放行！"
}
start_menu(){
    clear
	green "=========================================================="
         blue " 本脚本支持：CentOS7+ / Debian9+ / Ubuntu16.04+"
         blue " 此脚本源于网络，仅仅只是汇聚脚本功能，方便大家使用而已！"
	green "=========================================================="
      red " 脚本测速会大量消耗 VPS 流量，请悉知！"
    green "==========VPS测速工具==================================="
     yellow " 1. VPS 三网测速 "
     yellow " 2. VPS 综合性能测试  （包含测速 - 英文显示）"
	 yellow " 3. VPS nexttrace    （可视化路由跟踪工具- 中文显示）"
	 yellow " 4. VPS 快速全方位测速（包含性能、回程、速度 - 英文显示）"
	 yellow " 5. VPS 回程线路测试 （假CN2线路，脚本无法测试）"
	green "==========科学上网一键脚本==============================="
	 yellow " 6. xray8合1一键安装脚本 "
	 yellow " 7. wulabing-v2ray一键安装脚本 "
	 yellow " 8. Hi_Hysteria一键安装脚本 "
	 yellow " 9. X-ui面板一键安装 "
	 yellow " 10.suoha一键安装脚本 "
	 yellow " 11. Trojan一键安装（atrandys版）"
	green "===================宝塔面板官方脚本======================="
	 yellow " 12. centos系统一键安装 "
	 yellow " 13. debian系统一键安装 "
	 yellow " 14. ubuntu系统一键安装 "
	green "========宝塔面板破解，需先安装官方版再运行此脚本============"
	 yellow " 15. 宝塔破解企业版 一键破解 "
	green "===================BBR加速==============================="
	 yellow " 16. BBR一键加速（稳定版）"
	 yellow " 17. BBR一键加速（最新版）"
	 yellow " 18. openvz BBR一键加速 "
	green "====================解锁Netflix检测======================="
	 yellow " 19. 启动Netflix检测脚本 "
	 yellow " 20. 流媒体一键检测脚本 "
	green "===== ====其他工具（KVM架构VPS通用）=========="
	 yellow " 21. 一键设置root密码 "
	 yellow " 22. frp内网穿透一键安装 "
	 yellow " 23. NPS内网穿透一键安装 "
	 yellow " 24. WARP 一键配置脚本 "
	 yellow " 25. gost隧道一键中转 "
	 yellow " 26. Ehco隧道一键中转 "
	 yellow " 27. 一键关闭防火墙 "
	 yellow " 28. 一键域名申请证书脚本 "
	 yellow " 29. 极光转发面板 "
	 yellow " 30. 咸蛋转发面板 "
	 yellow " 31. 哪吒监控探针 "
	 yellow " 32. DNS解锁奈飞 "
	 yellow " 33. 一键CDN搭建脚本 "
	 yellow " 34. NeKo 一键系统优化 "
        red " 0. 退出脚本 "
    echo
    read -p "请输入数字:" num
    case "$num" in
    	1)
		vps_superspeed
		;;
		2)
		vps_zbench
		;;
		3)
		vps_testrace
		;;
		4)
		vps_LemonBenchIntl
		;;
		5)
		vps_Cn2GIA
		;;
		6)
		vps_make-a
		;;
		7)
		vps_wulabing1
		;;
		8)
		vps_wulabing2
		;;
		9)
		vps_v2-ui
		;;
		10)
		vps_suoha
		;;
		11)
		vps_trojan
		;;
		12)
		vps_bt1
		;;
		13)
		vps_bt2
		;;
		14)
		vps_bt3
		;;
		15)
		vps_bt4
		;;
		16)
		vps_bbr1
		;;
		17)
		vps_bbr2
		;;
		18)
		vps_openvz
		;;
		19)
		vps_nf
		;;
		20)
		vps_nf1
		;;
		21)
	    vps_root
		;;
		22)
		vps_frps
		;;
		23)
		vps_nps
		;;
		24)
		vps_warp
		;;
		25)
		vps_gost
		;;
		26)
		vps_ehco
		;;
		27)
		open_ports
		;;
		28)
		vps_warp1
		;;
		29)
		vps_jg
		;;
		30)
		vps_xd
		;;
		31)
		vps_nezha
		;;
		32)
		vps_jsnf
		;;
		33)
		vps_cdn
		;;
		34)
		vps_tcp
		;;
		0)
		exit 0
		;;
		*)
	clear
	echo "请输入正确数字"
	sleep 2s
	start_menu
	;;
    esac
}

start_menu
