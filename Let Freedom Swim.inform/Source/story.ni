"Let Freedom Swim" by Elasia Hamilton

When play begins, say "Well well. Look who's trapped in their own little bubble. Literally."
[fix this >.<]

[CAVE CELL]
Cave Cell is a room. It is south of the Hallway. "fix"

Conch Shell is a thing in Cave Cell. 

Before listing nondescript items when the player is in The Cave Cell,
		if the Conch Shell is marked for listing,
			change the conch shell to not marked for listing.
			
Hand Sanitizer is a wearable thing. It is carried by the player.

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
[GUARD]
Mermaid Guard is an Animal in the Cave Cell. The description of the guard is "yooo".

An every turn rule:
	if Mermaid Guard is in Guard Room:
		if a random chance of 1 in 4 succeeds:
			Say "back mofo";
			move Mermaid Guard to Cave Cell;
	otherwise if Mermaid Guard is in Cave Cell:
		if a random chance of 1 in 2 succeeds:
			Say "kbye.";
			move Mermaid Guard to Guard room.	

Guard Room is a room.

[HALLWAY]
Hallway is a room. Hallway is north of Cave Cell. 

Treasure Chest is a container. The Treasure Chest is closed and openable. The Treasure Chest is locked and lockable. Treasure Chest is in the Hallway. The description of the Treasure Chest is "wow so shiny."

Before listing nondescript items when the player is in The Hallway,
		if the Treasure Chest is marked for listing,
			change the Treasure Chest to not marked for listing.


[MERMAID PRISONER]
Prison Cell is a room. Prison Cell is north of Hallway.

[GR8 HALL]
Great Hall is a room. Great Hall is up of Hallway.

East Balcony is a room. East Balcony is east of Great Hall.

West Balcony is a room. West Balcony is west of Great Hall.

Laboratory is a room. Laboratory is southwest of Great Hall.

Princess's Bedroom is a room. Princess's Bedroom is northwest of Great Hall.


After taking Conch Shell:
say ""

[figure out hwo do thing yo. uhh, yeh. uhh, print room description after taking shell. code hand sanitizer puzzle. er. er. mY NAME IS KIANA,,, Im A kITTKE AWAJRSSAD shoot.]