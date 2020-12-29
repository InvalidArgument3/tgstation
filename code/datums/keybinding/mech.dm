/datum/keybinding/mech
	category = CATEGORY_MECH
	weight = WEIGHT_MECH

/datum/keybinding/mech/cyclemechequip
	hotkey_keys = list("")
	name = "cyclemechequip"
	full_name = "Cycle Mech Equipment"
	description = "Cycle your mech's current equipment."
	keybind_signal = COMSIG_KB_MECHA_CYCLE_EQUIPMENT_DOWN

/datum/keybinding/mech/cyclemechequip/down(client/user)
	. = ..()
	if(!is_type(user.loc, /obj/vehicle/sealed/mecha))
		return FALSE
	var/obj/vehicle/sealed/mecha/exo = user.loc
	exo.initialize_passenger_action_type(/datum/action/vehicle/sealed/mecha/mech_cycle_equip)
