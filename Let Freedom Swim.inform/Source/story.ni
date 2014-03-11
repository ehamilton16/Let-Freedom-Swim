"Let Freedom Swim" by Elasia Hamilton

Use no scoring.

When play begins, say "You were having a wonderful time at the beach. Sun. Surf. Small little sand crabs. How did you end up in this situation? The last thing you remember is being thrown you into the ocean and sinking to the bottom until you blacked out. How will you find your way out?"

	[*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~]
		     [CAVE CELL]

Cave Cell is a room. It is south of the Hallway. " It's a cold, damp cave currently being used as your holding cell. [If player is in bubble]You're currently stuck in a bubble. It's translucent, but for some reason you can't figure out how to pop the bubble. [end if][if mermaid guard is visible]Also, you see a bored-looking mermaid guard standing outside.[end if][if conch shell is visible]Some shells glitter on the floor, giving off the appearance of enchantment. Interestingly, bubble float up from their openings.[end if]"
			
Hand Sanitizer is a wearable thing. It is carried by the player.

Understand "use [a wearable thing]" as wearing.

Understand "pop [something]" as touching.

[this is for the purpose of testing the scientist without needing to play through the game up to that point
teleport is a wearable thing. It is carried by player.

Instead of wearing teleport:
	say "yo";
	move the player to Laboratory.]

The description of the player is "You're hair is still a bit wet, and you're wearing an old shirt and swimtrunks. Not the best thing to get kidnapped in, but at least you're pretty comfortable. "

Conch Shell is a wearable thing in the Cave Cell. The description is "[if conch shell is out of reach]You try to get a better look at the shells, but from here all you can see are small bubbles floating out of their openings.[end if][if conch shell is not out of reach]Bubble continuously flow out of the opening. It shimmers with what you're assuming is magic.[end if]" 

Understand "Shell" and "Shells" as Conch Shell.

Definition: conch shell is out of reach:
	if player is inside bubble, yes;
	if player is not inside bubble, no.

Before listing nondescript items when the player is in The Cave Cell,
		if the conch shell is marked for listing,
			change the conch shell to not marked for listing.

Before listing nondescript items when the player is in The Bubble,
		if the conch shell is marked for listing,
			change the conch shell to not marked for listing.
			
Every turn when player is not in bubble:
	if player is in Cave Cell:
		if player is not wearing conch for four turns:
			say "You can only hold your breath for so long, and without the bubble of air around you, there's no air for you to breathe. Your quest to escape fails as water fills your lungs.";
		

	[*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~]
		     [BUBBLE]

Bubble is a container. It is inside Cave Cell. The description of the Bubble is "A clear floating bubble that smells like salt water and magic.". Player is in Bubble.

Before listing nondescript items when the player is in The Cave Cell,
		if the Bubble is marked for listing,
			change the Bubble to not marked for listing.
			
Instead of touching the Bubble:
	if player is wearing the hand sanitizer:
		say "The bubble pops, dropping you on to the damp floor below.";
		move player to cave;
		remove bubble from play;
	if player is not wearing hand sanitizer:
		say "You poke the bubble a little bit. It doesn't pop, but your hand gets a bit sticky.".

Instead of wearing hand sanitizer for the third time:
	if player is inside Bubble:
		say "you squeeze the bottle, but nothing comes out.";
		end the game saying "It looks like you'll be here for a while";
	otherwise:
		say "you squeeze the bottle, but nothing comes out.";
		remove hand sanitizer from play.

	[*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~]
		     [GUARD]
		
The Mermaid Guard is an Animal in the Cave Cell. The description of the guard is "A muscular mermaid--merman? is standing around, tossing his trident up and catching it before it hits the ground."

every turn:
	if the player is not in bubble:
		if player is in cave cell:
			if guard is in cave cell:
				say "Upon seeing you outside of your bubble, she hisses at you, and the fins on her face flair out threateningly, before she throws her trident through your midsection.";
				end the game in death.

An every turn rule:
	if player is in Cave Cell:
		if Mermaid Guard is in Guard Room:
			if a random chance of 1 in 5 succeeds:
				Say "The guard lazily swishes back into view. You idly wonder where she had gone off to.";
				move Mermaid Guard to Cave Cell;
		otherwise if Mermaid Guard is in Cave Cell:
			if a random chance of 1 in 2 succeeds:
				Say "The guard yawns quietly before leaving your cell. She doesn't even spare you a second glance as she wanders out into the hallway.";
				move Mermaid Guard to Guard room;
	otherwise if player is in Bubble:
		if Mermaid Guard is in Guard Room:
			if a random chance of 1 in 5 succeeds:
				Say "The guard lazily swishes back into view. You idly wonder where she had gone off to.";
				move Mermaid Guard to Cave Cell;
		otherwise if Mermaid Guard is in Cave Cell:
			if a random chance of 1 in 2 succeeds:
				Say "The guard yawns quietly before leaving your cell. She doesn't even spare you a second glance as she wanders out into the hallway.";
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
		
Great Hall is a room. Great Hall is up of Hallway. The description is " "

	[*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~]
		[Balcony]

Balcony is a room. Balcony is east of Great Hall.

	[*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~]
		[Laboratory]
Laboratory is a room. Laboratory is west of Balcony. The description of the Laboratory is "lab"

A thing can be known or unknown. Chatterscarf and sunscreen is known.

Labcoat is a wearable thing. The description of the labcoat is "A plain white labcoat."



Understand the commands "ask [text]" as something new.

Definition: the notes is out of reach: 
	if scientist is carrying sunglasses, no; 
	if scientist is not carrying sunglasses, yes;

[Code from Supplemental Action Extension]
talking is an action applying to nothing.
understand "talk" as talking.

talking to is an action applying to one thing.
understand "talk to [someone]" as talking to.

understand the command "give" as something new.
understand the command "hand" as something new.

understand "give [things] to [someone]" as giving it to.
understand "hand [things] to [someone]" as giving it to.
understand "give [someone] [things]" as giving it to (with nouns reversed).
understand "hand [someone] [things]" as giving it to (with nouns reversed).

understand the command "offer" as something new.
offering it to is an action applying to two things.
understand "offer [something] to [someone]" as offering it to.

instead of asking a person (called the requestee) for something (called the target)
(this is the asking someone for something rule):
if the target is enclosed by the requestee begin;
say "[The requestee] refuses to give you [the target]." instead;
otherwise;
say "[The requestee] hasn't got the [target]." instead;
end if.

Understand "scarf" as chatterscarf.

sunglasses is a wearable thing. The player is carrying sunglasses. The description of the sunglasses is "A pair of cheap purple and black sunglasses. You were wearing them on the beach, but there doesn't seem to be much of a point now."

chatterscarf is a wearable thing. The description of chatterscarf is "A long red scarf wraps around his neck. He seems to be talking into it. Wait, what is that?"

notes is a thing.

Scientist is man in Laboratory.  Scientist is wearing labcoat. Scientist is carrying chatterscarf and notes. The description of Scientist is "He is wearing an average labcoat and some sort of scarf… He seems to be looking over his notes, every once in a while quietly bubbling to himself. Maybe he he can help you."

Instead of attacking Scientist: 
	say "You grab both ends of the scarf and attempt to choke the scientist. He glubs loudly, reaching out to press the emergency switch, alerting the guards of your presence!"; 
	end the game saying "Violence is not the answer"

Instead of talking to scientist for the first time:
	if player is wearing chatterscarf:
		say "Hello!";
	otherwise:
		say "He turns to look at you. …blub!";

Instead of asking Scientist about "notes":
	if player is wearing chatterscarf:
		say "Oh, my notes? Well, it is the design plans for the new aqua mobile, Gup-B. It's better than the last model I made. They're testing it in the garage downstairs. It's pretty fast and really easy to drive!";
	otherwise:
		say "You gesture to his notes. He looks at you with a confused expression."

Instead of asking Scientist about "castle":
	if player is wearing chatterscarf:
		say "Well, it's been in the Clamilton Family for generations. I don't much about the history, but it's pretty big. Lots of guards.";
	otherwise:
		say "You make large circling hand gestures. The castle. The castle. He looks around the room. Glub?"

Instead of asking Scientist about "Lab":
	if the player is wearing chatterscarf:
		say "The princess allows us to study inside the castle. It is easy to conduct research with all of this equipment. The garage is filled with machinary.";
	otherwise:
		say "You wave your hands around, trying to get him to tell you about the Lab. The scientist stares at you blankly."
	
Instead of asking Scientist about "Garage":
	if the player is wearing chatterscarf:
		say "The garage is where most of our research is conducted. We have all our new devices downstairs in the garage.";
	otherwise:
		say "You switch between pointing to the floor and towards the stairs nearby. The scientist looks you, then the stairs, then the floor. 'Glub? Glub Glubb.' You sigh."

Instead of asking Scientist about "secret knock":
	if the player is wearing chatterscarf:
		say "The garage is where most of our research is conducted. We have all our new devices downstairs in the garage.";
	otherwise:
		say "You make a gesture that looks like you're knocking on a door and look at him expectantly. He looks at you. He blubs in a confused manner."

Instead of giving sunglasses to scientist:
	say "You hand the cheap shades over to the scientist. He tries to put them on his head. It falls off. You try to tell him it goes on his face, but it doesn't look like he can understand you."

Instead of asking scientist about "scarf":
	say "You point to the scarf. He takes it off and drapes it around your neck. His blubs turn into words you can understand, 'Hello, do you understand what I am saying?' You nod. "

Before examining notes: 
	if the notes is out of reach: 
		say "The scientist has turned his attention to you. You can get a glimpse of the notes on his desk, but it looks like he is trying to talk to you" instead;
	otherwise:
		say "It looks like a sketch of some kind of vehicle. You can't make out anything else except drawing and a few numbers, but the scientist seems quite proud of it.";

Instead of wearing sunglasses:
	if player is not in Laboratory:
		say "You put on your cheap sunglasses you bought before you dove into this whole mess. These aren't very good sunglasses, everything is just a tad bit darker. You tuck them back into your pocket.";
	otherwise:
		if player is not wearing chatterscarf:
			say "You pull out your cheap sunglasses. These aren't very good sunglasses, but when you look over at the scientist he is awestruck. He pokes your glasses excitedly. Hmm…".

Before offering sunglasses to Scientist:
	if player is not wearing chatterscarf:
		say "You hand the cheap shades over to the scientist. He tries to put them on his head. It falls off. You try to tell him it goes on his face, but it doesn't look like he can understand you.";
		move sunglasses to scientist;
	otherwise:
		say "You tell him to put it over his eyes. He wears them and is in awe."

Instead of giving hand sanitizer to Scientist:
	say "You give the scientist the bottle. You show him how to put it on his hands. After a few seconds, it starts to sting. He blubs loudly, alerting the guards of your presence.";
	end the game saying "You might be here for a while"

Instead of taking chatterscarf:
	say "That seems to belong to the Scientist. Maybe you can give him something to change his mind."

[*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~]
		[Garage]

Garage is a room. Garage is south of Laboratory. 

