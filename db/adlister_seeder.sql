USE adlister_db;

INSERT INTO users (id, username, email, password) VALUES (1, 'test', 'test@test.com', 'test'); 

INSERT INTO ads (id, userId, title, category, description) VALUES (1, 1, 'ads title', 'category', 'ads description');

INSERT INTO users (id, username, email, password) VALUES (2, 'a', 'test@test.com', 'a');

INSERT INTO ads VALUES (2,0,'Selling life.','Life. You know... That thing that you live! \r\n\r\nBatteries not included.','test'),(3,0,'please work','asdfasdf','test'),(4,2,'ad from a','description from a','a'),(5,2,'Free million dollars','jk.','AhrensTheFirstAvenger'),(6,2,'Snackos for doggos','Nom nom snacks.\r\n','AhrensTheFirstAvenger'),(7,2,'NEED HELP!!!','Trying to bake a cake without burning the house down. \r\n\r\nMUST HAVE DECENT BAKING SKILLS!!!','AhrensTheFirstAvenger'),(8,2,'Buying car for $300','Must have under 20,000 miles,\r\nneeds to have working a/c,\r\nmust have working radio,\r\nmust be a 2023 or newer, \r\n\r\n','AhrensTheFirstAvenger'),(9,3,'pls help fund luis for c r i s p y McD\'s chicky nuggys','he needs the chicky nuggie $$$','LadyK'),(10,3,'Help me learn the difference between to and too','da texas skool sytem hath faild meh. pls hlp','LadyK'),(11,3,'help me get a l o r g e brain like Prof Xavier','help my brain grow!!!','LadyK'),(12,4,'Starting a gang','mom says I gotta be home by 8 though.','YaelOverHarvard'),(13,4,'chonky cat for sale','please come get this absolute unit','YaelOverHarvard'),(14,4,'buy a piece of the moon','$12','YaelOverHarvard'),(15,4,'Have copy of The Pacifier that I\'m not using','the movie. not an actual pacifier...','YaelOverHarvard'),(16,2,'fr e sh a voca do','COME TO DEL TACO!!!','AhrensTheFirstAvenger');




