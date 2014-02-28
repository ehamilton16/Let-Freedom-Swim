"Let Freedom Swim" by Elasia Hamilton

When play begins, say "Well well. Look who's trapped in their own little bubble. Literally."
[fix this >.<]

	[*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~]
		     [CAVE CELL]

Cave Cell is a room. It is south of the Hallway. "fix"

Conch Shell is a thing in Cave Cell. 

Before listing nondescript items when the player is in The Cave Cell,
		if the Conch Shell is marked for listing,
			change the conch shell to not marked for listing.
			
Hand Sanitizer is a wearable thing. It is carried by the player.

Understand "use [a wearable thing]" as wearing.

	[*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~]
		     [BUBBLE]

Bubble is a container. It is inside Cave Cell. The description of the Bubble is "yoyoyo". Player is in Bubble.

Before listing nondescript items when the player is in The Cave Cell,
		if the Bubble is marked for listing,
			change the Bubble to not marked for listing.

Before listing nondescript items when the player is in The Bubble,
		if the Conch Shell is marked for listing,
			change the conch shell to not marked for listing.

Instead of touching the Bubble:
	if player is wearing the hand sanitizer:
		say "woo";
		move player to cave;
		remove bubble from play;
	if player is not wearing hand sanitizer:
		say "omg".
		
	[*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~]
		     [GUARD]
The Mermaid Guard is an Animal in the Cave Cell. The description of the guard is "yooo".

An every turn rule:
	if player is in Cave Cell:
		if Mermaid Guard is in Guard Room:
			if a random chance of 1 in 5 succeeds:
				Say "back mofo";
				move Mermaid Guard to Cave Cell;
		otherwise if Mermaid Guard is in Cave Cell:
			if a random chance of 1 in 2 succeeds:
				Say "kbye.";
				move Mermaid Guard to Guard room;
	otherwise if player is in Bubble:
		if Mermaid Guard is in Guard Room:
			if a random chance of 1 in 5 succeeds:
				Say "back mofo";
				move Mermaid Guard to Cave Cell;
		otherwise if Mermaid Guard is in Cave Cell:
			if a random chance of 1 in 2 succeeds:
				Say "kbye.";
				move Mermaid Guard to Guard room.	
				
Guard Room is a room.

	[*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~]
		     [HALLWAY]
		
Hallway is a room. Hallway is north of Cave Cell. 

Rack of Keys is an open container in the Hallway.

Before listing nondescript items when the player is in The Hallway,
		if the Rack of Keys is marked for listing,
			change the Rack of Keys to not marked for listing.

KeyShell is an thing. Keyshell unlocks the Holding Area. The KeyShell is in the Rack of Keys.

Before listing nondescript items when the player is in The Hallway,
		if the KeyShell is marked for listing,
			change the KeyShell to not marked for listing.

Uniform is a wearable thing. Uniform is in the Treasure Chest.

Treasure Chest is a container. The Treasure Chest is closed and openable. The Treasure Chest is locked and lockable. Treasure Chest is in the Hallway. The description of the Treasure Chest is "wow so shiny."

Before listing nondescript items when the player is in The Hallway,
		if the Treasure Chest is marked for listing,
			change the Treasure Chest to not marked for listing.

	    [*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~]
		     [MERMAID PRISONER]
		
Prison Cell is a room. Prison Cell is north of Hallway.

Holding Area is a container in the Prison Cell. Holding Area is locked and lockable, and closed and openable. 

Before listing nondescript items when the player is in The Prison Cell,
		if the Holding Area is marked for listing,
			change the Holding Area to not marked for listing.

Mermaid Prisoner is an animal in the Holding Area. The prisoner is wearing shackles. The description of the prisoner is "[if the prisoner is in the holding area]She frowns sadly at you.[end if][if prisoner is not in holding area]She looks around curiously.[end if] You notice in her hands she is holding [a list of things carried by the prisoner]. She is wearing [a list of things worn by the prisoner]."

[MERMAID BEHAVIOR]

[>>NAMING<<]
The prisoner has some indexed text called the nickname. The nickname of the prisoner is "nothing". Understand the nickname property as describing the prisoner.

Rule for printing the name of the prisoner when the nickname of the prisoner is not "nothing": 
    say "[nickname of the prisoner]"

Naming it with is an action applying to one thing and one topic. Understand "name [something] [text]" as naming it with. Check naming it with: say "You can't name that."

Instead of naming the prisoner with "nothing": 
    now the nickname of the prisoner is "nothing"; 
    now the prisoner is improper-named; 
    say "You revoke your choice of dog-name."

Instead of naming the prisoner with something: 
    let N be indexed text; let N be "[the topic understood]"; 
    replace the text "'" in N with ""; 
    now the nickname of the prisoner is "[N]"; 
    now the prisoner is proper-named; 
    say "The prisoner is now known as [nickname of the prisoner]."

[>>INTERACTING<<]

An every turn rule:
	if holding area is open:
		if the location of prisoner is not the location of the player:
			let the way be the best route from the location of prisoner to the location of the player;
			try prisoner going the way;
		otherwise:
			if a random chance of 1 in 5 succeeds,
			say "She glubs quietly at you.";
	otherwise if holding area is not open:
		say "".


The prisoner behavior rules is a rulebook.

A prisoner behavior rule when the prisoner is not in Holding Area: 
    say "She smiles happily and swims over to your side. It looks like she wants to follow you…and maybe help out a bit?."; 

A prisoner behavior rule when the prisoner is wearing shackles: 
    say "She frowns a bit and plucks at the dingy cloth covering her personal bits. You can tell she cares much about her appearances."; 

A prisoner behavior rule when the prisoner is wearing uniform: 
    say "She adjusts the collar around the uniform, a small grin adorning her face as she admires the shiny buckles. She looks pleased with her new outfit."; 

A prisoner behavior rule when the prisoner is wearing shackles: 
    say "She frowns sadly and plucks at the dingy cloth covering her personal bits. You can tell she cares much about her appearances."; 

	[*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~]
		     [GR8 HALL]
Great Hall is a room. Great Hall is up of Hallway.

East Balcony is a room. East Balcony is east of Great Hall.

West Balcony is a room. West Balcony is west of Great Hall.

Laboratory is a room. Laboratory is southwest of Great Hall.

Princess's Bedroom is a room. Princess's Bedroom is northwest of Great Hall.
