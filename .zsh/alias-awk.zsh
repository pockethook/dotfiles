function sum() {
	awk '{sum += $1} END {print sum}' $*
}

function avg() {
	awk '{sum += $1} END {if (NR > 0) print sum / NR}' $*
}

function p1() {
	awk '{print $1}' $*
}

function p2() {
	awk '{print $2}' $*
}

function p3() {
	awk '{print $3}' $*
}

function p4() {
	awk '{print $4}' $*
}

function p5() {
	awk '{print $5}' $*
}

function p6() {
	awk '{print $6}' $*
}

function p7() {
	awk '{print $7}' $*
}

function p8() {
	awk '{print $8}' $*
}

function p9() {
	awk '{print $9}' $*
}

function p10() {
	awk '{print $10}' $*
}
