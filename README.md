JPEG JOURNEYS
==========

API FUN Team Project with Namrata, Alexandra, Jen and Hemchandra

Our logo is a pig! 

<center><img height="300px" src="http://www.olmix.com/sites/default/files/pig_0.jpg"></center>


Trello
-------

<a href="https://trello.com/b/sF41LyUg/jpegjourneys">JpegJourneys Trello</a>

Git Workflow
-----------
1. Each feature gets its own branch
2. Each team member will commit often with descriptive commit messages
3. Each team member will pull from master and resolve merge conflicts on their own local machine before pushing to Github
4. Each team member will check Github for pull requests and either merge or close (and notify the person who issued the pull request) before pulling from master.
5. Each team member should submit a pull request ONLY once their feature branch has been tested!!!!!!!!! 
6. Anyone can merge a pull request (except their own, of course) into master after looking over the code. If the code is bad or breaks things, the team member should close it and notify the person who issued the pull request immediately!

<hr>

User Stories
-----------
* As a user, I want to be able to login or signup in order to take or create a new journey.
* As a user, I want a profile page where I can view the journeys I've created.
* As a user, I want to be able to view a homepage for each journey I have created.
* As a user, I want to be able to edit/delete my create journeys.
* As a user, I want to be able to add a destination to my journey.
* As a user, I want to be able to view the added destinations on my journey's homepage.
* As a user, I want my journey's background profile to reflect one of it's destinations.
* As a user, I want to be able to delete a destination from my journey.


FEATURE CREEP
* As a user, I want to be able to share my journey through email.
* As a user, I want to be able to comment on other user's journeys.

<hr>

What makes up a Journey?
----------------------
* A title
* A description
* Date

What makes up a Destination?
------------------------
* Input field where you can type in any text
* Add an input response (radio buttons)
* Submit a finished question

What makes up a Journey_Destination?
----------------------
* A User's id
* A Journey's ID
* A Destination's ID

<hr>

Schema: 
-------
* 1 user has many journeys 
* 1 journey belongs to 1 user
* 1 journey has many destinations
* 1 user has many destinations through 1 journey
* 1 destination belongs to 1 journey
* 1 journey_destination belongs to 1 journey and 1 destination

<hr>

USER: id, Name, Email, Password, Timestamps

JOURNEY: id, User_ID, Title, Description, Date

DESTINATION: id, place

JOURNEY_DESTINATION: id, journey_id, destination_id

