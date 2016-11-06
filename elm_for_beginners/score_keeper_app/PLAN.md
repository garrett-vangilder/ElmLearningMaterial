# Planning Basketball Scorekeeper App

## Model 

TODO: Model's Shape 

```
Model = 
    { Players : List Player 
    , playerName : String
    , playerId : Maybe Int 
    , plays : List Play
    }
```

TODO : Player's Shape 

```
Player = 
    { id : Int 
    , name : String
    , points : Int
    }
```

TODO : Play's Shape 
```
Play = 
    { id : Int 
    , playerId : Int 
    , name : String
    , points : Int
    }
```

TODO : Initial Model 

## Update 

What can be done in our app? 

* Edit 
* Score 
* Input 
* Save 
* Cancel 
* DeletePlay

TODO: Create Message Union Type 

TODO : Create Update Function(s)

## View 

What are the logical sections/groupings of our UI?

* main view (outermost function)
    * player section
        * player list header
        * player list 
            * player 
        * point total 
    * player form 
    * playlist section
        * play list header 
        * play list
            * play 

TODO: Create functions for each of the above sections  