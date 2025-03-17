#!/bin/bash
# cd /root/iptv
# read -p "确定要运行脚本吗？(y/n): " choice

# 判断用户的选择，如果不是"y"则退出脚本
# if [ "$choice" != "y" ]; then
#     echo "脚本已取消."
#     exit 0
# fi

time=$(date +%m%d%H%M)
i=0

if [ $# -eq 0 ]; then
  echo "请选择城市："
  echo "1. 陕西（Shaanxi_dianxin）"
  echo "2. 辽宁（Liaoning_liantong）"
  echo "3. 广电（Guangdian）"
  echo "4. 广西（Guangxi_dianxin）"
  echo "5. 福建（Fujian_dianxin）"
  echo "6. 山西（Shanxi_liantong）"
  echo "7. 四川（Sichuan_dianxin）"
  echo "8. 四川（Sichuan_yidong）"
  echo "9. 江西（Jiangxi_dianxin）"
  echo "0. 全部"
  read -t 10 -p "输入选择或在10秒内无输入将默认选择全部: " city_choice

  if [ -z "$city_choice" ]; then
      echo "未检测到输入，自动选择全部选项..."
      city_choice=0
  fi

else
  city_choice=$1
fi

# 根据用户选择设置城市和相应的stream
case $city_choice in
    1)
        city="Shaanxi_dianxin"
        stream="rtp/239.111.205.35:5140"
        channel_key="陕西"
#        url_fofa=$(echo  '"udpxy" && country="CN" && region="Shaanxi" && org="Chinanet" && protocol="http"' | base64 |tr -d '\n')
#        url_fofa="https://fofa.info/result?qbase64=InVkcHh5IiAmJiBjb3VudHJ5PSJDTiIgJiYgcmVnaW9uPSJTaGFhbnhpIiAmJiBvcmc9IkNoaW5hbmV0IiAmJiBwcm90b2NvbD0iaHR0cCI%3D&page_size=20"$url_fofa
        url_fofa="https://fu.yangfeiyue.ip-ddns.com/Shaanxi_dianxin.txt"$url_fofa
        ;;
    2)
        city="Liaoning_liantong"
        stream="rtp/232.0.0.25:1234"
        channel_key="辽宁"
#        url_fofa=$(echo  '"udpxy" && country="CN" && region="Liaoning" && org="CHINA UNICOM China169 Backbone" && protocol="http"' | base64 |tr -d '\n')
#        url_fofa="https://fofa.info/result?qbase64=InVkcHh5IiAmJiBjb3VudHJ5PSJDTiIgJiYgcmVnaW9uPSJMaWFvbmluZyIgJiYgb3JnPSJDSElOQSBVTklDT00gQ2hpbmExNjkgQmFja2JvbmUiICYmIHByb3RvY29sPSJodHRwIg%3D%3D&page_size=20"$url_fofa
        url_fofa="https://ji.yangfeiyue.ip-ddns.com/Liaoning_liantong.txt"$url_fofa
        ;;
    3)
        city="Guangdian"
        stream="udp/224.1.100.121:11111"
        channel_key="广电"
#        url_fofa=$(echo  '"udpxy" && country="CN" && city="Guangdian" && org="Chinanet" && protocol="http"' | base64 |tr -d '\n')
#        url_fofa="https://fofa.info/result?qbase64="$url_fofa
        url_fofa="https://fa.yangfeiyue.ip-ddns.com/Guangdian.txt"$url_fofa
        ;;
    4)
        city="Guangxi_dianxin"
        stream="rtp/239.81.0.250:4056"
        channel_key="广西"
#        url_fofa=$(echo  '"udpxy" && country="CN" && region="Guangxi Zhuangzu" && org="Chinanet" && protocol="http"' | base64 |tr -d '\n')
#        url_fofa="https://fofa.info/result?qbase64=InVkcHh5IiAmJiBjb3VudHJ5PSJDTiIgJiYgcmVnaW9uPSJHdWFuZ3hpIFpodWFuZ3p1IiAmJiBvcmc9IkNoaW5hbmV0IiAmJiBwcm90b2NvbD0iaHR0cCI%3D&page_size=20"$url_fofa
        url_fofa="https://ji.yangfeiyue.ip-ddns.com/Guangxi_dianxin.txt"$url_fofa
        ;;
    5)
        city="Fujian_dianxin"
        stream="rtp/239.61.5.99:1025"
        channel_key="福建"
#        url_fofa=$(echo  '"udpxy" && country="CN" && region="Fujian" && org="Chinanet" && protocol="http"' | base64 |tr -d '\n')
#        url_fofa="https://fofa.info/result?qbase64=InVkcHh5IiAmJiBjb3VudHJ5PSJDTiIgJiYgcmVnaW9uPSJGdWppYW4iICYmIG9yZz0iQ2hpbmFuZXQiICYmIHByb3RvY29sPSJodHRwIg%3D%3D&page_size=20"$url_fofa
        url_fofa="https://ji.yangfeiyue.ip-ddns.com/Fujian_dianxin.txt"$url_fofa
        ;;
    6)
        city="Shanxi_liantong"
        stream="rtp/226.0.1.82:2004"
        channel_key="山西"
#        url_fofa=$(echo  '"udpxy" && country="CN" && region="Shanxi" && org="CHINA UNICOM China169 Backbone" && protocol="http"' | base64 |tr -d '\n')
#        url_fofa="https://fofa.info/result?qbase64=InVkcHh5IiAmJiBjb3VudHJ5PSJDTiIgJiYgcmVnaW9uPSJTaGFueGkiICYmIG9yZz0iQ0hJTkEgVU5JQ09NIENoaW5hMTY5IEJhY2tib25lIiAmJiBwcm90b2NvbD0iaHR0cCI%3D&page_size=20"$url_fofa
        url_fofa="https://fu.yangfeiyue.ip-ddns.com/Shanxi_liantong.txt"$url_fofa
        ;;
    7)
        city="Sichuan_dianxin"
        stream="rtp/239.93.0.252:5140"
        channel_key="四川"
#        url_fofa=$(echo  '"udpxy" && country="CN" && city="Chengdu" && org="Chinanet" && protocol="http"' | base64 |tr -d '\n')
#        url_fofa="https://fofa.info/result?qbase64=InVkcHh5IiAmJiBjb3VudHJ5PSJDTiIgJiYgY2l0eT0iQ2hlbmdkdSIgJiYgb3JnPSJDaGluYW5ldCIgJiYgcHJvdG9jb2w9Imh0dHAi&page_size=20"$url_fofa
        url_fofa="https://fu.yangfeiyue.ip-ddns.com/Sichuan_dianxin.txt"$url_fofa
        ;;
    8)
        city="Sichuan_yidong"
        stream="rtp/239.11.0.151:5140"
        channel_key="四川"
#        url_fofa=$(echo  '"udpxy" && country="CN" && region="Sichuan" && org="China Mobile Communications Group Co., Ltd." && protocol="http"' | base64 |tr -d '\n')
#        url_fofa="https://fofa.info/result?qbase64=InVkcHh5IiAmJiBjb3VudHJ5PSJDTiIgJiYgcmVnaW9uPSJTaWNodWFuIiAmJiBvcmc9IkNoaW5hIE1vYmlsZSBDb21tdW5pY2F0aW9ucyBHcm91cCBDby4sIEx0ZC4iICYmIHByb3RvY29sPSJodHRwIg%3D%3D&page_size=20"$url_fofa
        url_fofa="https://li.yangfeiyue.ip-ddns.com/Sichuan_yidong.txt"$url_fofa
        ;;
    9)
        city="Jiangxi_dianxin"
        stream="rtp/239.252.220.242:5140"
        channel_key="江西"
#        url_fofa=$(echo  '"udpxy" && country="CN" && region="Jiangxi" && org="Chinanet" && protocol="http"' | base64 |tr -d '\n')
#        url_fofa="https://fofa.info/result?qbase64=InVkcHh5IiAmJiBjb3VudHJ5PSJDTiIgJiYgcmVnaW9uPSJKaWFuZ3hpIiAmJiBvcmc9IkNoaW5hbmV0IiAmJiBwcm90b2NvbD0iaHR0cCI%3D&page_size=20"$url_fofa
        url_fofa="https://li.yangfeiyue.ip-ddns.com/Jiangxi_dianxin.txt"$url_fofa
        ;;
    0)
        # 如果选择是“全部选项”，则逐个处理每个选项
        for option in {1..20}; do
          bash  "$0" $option  # 假定fofa.sh是当前脚本的文件名，$option将递归调用
        done
        exit 0
        ;;

    *)
        echo "错误：无效的选择。"
        exit 1
        ;;
esac



# 使用城市名作为默认文件名，格式为 CityName.ip
ipfile="ip/${city}.ip"
only_good_ip="ip/${city}.onlygood.ip"
rm -f $only_good_ip
# 搜索最新 IP
echo "===============从 fofa 检索 ip+端口================="
curl -o test.html "$url_fofa"
#echo $url_fofa
echo "$ipfile"
grep -E '^\s*[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+:[0-9]+$' test.html | grep -oE '[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+:[0-9]+' > "$ipfile"
rm -f test.html
# 遍历文件 A 中的每个 IP 地址
while IFS= read -r ip; do
    # 尝试连接 IP 地址和端口号，并将输出保存到变量中
    tmp_ip=$(echo -n "$ip" | sed 's/:/ /')
    echo "nc -w 1 -v -z $tmp_ip 2>&1"
    output=$(nc -w 1 -v -z $tmp_ip 2>&1)
    echo $output    
    # 如果连接成功，且输出包含 "succeeded"，则将结果保存到输出文件中
    if [[ $output == *"succeeded"* ]]; then
        # 使用 awk 提取 IP 地址和端口号对应的字符串，并保存到输出文件中
        echo "$output" | grep "succeeded" | awk -v ip="$ip" '{print ip}' >> "$only_good_ip"
    fi
done < "$ipfile"

echo "===============检索完成================="

# 检查文件是否存在
if [ ! -f "$only_good_ip" ]; then
    echo "错误：文件 $only_good_ip 不存在。"
    exit 1
fi

lines=$(wc -l < "$only_good_ip")
echo "【$only_good_ip】内 ip 共计 $lines 个"

i=0
time=$(date +%Y%m%d%H%M%S) # 定义 time 变量
while IFS= read -r line; do
    i=$((i + 1))
    ip="$line"
    url="http://$ip/$stream"
    echo "$url"
    curl "$url" --connect-timeout 3 --max-time 10 -o /dev/null >zubo.tmp 2>&1
    a=$(head -n 3 zubo.tmp | awk '{print $NF}' | tail -n 1)

    echo "第 $i/$lines 个：$ip $a"
    echo "$ip $a" >> "speedtest_${city}_$time.log"
done < "$only_good_ip"

rm -f zubo.tmp
awk '/M|k/{print $2"  "$1}' "speedtest_${city}_$time.log" | sort -n -r >"result/result_${city}.txt"
cat "result/result_${city}.txt"
ip1=$(awk 'NR==1{print $2}' result/result_${city}.txt)
ip2=$(awk 'NR==2{print $2}' result/result_${city}.txt)
ip3=$(awk 'NR==3{print $2}' result/result_${city}.txt)
rm -f "speedtest_${city}_$time.log"

# 用 2 个最快 ip 生成对应城市的 txt 文件
program="template/template_${city}.txt"

sed "s/ipipip/$ip1/g" "$program" > tmp1.txt
sed "s/ipipip/$ip2/g" "$program" > tmp2.txt
cat tmp1.txt tmp2.txt > "txt/${city}.txt"

rm -rf tmp1.txt tmp2.txt


#--------------------合并所有城市的txt文件为:   zubo.txt-----------------------------------------

echo "陕西,#genre#" >zubo.txt
cat txt/Shaanxi_dianxin.txt >>zubo.txt
echo "辽宁,#genre#" >>zubo.txt
cat txt/Liaoning_liantong.txt >>zubo.txt
echo "广电,#genre#" >>zubo.txt
cat txt/Guangdian.txt >>zubo.txt
echo "广西,#genre#" >>zubo.txt
cat txt/Guangxi_dianxin.txt >>zubo.txt
echo "福建,#genre#" >>zubo.txt
cat txt/Fujian_dianxin.txt >>zubo.txt
echo "山西,#genre#" >>zubo.txt
cat txt/Shanxi_liantong.txt >>zubo.txt
echo "四川,#genre#" >>zubo.txt
cat txt/Sichuan_dianxin.txt >>zubo.txt
echo "四川,#genre#" >>zubo.txt
cat txt/Sichuan_yidong.txt >>zubo.txt
echo "江西,#genre#" >>zubo.txt
cat txt/Jiangxi_dianxin.txt >>zubo.txt

for a in result/*.txt; do echo "";echo "========================= $(basename "$a") ==================================="; cat $a; done
