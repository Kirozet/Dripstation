/obj/item/buttplugs/buttplug
	name = "buttplug"
	desc = "Where do i stick it? huh?"
	icon = 'yogstation/icons/obj/buttplugs/buttplugs.dmi'
	icon_state = "buttplug"

/obj/item/buttplugs/proc/manual_suicide(mob/living/user)
		user.visible_message("<span class='suicide'>[user] finally finishes plugging the [src], and their life.</span>")
		user.adjustOxyLoss(200)
		user.death(0)


/obj/item/buttplugs/suicide_act(mob/living/user)
//	is_knotted = ((src.dildo_shape == "knotted")?"They swallowed the knot":"Their face is turning blue")
	if(do_after(user,17,target=src))
		user.visible_message("<span class='suicide'>[user] tears-up and gags as they shove [src] down their butthole! It looks like [user.p_theyre()] trying to commit suicide!</span>")
		playsound(loc, 'yogstation/sound/voice/eggperson/egg_scream.ogg', 50, 1, -1)
		user.Stun(150)
		user.adjust_blurriness(8)
		var/obj/item/organ/eyes/eyes = user.getorganslot(ORGAN_SLOT_EYES)
		eyes?.applyOrganDamage(10)
	return MANUAL_SUICIDE
