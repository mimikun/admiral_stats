// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require dataTables/jquery.dataTables
//= require dataTables/bootstrap/3/jquery.dataTables.bootstrap
//= require highcharts
//= require highcharts/highcharts-more

// チャート画像のダウンロード機能
//= require highcharts/modules/exporting
//= require highcharts/modules/offline-exporting

//= require_tree .

// DataTables のデフォルト設定
var ADMIRAL_STATS_DATATABLES_DEFAULT = {
  // 1ページに表示したいデータが多いため、デフォルトはページング無効とする
  "paging": false,
  "autoWidth": false,
  // 表示の日本語化
  "language": {
    "url": "//cdn.datatables.net/plug-ins/1.10.12/i18n/Japanese.json"
  },
};

