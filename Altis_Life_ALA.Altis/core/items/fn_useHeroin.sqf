/*
    File: fn_heroin.sqf
    Description:
    heroin effects.
	*/
closeDialog 0;

hint "Heroin ftw!";
sleep 3;

"colorInversion" ppEffectEnable true;
"chromAberration" ppEffectEnable true;
for "_i" from 0 to 44 do
{
    "colorInversion" ppEffectAdjust [random 1,random 1,random 1];
    "colorInversion" ppEffectCommit 1;
    "chromAberration" ppEffectAdjust [random 15 / 32, random 15 / 32, false];
    "chromAberration" ppEffectCommit (0.3 + random 0.1);
    sleep 1;
};
"chromAberration" ppEffectAdjust [0,0,true];
"chromAberration" ppEffectCommit 5;
 "colorInversion" ppEffectAdjust [0,0,0];
 "colorInversion" ppEffectCommit 5;
sleep 6;
"colorInversion" ppEffectEnable false;
"chromAberration" ppEffectEnable false;