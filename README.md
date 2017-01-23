# Bookmark Manager

Bookmark manager project.


User Stories
-----
```
As an internet user
So that I can visit websites again
I want to be able to view a list of links

As an internet user
So that I can visit websites again
I want to be able to add new links to my list

As an internet user
So that I can categorise the links
I want to be able to add tags to the links

As an internet user
So that I can find a specific link
I want to be able to search by tag
```

Domain Model
-----
________________          ________________
| WEBSITES/URLs | Add    |   LIST         |
|_______________| -----> |________________|
                                ^  
                                | Add
                                |
                          ________________     Search     
                          |   TAGS        | <------------
                          |_______________|
