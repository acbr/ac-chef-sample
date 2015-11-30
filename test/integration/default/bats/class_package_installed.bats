@test "git binary is found in PATH" { 
	run which git
	[ "$status" -eq 0 ]
}

@test "npm binary is found in PATH" {
	run which npm
	[ "$status" -eq 0 ]
}

@test "bower binary is found in PATH" {  
	run which bower
	[ "$status" -eq 0 ]
}

@test "grunt binary is found in PATH" {  
	run which grunt
	[ "$status" -eq 0 ]
}

@test "yo binary is found in PATH" {  
	run which yo
	[ "$status" -eq 0 ]
}

@test "ionic binary is found in PATH" {  
	run which ionic
	[ "$status" -eq 0 ]
}

@test "cordova binary is found in PATH" {  
	run which cordova
	[ "$status" -eq 0 ]
}

@test "phonegap binary is found in PATH" {  
	run which phonegap
	[ "$status" -eq 0 ]
}

@test "mongo binary is found in PATH" {  
	run which mongo
	[ "$status" -eq 0 ]
}

@test "subl binary is found in PATH" {  
	run which subl
	[ "$status" -eq 0 ]
}