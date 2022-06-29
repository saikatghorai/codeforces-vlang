import os

fn return_corrected(text string) string {
	if text.len <= 10 {
		return text
	} else {
		return text[0].ascii_str() + '${text.len - 2}' + text[text.len - 1].ascii_str()
	}
}

fn main() {
	inpu := os.args[1]
	println(return_corrected(inpu))
}
