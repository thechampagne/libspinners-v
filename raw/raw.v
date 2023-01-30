module raw

#flag -I@VMODROOT
#include "spinner.h"
#flag -lspinners

struct C.spinner_t {
	spinner voidptr
}

pub type Spinner_t = C.spinner_t

pub enum Spinner_spinners_t {
	dots
	dots2
	dots3
	dots4
	dots5
	dots6
	dots7
	dots8
	dots9
	dots10
	dots11
	dots12
	dots8bit
	line
	line2
	pipe
	simpledots
	simpledotsscrolling
	star
	star2
	flip
	hamburger
	growvertical
	growhorizontal
	balloon
	balloon2
	noise
	bounce
	boxbounce
	boxbounce2
	triangle
	arc
	circle
	squarecorners
	circlequarters
	circlehalves
	squish
	toggle
	toggle2
	toggle3
	toggle4
	toggle5
	toggle6
	toggle7
	toggle8
	toggle9
	toggle10
	toggle11
	toggle12
	toggle13
	arrow
	arrow2
	arrow3
	bouncingbar
	bouncingball
	smiley
	monkey
	hearts
	clock
	earth
	material
	moon
	runner
	pong
	shark
	dqpb
	weather
	christmas
	grenade
	point
	layer
	betawave
	fingerdance
	fistbump
	soccerheader
	mindblown
	speaker
	orangepulse
	bluepulse
	orangebluepulse
	timetravel
	aesthetic
}

fn C.spinner_new(spinner Spinner_spinners_t, message &char) C.spinner_t

fn C.spinner_new_with_timer(spinner Spinner_spinners_t, message &char) C.spinner_t

fn C.spinner_stop(spinner &C.spinner_t)

fn C.spinner_stop_with_symbol(spinner &C.spinner_t, symbol &char)

fn C.spinner_stop_with_newline(spinner &C.spinner_t)

fn C.spinner_stop_with_message(spinner &C.spinner_t, msg &char)

fn C.spinner_stop_and_persist(spinner &C.spinner_t, symbol &char, msg &char)

fn C.spinner_clean(spinner &C.spinner_t)

pub fn spinner_new(spinner Spinner_spinners_t, message &char) Spinner_t {
	return C.spinner_new(spinner, message)
}

pub fn spinner_new_with_timer(spinner Spinner_spinners_t, message &char) Spinner_t {
	return C.spinner_new_with_timer(spinner, message)
}

pub fn spinner_stop(spinner &C.spinner_t) {
	C.spinner_stop(spinner)
}

pub fn spinner_stop_with_symbol(spinner &C.spinner_t, symbol &char) {
	C.spinner_stop_with_symbol(spinner, symbol)
}

pub fn spinner_stop_with_newline(spinner &C.spinner_t) {
	C.spinner_stop_with_newline(spinner)
}

pub fn spinner_stop_with_message(spinner &C.spinner_t, msg &char) {
	C.spinner_stop_with_message(spinner, msg)
}

pub fn spinner_stop_and_persist(spinner &C.spinner_t, symbol &char, msg &char) {
	C.spinner_stop_and_persist(spinner, symbol, msg)
}

pub fn spinner_clean(spinner &C.spinner_t) {
	C.spinner_clean(spinner)
}
