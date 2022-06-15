This is from consumption.cpp so this could be a way to introduce what we want. Don't know if this can be put in the mod though. 
If you have the negative trait -> the fun is -1, positive -> 1
    if( has_trait( trait_GOURMAND ) ) {
        if( fun < -1 ) {
            fun_max = fun;
            fun /= 2;
        } else if( fun > 0 ) {
            fun_max *= 3;
            fun = fun * 3 / 2;
        }
    }
Would need to see what comestible passed to the function is which I think is what is happening? 
How can I make the cpp code debug? 

Is it possible to have the enjoyment be somethin that is character dependend? 
This seems quite hard since the values are loaded on startup. 
Maybe there is some way to make the change happen on the character's side instead of the item

possibilities:
1. Attach somesort of flag or effect to cranberries that we can have determine whether we like it not
2. add a check on having consumed a cranberry 

These both seem kind of hard. Is there anything else that works like this? Look into this and also how eating and effects work on the character


Changes: 
* changed cranberry juice to be slightly enjoyment positive. I enjoy it and as real life is balanced I'm allowing this happen. 
* did not change raw cranberries since this seems to be a commonly disliked food
Reasoning: 
* I like cranberries