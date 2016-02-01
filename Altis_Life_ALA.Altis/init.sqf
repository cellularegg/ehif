enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "Altis Life RPG v3.1.4.8";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";

StartProgress = true;
[] execVM "scripts\fn_statusBar.sqf";
[] execVM "scripts\teargas.sqf";
[] execVM "scripts\antifog.sqf";

if (isServer) then {call compile preprocessFile "scripts\locationlist.sqf";}; // ALAbase