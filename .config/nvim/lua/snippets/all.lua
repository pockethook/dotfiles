return {
	parse('date', os.date('%Y-%m-%d')),
	parse('time', os.date('%H:%S')),
	parse('yesterday', os.date("%Y-%m-%d", os.time() - 24*60*60)),
	parse('tomorrow', os.date("%Y-%m-%d", os.time() + 24*60*60)),
}
