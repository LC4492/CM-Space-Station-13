/obj/structure/machinery/optable/surgery_display_switch
	name = "Surgery Display Switch"
	icon = 'icons/obj/structures/props/stationobjs.dmi'
	icon_state = "doorctrl"
	desc = "This switch controls the surgical display of this Operation Theatre."
	density = FALSE
	anchored = TRUE
	use_power = USE_POWER_IDLE
	unslashable = TRUE
	unacidable = TRUE
	power_machine = TRUE
	var/ispowered = FALSE
	var/turned_on = FALSE

/obj/structure/machinery/optable/surgery_display_switch/proc/toggle_lights()
	for(var/obj/structure/machinery/optable/surgery_display)

/obj/structure/machinery/optable/surgery_display
	icon = 'icons/obj/structures/machinery/status_display.dmi'
	icon_state = "Surgery_Off"
	name = "Surgery display"
	desc = "A monitor that displays the current occupation of this Operation Theatre."
	anchored = TRUE
	density = FALSE
	use_power = FALSE
	idle_power_usage = 10
	id = null

/obj/structure/machinery/optable/surgery_display/update_icon()
	if(ishuman(buckled_mob))
		icon_state = "Surgery_O"
	else if(ishuman(!buckled_mob))
		icon_state = "Surgery_Off"
	else
		icon_state = "Surgery_Free"


/obj/structure/machinery/surgery_display_switch/Theatre_1
	name = "Surgery Display Switch 1"

/obj/structure/machinery/surgery_display_switch/Theatre_2
	name = "Surgery Display Switch 2"

/obj/structure/machinery/surgery_display_switch/Theatre_3
	name = "Surgery Display Switch 3"

/obj/structure/machinery/surgery_display_switch/Theatre_4
	name = "Surgery Display Switch 4"


/obj/structure/machinery/optable/surgery_display/Theatre_1
	name = "Operating Theatre 1"
	id = "Op_Theatre 1"

/obj/structure/machinery/optable/surgery_display/Theatre_2
	name = "Operating Theatre 2"
	id = "Op_Theatre 2"

/obj/structure/machinery/optable/surgery_display/Theatre_3
	name = "Operating Theatre 3"
	id = "Op_Theatre 3"

/obj/structure/machinery/optable/surgery_display/Theatre_4
	name = "Operating Theatre 4"
	id = "Op_Theatre 4"

