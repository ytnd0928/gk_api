# Dockerfile
FROM ruby:3.0.0

# 必要なパッケージをインストール
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

# 作業ディレクトリを設定
WORKDIR /myapp

# GemfileとGemfile.lockをコピー
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock

# 必要なgemをインストール
RUN bundle install

# アプリケーションのソースコードをコピー
COPY . /myapp

# エントリーポイントスクリプトをコピー
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

# ポート3000を公開
EXPOSE 3000

# メインプロセスを起動
CMD ["rails", "server", "-b", "0.0.0.0"]