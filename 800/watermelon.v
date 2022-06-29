import os

fn if_possible(weight int) bool {
	return weight % 2 == 0
}

fn main() {
	inpu := os.args[1].int()
	if if_possible(inpu) {
		println('YES')
	} else {
		println('NO')
	}
}
