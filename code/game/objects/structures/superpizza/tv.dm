/obj/item/vhs/
	icon = 'code/game/objects/structures/superpizza/garbage.dmi'
	name = "VHS tape"
	desc = "Might be someones wedding, might be porn."
	icon_state = "vhs"
	var/vid = "https://cdn.discordapp.com/attachments/792542629874237482/976953462954790922/Obliteration.mp4"
	var/aud = null
	var/currentTime = 0
/obj/item/vhs/random
/obj/item/vhs/proc/getFinalPos(){

}
/obj/item/vhs/proc/getAud(){
	return aud

}
/obj/item/vhs/proc/getVid(){
	return vid
}
/obj/item/vhs/proc/getpos(){
	return currentTime
}

/obj/machinery/crttv
	icon = 'code/game/objects/structures/superpizza/machine.dmi'
	icon_state = "crt"
	density = 1
	var/obj/item/vhs/tape = null
	var/paused
	var/playbackRate
/obj/machinery/crttv/attackby(obj/item/I, mob/user, params)
	if (istype(I, /obj/item/vhs)) //INSERT SOME DISKETTES
		// Insert disk
		if (!user.transferItemToLoc(I,src))
			return
		// If insertion was successful and there's already a diskette in the console, eject the old one.
		if(tape)
			eject_tape(user)
		// Set the new diskette.
		else
			screen_setup(user)
		tape = I
		to_chat(user, "<span class='notice'>You insert [I].</span>")
		playsound( I, 50, FALSE, FALSE)
		return ..()
/obj/machinery/crttv/proc/screen_setup(mob/user)
	var/dat = "<html>"
	dat += "<body onload=\"script();\">"
	dat += "<a href='byond://?src=[REF(src)];close=1'>Close</a>"

	dat += "<div style=\"text-align:center\">"
	dat += "<video id=\"video1\" width=\"420\">"
	dat += "<source src=\"[tape.getVid()]\" type=\"video/mp4\">"
	dat += "<source src=\"[tape.getAud()]\" type=\"video/ogg\">"
	dat += " </video>"
	dat += "<br><br>"
	//dat += "<center><a href='byond://?src=[REF(src)];mode=rewind'>⏮</a>"
	dat += "<center><a href='byond://?src=[REF(src)];mode=rewind()'>⏪</a>"
	dat += "<center><a href='byond://?src=[REF(src)];pause=playpause()'>⏯</a>"
	dat += "<center><a href='byond://?src=[REF(src)];mode=fastforwards()'>⏩</a>"
	//dat += "<center><a href='byond://?src=[REF(src)];mode=play'>⏭</a>"
	dat += {"
	var myVideo = document.getElementById("video1");
function playPause() {
  if (myVideo.paused) {
    myVideo.playbackRate = 1;
    myVideo.play();
  }
  else {
    myVideo.playbackRate = 1;
    myVideo.pause();
  }
}

function fastforwards() {

    myVideo.currentTime += 2;
    return myVideo.currentTime;
}

function rewind() {
    myVideo.currentTime -= 2;
    return myVideo.currentTime;
}
function getCurTime() {
    return myVideo.currentTime;

}
function getSpeed() {
    return myVideo.playbackRate;
}
function getPlay() {
    return myVideo.paused;
}
function script(){
    myVideo.paused = [paused]
    myVideo.playbackRate = [playbackRate]
    myVideo.currentTime = [tape.getpos()]
}"}

/obj/machinery/crttv/ui_interact(mob/user)
	. = ..()
	screen_setup(user)

/obj/machinery/crttv/Topic(href, href_list)
	if(..())
		return
	//usr.unset_machine()
	tape.currentTime = href_list["mode"]
	paused = href_list["pause"]
	return

/obj/machinery/crttv/proc/eject_tape(mob/user)
	// Check for diskette.
	if(!tape)
		return
	to_chat(user, "<span class='notice'>You eject [tape] from [src].</span>")
	// If the tape shouldn't pop into the user's hand for any reason, drop it on the console instead.
	tape = null
