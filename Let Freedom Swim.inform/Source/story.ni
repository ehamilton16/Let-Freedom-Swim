"Let Freedom Swim" by Elasia Hamilton

Use no scoring.

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


every turn:
	if the player is not in bubble:
		if player is in cave cell:
			if guard is in cave cell:
				say "wow no";
				end the game in death.

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

Rack of Keys is a supporter in the Hallway.

Before listing nondescript items when the player is in The Hallway,
		if the Rack of Keys is marked for listing,
			change the Rack of Keys to not marked for listing.

KeyShell is a thing. Keyshell unlocks the Holding Area. The KeyShell is on the Rack of Keys.

Before listing nondescript items when the player is in The Hallway,
		if the KeyShell is marked for listing,
			change the KeyShell to not marked for listing.

Uniform is a wearable thing. Uniform is in the Treasure Chest.

Chest Key is a thing. Chest Key unlocks the Treasure Chest. It is carried by the Mermaid Prisoner.

Treasure Chest is a container. The Treasure Chest is closed and openable. The Treasure Chest is locked and lockable. Treasure Chest is in the Hallway. The description of the Treasure Chest is "wow so shiny."

Before listing nondescript items when the player is in The Hallway,
		if the Treasure Chest is marked for listing,
			change the Treasure Chest to not marked for listing.

	    [*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~]
		     [MERMAID PRISONER]
		
Prison Cell is a room. Prison Cell is north of Hallway.

Holding Area is a transparent container in the Prison Cell. The printed name is "cell". Understand "cell" as the Holding Area. Holding Area is locked and lockable, and closed and openable. 

Mermaid Prisoner is an animal in the Holding Area. The prisoner is wearing shackles. The description of the prisoner is "[if the prisoner is in the holding area]She frowns sadly at you.[end if][if prisoner is not in holding area]She looks around curiously.[end if][if the prisoner is holding something]You notice in her hands she is holding [a list of things carried by the prisoner][end if]. She is wearing [a list of things worn by the prisoner]."

Instead of opening holding area:
	say "You open the cell that the prisoner was locked in. She quickly swims out and over to your side. It looks like she is stubborn about not going back inside. But for some reason she doesn't leave your side. Maybe she wants to help you?";
	change holding area to open.	

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
			move prisoner to player.

The prisoner behavior rules is a rulebook.

A prisoner behavior rule when the prisoner is wearing shackles:
	if a random chance of 1 in 3 succeeds: 
		say "She frowns a bit and plucks at the dingy cloth covering her personal bits. You can tell she cares much about her appearances."; 

A prisoner behavior rule when the prisoner is wearing uniform: 
	if a random chance of 1 in 3 succeeds: 
		say "She adjusts the collar around the uniform, a small grin adorning her face as she admires the shiny buckles. She looks pleased with her new outfit. She lifts her chin, trying to look more official. She makes a mean face at you for a moment, then laughs and waves her hand dismissively."; 

A prisoner behavior rule when the location of prisoner is not the location of player:
	move prisoner to player;
		if a random chance of 1 in 5 succeeds,
			say "[nickname of prisoner] glubs quietly at you.";
	
	[*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~]
		     [GR8 HALL]
		
Great Hall is a room. Great Hall is up of Hallway.

East Balcony is a room. East Balcony is east of Great Hall.

West Balcony is a room. West Balcony is west of Great Hall.

Laboratory is a room. Laboratory is southwest of Great Hall.

[SCIENTIST]
A thing can be known or unknown. Chatterscarf and sunscreen is known.

sunscreen is a thing. The player is carrying sunscreen. The description of the sunscreen is "healthy skin is happy skin"

chatterscarf is a thing. The description of chatterscarf is "a red scarf that makes you chatterscarf-y"

Scientist is man in Laboratory.  Scientist is carrying chatterscarf. The description of Scientist is "blah blah science is so cool". 

Instead of attacking Scientist: 
say "Slice slice die"; 
end the game saying "bad."

Instead of asking scientist about "chatterscarf": 
say "He looks at you. …blub?"

[Instead of asking Jeff for the key:
    if Jeff is unhappy:
        say "Jeff refuses to give the key, but points to the coin you're carrying.";
    if Jeff is pleased:
        say "Now you have the key.";
        move the key to the player.

Instead of giving the coin to Jeff:
move the coin to Jeff;
now Jeff is pleased;
say "Jeff looks very pleased."
Princess's Bedroom is a room. Princess's Bedroom is northwest of Great Hall.]
