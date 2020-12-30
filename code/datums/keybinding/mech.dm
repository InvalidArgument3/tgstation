//I need to find a way to get abilities to activate when pressing a hotkey. This hasn't been done before from what I can see except in TGMC's xeno_actions.dm.


/datum/keybinding/mech
	category = CATEGORY_MECH
	weight = WEIGHT_MECH

/datum/keybinding/mech/cyclemechequip
	hotkey_keys = list("Unbound")
	name = "cyclemechequip"
	full_name = "Cycle Mech Equipment"
	description = "Cycle your mech's current equipment."
	keybind_signal = COMSIG_KB_MECHA_CYCLE_EQUIPMENT_DOWN

/*
/datum/keybinding/mech/cyclemechequip/down
	. = ..()
	if(!is_type(user.loc, /obj/vehicle/sealed/mecha))
		return FALSE
	var/obj/vehicle/something/mecha/exo = user.loc
	exo.initialize_passenger_action_type(/datum/action/vehicle/sealed/mecha/mech_cycle_equip)
*/
//example provided by Zxaber, I don't know how to implement user.loc pasting the entire initialize_passenger_action is also wrong.
