#!/bin/sh

if [ $# -ne 4 ];then
	echo "Usage: sh $0 <I|D|W|E> <message> <local_file> <file_to_save_log>.  I:inform, D:Debug, W: Warning, E:Error"
	return
elif [ $1 = 'I' ];then
	LEVEL='INFORM'
elif [ $1 = 'D' ];then
        LEVEL='DEBUG'
elif [ $1 = 'E' ];then
        LEVEL='ERROR'
elif [ $1 = 'W' ];then
        LEVEL='WARNING'
else
	echo "Usage: sh $0 <I|D|W|E> <message> <local_file> <file_to_save_log>"
        return
fi
echo "{\"levelname\": \"$LEVEL\", \"asctime\": \"$(date +%Y-%m-%d) $(date +%T)\", \"filename\": \"$3\", \"funcName\": \"-\", \"lineno\": 0, \"message\": \"$2\"}" >> $4
