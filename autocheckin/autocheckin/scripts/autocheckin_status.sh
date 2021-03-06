#!/bin/sh

alias echo_date1='echo $(date +%Y年%m月%d日\ %X)'
export KSROOT=/koolshare
source $KSROOT/scripts/base.sh

date=`echo_date1`
signdog_pid=$(pidof signdog)

if [ -n "$signdog_pid" ];then
	http_response "【$date】 自动签到 已开启！"
else
	http_response "<font color='#FF0000'>【警告】：自动签到还没有运行！</font>"
fi

