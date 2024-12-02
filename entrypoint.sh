#!/bin/bash
set -e

# 既存のサーバーピッドファイルを削除
rm -f /myapp/tmp/pids/server.pid

# コンテナのメインプロセスを実行
exec "$@"
