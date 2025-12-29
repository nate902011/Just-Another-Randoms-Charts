function onCreatePost()
	makeLuaSprite('arena-bg', 'arena-bg', -1000, -200);
	setLuaSpriteScrollFactor('arena-bg', 1, 1);
	scaleObject('arena-bg', 1, 1);
    addLuaSprite('arena-bg', false);

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