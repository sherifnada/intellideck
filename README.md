# README

todo list: 
1. Progress view. Tell me how many words in total I've learned, how many I've mastered, how many I'm so-so on. 
1. Download my flash cards as a CSV.
1. Mobile support. 
1. Duplicate detection. If word already exists, prompt the user that a similar word already exists and ask if they want to skip adding this word. 
2. Add more interesting ways to decide which cards to show, based on mastery. Basically implement spaced repition properly. 
3. Better UI design
4. Put it online somewhere and maybe add a login system. 
5. "proper" spaced reptition. 
6. Allow adding audio clips to flash cards. 
7. Allow adding non-latin text to flash cards and having that be another axis of review maybe. 

Some spaced repitition principles
1.	Forgetting Curve: We naturally forget over time, with the rate depending on difficulty and frequency of review. Your app should calculate optimal intervals based on recall strength to ensure timely reviews, slowing forgetting.
3.	Graduated Interval: When a user remembers a card, increase the time before the next review. Intervals might start at 1 day, then 3 days, 7 days, etc., but should be adjustable based on each user’s recall.
4.	Leitner System: A basic SRS setup where cards are grouped by “boxes” indicating their difficulty. Cards are reviewed more frequently in easier boxes and less in harder ones. If a card is remembered, it moves to a less frequent box. If forgotten, it moves to a more frequent box.
5.	Ebbinghaus’ Spacing Effect: Spacing reviews over days, not cramming, boosts retention. Make sure cards are not shown too soon or too late—timing is key to retention without overburdening.
6.	Ease and Difficulty Rating: Let users rate how easy or hard each flashcard was to recall. Use these ratings to adjust intervals dynamically. Cards marked “easy” can be delayed more than “hard” ones, which should reappear sooner.
7.	Personalization: Learners progress at different speeds. Using metrics like success rate, adjust the frequency individually for each user to optimize learning speed and retention.
