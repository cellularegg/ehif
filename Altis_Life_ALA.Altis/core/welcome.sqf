/*
	File: welcome.sqf
	Author: ZedBuster
        Link: opendayz.net/threads/dayz-welcome-message-credits-style.13071/
	Description:
	Creates an intro on the bottom-right hand corner of the screen.
*/

_onScreenTime = 5;

sleep 5; //Wait in seconds before the credits start after player is in-game
 
_role1 = "Herzlich willkommen!"; //In yellow
_role1names = ["Wir hoffen, es gefälllt dir","am AltisLifeAustria Server"]; //In white
_role2 = "Unser TS:";
_role2names = ["altislifeaustria.at"]; 
_role3 = "Unser Team:";
_role3names = ["Skeesicks","Game Timer","Blackc0bra","Darkstar","Mr Hanky","Hedoja","Dirtyharry","Ernst Haft","Judas"];
_role4 = "Unsere Features:";
_role4names = ["Keine Ermüdung","Starker Fokus auf RP","Presse","Anwälte","Zivilpolizei","Konsumierbarer Alkohol","Österreichische Skins, Sounds","Benutzbare Drogen","Österr. Essen","Paintball","Kompetentes Admin Team"];
 
{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='1.00' color='#cc0000' align='right'>%1<br /></t>", _memberFunction]; //Changes colours
_finalText = _finalText + "<t size='0.70' color='#FFFFFF' align='right'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.5);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [
//The list below should have exactly the same amount of roles as the list above
[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names]
];