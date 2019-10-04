# README

#　ロカール環境確認

## 起動
```sh
$ docker-compose build
# upすると、両方rails sとbin/webpack-dev-serverが実行される
$ docker-compose up
```
## 確認

http://0.0.0.0:3000/

de-enボタンをクリックして言語が切り替えることを確認してください。

# 設定内容

## react-i18nextのGithub 
https://github.com/i18next/react-i18next

# 必要なライブラリをインストール

```sh
$ yarn install i18next i18next-xhr-backend i18next-browser-languagedetector react-i18next
```
- https://github.com/i18next/react-i18next
- https://github.com/i18next/i18next-xhr-backend
- https://github.com/i18next/i18next-browser-languageDetector

# Doc
https://react.i18next.com/

# 変更内容
https://github.com/kiennt91/rails-react/compare/f0bbc9048e0d7760300647b392636c65dbce3716...master


# 参照
https://shinshin86.hateblo.jp/entry/2019/09/28/084835
