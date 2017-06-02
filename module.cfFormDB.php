/**
 * cfFormDB
 * @version 1.0
 *
 * [モジュール設定]
 * &tableName=記録先のメインテーブル名;text;cfformdb &composer=where is autoload.php?;text;assets/modules/cfFormDB/vendor/autoload.php &viewFields=一覧画面で表示する項目;text; &ignoreFields=無視する項目;text; &defaultView=デフォルト画面;list;list,csv;list &sel_csv_fields=CSV出力項目を選択;list;1,0;1 &headLabels=表示や出力時のヘッダラベル<br>【書式】name|ラベル,name2|ラベル2,…;textarea;
*/
include_once MODX_BASE_PATH . 'assets/modules/cfFormDB/cfformdb.class.php';

$cfdb = new cfFormDB($modx);
$cfdb->action();
