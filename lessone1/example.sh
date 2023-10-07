#! /bin/sh

# if [ "$1" -eq 3 ]; then
#     echo 'iの値は3です'
#     elif [ "$1" -eq 5 ]; then
#     echo 'iの値は5です'
# else
#     echo 'iの値は3でも5でもありません'
# fi

# if [ "$1" -eq 3 ]
# then
#     :
# fi

# case $1 in
#     3)
#         echo 'iの値は3です'
#     ;;
#     5)
#         echo 'iの値は5です'
#     ;;
#     *)
#         echo 'iの値は3でも5でもありません'
#     ;;
# esac

# for elm in a b c; do
#     echo $elm
# done

# for elm in a b c
# do
#     echo $elm
# done

# for elm; do
#     echo $elm
# done

# for elm in "$@"; do
#     echo $elm
# done

# カレントディレクトリの全てのファイル名を出力
# for file in *; do
#     echo $file
# done

# filelistに記載のファイル名を全て出力
# for file in `cat filelist`; do
#     echo $file
# done

# for num in 1 2 3 4 5 6 7 8 9; do
#     if [ $(( num % 2 )) -eq 0 ]; then
#         continue
#     fi
#     echo $num
# done

# sum=0
# for((i = 0; i < 100; i++)) {
#     (( sum += i ))
# }
# echo $sum

# sum=0
# i=0
# while [ $i -lt 100 ]; do
#     sum=`expr $sum + $i`
#     i=`expr $i + 1`
# done
# echo $sum

# while [ $# -gt 0 ]; do
#     echo $1
#     shift
# done

# 無限ループ
# while :; do
#     echo y
# done

# PS3='コマンド? '

# select cmd in up down left right quiet
# do
#     case $cmd in
#         up)
#             echo '上に移動しました'
#             ;;
#         down)
#             echo '下に移動しました'
#             ;;
#         left)
#             echo '左に移動しました'
#             ;;
#         right)
#             echo '右に移動しました'
#             ;;
#         quiet)
#             echo '終了します'
#             break;;
#         *)
#             echo "値が不正です $REPLY"
#     esac
# done

# uname -a > logfile
# date >> logfile
# who >> logfile

# { uname -a; date; who; } > logfile

# hello() {
#     local hello='hello'
#     echo 'Hello'
# }

# function hello2() {
#     echo 'Hello'
# }

# hello

# (( i = 1 ))
# while (( i < 10 )); do
#     echo $i
#     ( (i++))
# done

# counter=0
# while [ "$counter" -lt 10 ]; do
#     while :; do
#         counter=$(expr "$counter" + 1)
#         continue 2
#     done
# done

# echo '終わったよ'

# day1=Sunday day2=Monday day3=Tuesday

# today=day1

# eval echo \"\$$today\"

# LANG=C; export LANG
# exec myprog

# while getopts cvo: option; do
#     case $option in
#     c) echo 'オプションに-cが指定されました' ;;
#     v) echo 'オプションに-vが指定されました' ;;
#     o) echo 'オプションに-oが指定されました。引数は'"$OPTARG"'です' ;;
#     \?) echo 'オプションが不正です。' ;;
#     esac
# done

# echo "$OPTIND" "$@"

# shift "$(expr $OPTIND - 1)"

# if [ $# -gt 1 ]; then
#     echo '残りの引数' "$@"
# fi

# while
#     echo '1)up
# 2)down
# 3)left
# 4)right
# コマンド? ' 1>&2
#     read -r cmd
# do
#     case $cmd in
#     up) echo '上だよ' ;;
#     down) echo '下だよ' ;;
#     left) echo '左だよ' ;;
#     right) echo '右だよ' ;;
#     *) echo '不正な値だよ' ;;
#     esac
#     echo
# done

# readonly TEST=test
# echo $TEST

# # パス名展開でカレントのファイル全て表示
# echo *
# # -fオプションをセットしてパス名展開を禁止
# set -f
# # パス名展開されず*で表示
# echo *
# # -fオプションのセットを取り消し
# set +f
# # 元に戻る
# echo *

# # 位置パラメーターをセット
# set one two three

# echo "$1" "$2" "$3"

# # -始まりは`--`のあとに値を指定
# opt=-a

# set -- "$opt"

# echo "$1"

# while [ $# -gt 0 ]; do
#     echo "$1"
#     shift
# done

# trap 'echo 終了したよ' 2
# sleep 10

# printf '%d + %d = %d\n' 1 1 2
# printf 'Hello %s\n' Yamanaka

# # 特殊記号などが展開されないように''で括ったほうがいい
# msg='Hello'

# echo "$msg"

# # これでも参照はいい
# echo ${msg}

# # 変数に代償したコマンド名はそのまま参照して使える
# cmd='echo'
# "$cmd" "$msg"

# # 特殊記号含む
# a='*** Hello World!! ***'
# # 変数の再代入時は""いらない
# b=$a

# echo "$b"

# # これは展開した文字列の特殊記号がシェルに解釈されてしまう
# echo $b

# echo "$0"

# var=
# echo "${var:-default}" # default 空文字含む
# echo "${var-default}" #

# var='test'
# echo ${#var}

# printf %s "$var" | wc -c

# dir='/usr/local/bin'

# echo "${dir##*/}" #　bin

# basename "$dir" # bin

# echo "${dir%%/*}" # (全部消えちゃう)
# echo "${dir%/*}"  # /usr/local
# dirname "$dir" # /usr/local

# var='abcdef'
# echo "${var:2:2}" #cd
# echo "${var:2}" # cdef

# message='hello'
# var=message

# echo "${!var}"
# eval echo  "\$$var"

# base64 <<'EOF'
# test test
# test test
# EOF

# test='test'
# base64 <<'EOF'
# $test $test
# $test $test
# EOF

# base64 <<EOF
# $test $test
# $test $test
# EOF

# base64 <<-EOF
#   $test $test
#   $test $test
# EOF

# arr=[]
# arr[0]=1

# echo "${arr[0]}"

# arr=(one two three)
# echo "${arr[@]}"

arr_0='one'
arr_1='two'
arr_2='three'

index=1

eval echo \"\$arr_$index\"
