
<script src="[+manager_url+]media/script/mootools/mootools.js" type="text/javascript"></script>
<script type="text/javascript" src="[+site_url+]assets/modules/cfFormDB/datepicker.js"></script>
<script type="text/javascript">
window.addEvent('domready', function() {
	var dpOffset = [+datepicker_offset+];
	var dpformat = "[+datetime_format+]";
	var dayNames = [+dayNames+];
	var monthNames = [+monthNames+];
	new DatePicker($('start'),   {'yearOffset': dpOffset,'format':dpformat,'dayNames':dayNames,'monthNames':monthNames,'dateonly':1});
	new DatePicker($('end'), {'yearOffset': dpOffset,'format':dpformat,'dayNames':dayNames,'monthNames':monthNames,'dateonly':1});
});
</script>
<div class="sectionHeader">ファイル出力設定</div>
<div class="sectionBody">
<p>下記設定を確認し、「出力する」ボタンをクリックしてください。[+latest+]</p>
<form action="[+posturl+]" method="post" name="csvform" id="mutate">
<input type="hidden" name="mode" value="csv_generate" />
<table class="grid" style="margin-bottom: 30px;">
  <thead>
    <tr>
      <th style="width: 20%">項目</th>
      <th style="width: 80%">設定</th>
    </tr>
  </thead>
  <tbody>
    <tr style="display:[+display+];">
      <th>出力する項目</th>
      <td>[+fields+]</td>
    </tr>
    <tr class="gridAltItem">
      <th>出力件数</th>
      <td><select name="count"><option value="0">すべて</option><option value="30">30件</option><option value="50">50件</option><option value="100">100件</option></select></td>
    </tr>
    <tr>
      <th>[+mgrlog_datefr+]</th>
      <td>
        <input type="text" id="start" name="start" class="DatePicker imeoff" value="[+startdate+]" />
        <a onclick="document.csvform.start.value=''; return true;" style="cursor:pointer; cursor:hand"><img src="media/style/[+theme+]/images/icons/cal_nodate.gif" border="0" alt="No date" /></a>
      </td>
    </tr>
    <tr>
      <th>[+mgrlog_dateto+]</th>
      <td>
        <input type="text" id="end" name="end" class="DatePicker imeoff" />
        <a onclick="document.csvform.end.value=''; return true;" style="cursor:pointer; cursor:hand"><img src="media/style/[+theme+]/images/icons/cal_nodate.gif" border="0" alt="No date" /></a>
      </td>
    </tr>
    <tr>
      <th>出力順</th>
      <td><select name="sort"><option value="0">日付の古いものから</option><option value="1">日付の新しいものから</option></select></td>
    </tr>
  </tbody>
</table>
<ul class="actionButtons">
<li><a href="#" onclick="document.csvform.mode.value='csv_generate';document.csvform.submit();return false;"><img src="[+icons_save+]" />CSV出力(SJIS)</a></li>
<li><a href="#" onclick="document.csvform.mode.value='xlsx_generate';document.csvform.submit();return false;"><img src="[+icons_save+]" />EXCEL出力</a></li>
</ul>

</form>
</div>