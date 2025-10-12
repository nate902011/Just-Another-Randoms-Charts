function onCreatePost()
    makeAnimatedLuaSprite('tymek/uh', 'tymek/uh', -1700, -600);
    addAnimationByPrefix('tymek/uh', 'idle', 'idle', 24, true);
    setLuaSpriteScrollFactor('tymek/uh', 1, 1);
    scaleObject('tymek/uh', 12, 8);
	addGlitchEffect('tymek/uh', 0.2, 0.01, 0.05);
    addLuaSprite('tymek/uh', false)
end