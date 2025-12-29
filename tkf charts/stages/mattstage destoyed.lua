function onCreatePost()
	makeLuaSprite('arenanightbg', 'arenanightbg', -1000, -200);
	setLuaSpriteScrollFactor('arenanightbg', 1, 1);
	scaleObject('arenanightbg', 1, 1);
    addLuaSprite('arenanightbg', false);

    makeAnimatedLuaSprite('arena-characters', 'arena-characters', -1000, 0);
    addAnimationByPrefix('arena-characters', 'idle', 'bg-characters0', 24, false);
    setLuaSpriteScrollFactor('arena-characters', 1, 1);
    scaleObject('arena-characters', 1, 1);
    addLuaSprite('arena-characters', false)
end

function onBeatHit()
    if curBeat % 2 == 0 then
        playAnim('arena-characters', 'idle')
    end
end