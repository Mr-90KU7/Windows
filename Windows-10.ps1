$licence_key = "VABYADkAWABEAC0AOQA4AE4ANwBWAC0ANgBXAE0AUQA2AC0AQgBYADcARgBHAC0ASAA4AFEAOQA5AA==", "MwBLAEgAWQA3AC0AVwBOAFQAOAAzAC0ARABHAFEASwBSAC0ARgA3AEgAUABSAC0AOAA0ADQAQgBNAA==", "NwBIAE4AUgBYAC0ARAA3AEsARwBHAC0AMwBLADQAUgBRAC0ANABXAFAASgA0AC0AWQBUAEQARgBIAA==", "UABWAE0ASgBOAC0ANgBEAEYAWQA2AC0AOQBDAEMAUAA2AC0ANwBCAEsAVABUAC0ARAAzAFcAVgBSAA==", "VwAyADYAOQBOAC0AVwBGAEcAVwBYAC0AWQBWAEMAOQBCAC0ANABKADYAQwA5AC0AVAA4ADMARwBYAA==", "TQBIADMANwBXAC0ATgA0ADcAWABLAC0AVgA3AFgATQA5AC0AQwA3ADIAMgA3AC0ARwBDAFEARwA5AA==", "TgBXADYAQwAyAC0AUQBNAFAAVgBXAC0ARAA3AEsASwBLAC0AMwBHAEsAVAA2AC0AVgBDAEYAQgAyAA==", "MgBXAEgANABOAC0AOABRAEcAQgBWAC0ASAAyADIASgBQAC0AQwBUADQAMwBRAC0ATQBEAFcAVwBKAA==", "TgBQAFAAUgA5AC0ARgBXAEQAQwBYAC0ARAAyAEMAOABKAC0ASAA4ADcAMgBLAC0AMgBZAFQANAAzAA==", "RABQAEgAMgBWAC0AVABUAE4AVgBCAC0ANABYADkAUQAzAC0AVABKAFIANABIAC0ASwBIAEoAVwA0AA=="
function Decode($Dcode){
[System.Text.Encoding]::Unicode.GetString([System.Convert]::FromBase64String($Dcode))
}

function Activating($Edition){
   cscript //nologo slmgr.vbs /ipk $Edition
   cscript //nologo slmgr.vbs /skms kms8.msguides.com
   cscript //nologo slmgr.vbs /ato
}

Write-Host "
{01}=> Home 
{02}=> Home N 
{03}=> Home Single Language 
{04}=> Home Country Specific 
{05}=> Professional 
{06}=> Professional N
{07}=> Education 
{08}=> Education N
{09}=> Enterprise
{10}=> Enterprise N
" -ForegroundColor Green

[Int]$Os_type = Read-Host -Promp "Select your Windows edition"

if($Os_type -eq 01){
Activating(Decode($licence_key[0]))
}
elseif($Os_type -eq 02){
Activating(Decode($licence_key[1])
}
elseif($Os_type -eq 03){
Activating(Decode($licence_key[2])
}
elseif($Os_type -eq 04){
Activating(Decode($licence_key[3])
}
elseif(Os_type -eq 05){
Activating(Decode($licence_key[04])
}
elseif(Os_type -eq 06){
Activating(Decode($licence_key[05])
}
elseif(Os_type -eq 07){
Activating(Decode($licence_key[06])
}
elseif(Os_type -eq 08){
Activating(Decode($licence_key[07])
}
elseif(Os_type -eq 09){
Activating(Decode($licence_key[08])
}
elseif(Os_type -eq 10){
Activatng(Decode($licence_key[09])
}
else{
write-host "Your Input Wrong Please Enter Valid Number" -ForegroundColor Red
}
