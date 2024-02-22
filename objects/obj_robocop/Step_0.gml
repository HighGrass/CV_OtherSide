moveX = 0
moveY = 0

if(player.x > x){
	if(rob_force[0] < MAX_SPEED){
		rob_force[0] += 0.1
	}
	moveX = 1
} else if(player.x < x) {
	if(rob_force[0] > -MAX_SPEED){
		rob_force[0] -= 0.1
	}
	moveX = -1
} else {
	moveX = 0
}


if(player.y > y){
	if(rob_force[1] < MAX_SPEED){
		rob_force[1] += 0.1
	}
	moveY = 1
} else if(player.y < y) {
	if(rob_force[1] > -MAX_SPEED){
		rob_force[1] -= 0.1
	}
	moveY = -1
} else {
	moveY = 0
}

if(rob_force[0] > 0 and moveX < 0){
	rob_force[0] -= 0.3
} else if(rob_force[0] < 0 and moveX > 0) {
	rob_force[0] += 0.3
}

if(rob_force[1] > 0 and moveY < 0){
	rob_force[1] -= 0.3 
} else if(rob_force[1] < 0 and moveY > 0) {
	rob_force[1] += 0.3
} 

  move_and_collide(rob_force[0], rob_force[1])