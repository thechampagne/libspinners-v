module spinner

import raw

pub type Spinners = raw.Spinner_spinners_t

pub struct Spinner {
	spinner raw.Spinner_t
}

pub fn new(spinner Spinners, message string) Spinner {
	spin := raw.spinner_new(spinner, message.str)
	return Spinner{spin}
}

pub fn new_with_timer(spinner Spinners, message string) Spinner {
	spin := raw.spinner_new_with_timer(spinner, message.str)
	return Spinner{spin}
}

pub fn (s &Spinner) stop() {
	raw.spinner_stop(&s.spinner)
}

pub fn (s &Spinner) stop_with_symbol(symbol string) {
	raw.spinner_stop_with_symbol(&s.spinner, symbol.str)
}

pub fn (s &Spinner) stop_with_newline() {
	raw.spinner_stop_with_newline(&s.spinner)
}

pub fn (s &Spinner) stop_with_message(msg string) {
	raw.spinner_stop_with_message(&s.spinner, msg.str)
}

pub fn (s &Spinner) stop_and_persist(symbol string, msg string) {
	raw.spinner_stop_and_persist(&s.spinner, symbol.str, msg.str)
}

pub fn (s &Spinner) clean() {
	raw.spinner_clean(&s.spinner)
}
