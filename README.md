# README

#　起動
```sh
$ docker-compose build
$ docker-compose up
# upすると、両方rails sとbin/webpack-dev-serverが実行される
```
# 確認

http://0.0.0.0:3000/

de-enボタンをクリックして言語が切り替えることを確認してください。

# 必要なライブラリをインストール

```sh
$ docker-compose exec rails yarn install i18next i18next-xhr-backend i18next-browser-languagedetector
```

https://github.com/i18next/react-i18next
https://github.com/i18next/i18next-xhr-backend
https://github.com/i18next/i18next-browser-languageDetector

# Doc
https://react.i18next.com/