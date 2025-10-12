function onCreatePost()
    makeLuaSprite('tymek/crazyguy', 'tymek/crazyguy', -2400, -1000);
    setScrollFactor('tymek/crazyguy', 1, 1);
    scaleObject('tymek/crazyguy', 18, 12);
	addGlitchEffect('tymek/crazyguy', 1, 3);
    addLuaSprite('tymek/crazyguy', false)
end