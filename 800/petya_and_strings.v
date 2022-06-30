import os

fn sum(text string) int {
	mut a := 0
	for i in 0 .. text.len {
		a += text[i]
	}
	return a
}

fn reduce(text string) string {
	mut str := ''
	for i in 0 .. text.len {
		if text[i] >= 65 && text[i] <= 90 {
			str += (text[i] + 32).ascii_str()
		} else {
			str += text[i].ascii_str()
		}
	}
	return str
}

fn main() {
	str1 := reduce(os.input(''))
	str2 := reduce(os.input(''))

	if sum(str1) > sum(str2) {
		println(1)
	} else if sum(str1) < sum(str2) {
		println(-1)
	} else {
		println(0)
	}
}
