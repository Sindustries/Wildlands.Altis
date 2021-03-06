/*
	fn_addActions.sqf
	Author: Sinbane
	Description:
	Handles all player actions
*/
//-----------------------------------
WLD_ATMaction = [player addAction["Access ATM",WLD_fnc_bank,"",0,false,false,"",'
!isNull cursorObject && player distance cursorObject < 3.5 && (["atm_",str(cursorObject)] call BIS_fnc_inString) && vehicle player isEqualTo player']];
//-----------------------------------
WLD_FUELactionDebit = [player addAction["Refuel",WLD_fnc_fuelPump,"",0,false,false,"",'
!isNull cursorObject && player distance cursorObject < 3.5 && typeOf cursorObject in WLD_fuelPumps && vehicle player isEqualTo player']];
//-----------------------------------