# Admiral Stats

[![Join the chat at https://gitter.im/muziyoshiz/admiral_stats](https://badges.gitter.im/muziyoshiz/admiral_stats.svg)](https://gitter.im/muziyoshiz/admiral_stats?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

艦これアーケードのプレイデータを可視化するための Web アプリケーションです。ユーザとして使いたい場合は https://www.admiral-stats.com/ で運用中のサービスをご利用ください。

これ以降は、Admiral Stats の開発に参加したい方や、動作の詳細に興味がある方に向けた情報です。

## ローカル開発環境の構築方法

ローカル開発環境を構築するためのスクリプトは未整備です。以下のような手順で構築できると思います。

- Linux のインストールされた VM を用意する
   - VirtualBox 5.0.20
   - Vagrant 1.8.1
   - box ファイル "puppetlabs/centos-7.2-64-puppet"
- 一般的な Ruby on Rails 5 の動作環境を用意する
- MySQL サーバを立てる
   - MySQL 5.7
- このリポジトリのソースコードを git clone
- bundle install
- rails db:migrate
- rails db:seed
- rails server -b 0.0.0.0

## 開発への参加方法

Pull request を送るか、issue に要望をお寄せください。

## ライセンス

このソフトウェアは [MIT License](http://opensource.org/licenses/MIT) のもとで、オープンソースソフトウェアとして公開されています。

## 関連ページ

- [Admiral Stats](https://www.admiral-stats.com/)
    - このアプリケーションをホスティングしているサイト
- [Twitter (@admiral_stats)](https://twitter.com/admiral_stats)
    - Admiral Stats の運用状況のお知らせ
- [muziyoshiz/admiral_stats_exporter](https://github.com/muziyoshiz/admiral_stats_exporter) (Ruby, PowerShell)
    - SEGA 公式のプレイヤーズサイトからプレイデータをエクスポートするツール（Ruby 版および PowerShell 版）
- [muziyoshiz/admiral_stats_exporter_js](https://github.com/muziyoshiz/admiral_stats_exporter_js) (JavaScript)
    - SEGA 公式のプレイヤーズサイトからプレイデータをエクスポートするツール（ブックマークレット版）
- [muziyoshiz/admiral_stats_parser](https://github.com/muziyoshiz/admiral_stats_parser) (Ruby)
    - Admiral Stats が内部で利用している、プレイデータのパーサ
- [muziyoshiz/admiral_stats_api](https://github.com/muziyoshiz/admiral_stats_api) (Elixir, Phoenix Framework)
    - Elixir 版の API サーバ（試作品。admiral-stats.com で動作しているアプリとは別物）
- [muziyoshiz/admiral_stats_parser_ex](https://github.com/muziyoshiz/admiral_stats_parser_ex) (Elixir)
    - Elixir 版のパーサ（試作品。admiral-stats.com で動作しているアプリとは別物）
