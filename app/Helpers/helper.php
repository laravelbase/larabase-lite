<?php

/**
 * apiJsonExport
 * 接口输出
 */
if (! function_exists('apiJsonExport')) {
    function apiJsonExport($iRet=0, $sMsg='', $sOutValue1=[], $sOutValue2=[], $sOutValue3=[], $sOutValue4=[])
    {
        $arr['iRet'] = $iRet;
        $arr['sMsg'] = $sMsg;
        $arr['sOutValue1'] = $sOutValue1;
        $arr['sOutValue2'] = $sOutValue2;
        $arr['sOutValue3'] = $sOutValue3;
        $arr['sOutValue4'] = $sOutValue4;
        echo json_encode($arr);
    }
}