/datum/keybinding/mech
	category = CATEGORY_MECH
	weight = WEIGHT_MECH

/datum/keybinding/mech/cyclemechequip
	hotkey_keys = list("X")
	name = "cyclemechequip"
	full_name = "Cycle Mech Equipment"
	description = "Cycle your mech's current equipment."
	keybind_signal = COMSIG_KB_MECHA_CYCLE_EQUIPMENT_DOWN

/datum/keybinding/mech/cyclemechequip/down(client/user)
	. = ..()
	if(.)
		return
//	var/vehicle/sealed/mecha/mech_cycle_equip = user.mob
	mech_cycle_equip.Trigger()
	return TRUE
