/*
 * Author: Peer / CapriSol
 * Set texture of trench according to the surface below.
 *
 * Arguments:
 * 0: Trench <OBJECT>
 *
 * Return Value:
 * None
 *
 * Example: call Peer_Trenches_main_fnc_trenchSetTexture
 *  
 *
 * Public: No
 */

params ["_object","_texturepath"];
//if (!isServer) exitWith {diag_log "[DEBUG] Chameleon Trenches tried to set a texture on Client"};


//diag_log format ["[DEBUG] Manual Trench Texture Apply = %1, path = %2",str _applymanualtexture,(_object getVariable ["Manual_Texture_Path",""])];

//diag_log format ["[DEBUG] Trench Texture of %1, was set to %2",str _object,_texturepath];

if (!isServer) then {
	// is local only object, no texture share nessecary
	_object setObjectTexture [0, _texturepath];
}else{
	// is normal server object
	_object setObjectTextureGlobal [0, _texturepath];
};
