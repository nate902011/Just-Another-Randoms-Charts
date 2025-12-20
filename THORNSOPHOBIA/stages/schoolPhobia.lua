hasGhouls = false;

function onCreate()
	posX = -800;
	posY = 0;

	-- animated sprites that load only if low quality option is turned off
	if not lowQuality then
		makeLuaSprite('bg', 'thephobiabackround', posX, posY);
		setScrollFactor('bg', 0.8, 0.9);
		scaleObject('bg', 2, 2, false);
		setProperty('bg.antialiasing', false);
		addLuaSprite('bg', false);

		makeAnimatedLuaSprite('bgGhouls', 'weeb/bgGhouls', -100, 190);
		addAnimationByPrefix('bgGhouls', 'idle', 'BG freaks glitch instance', 24, false);
		setScrollFactor('bgGhouls', 0.9, 0.9);
		scaleObject('bgGhouls', 6, 6);
		setProperty('bgGhouls.antialiasing', false);
		setProperty('bgGhouls.visible', false);
		addLuaSprite('bgGhouls', false);
		hasGhouls = true;
	else
		makeLuaSprite('bg', 'thephobiabackround', posX, posY);
		setScrollFactor('bg', 0.8, 0.9);
		scaleObject('bg', 2, 2, false);
		setProperty('bg.antialiasing', false);
		addLuaSprite('bg', false);
	end

	-- death screen properties
	setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-pixel-dead');
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx-pixel');
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver-pixel');
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd-pixel');
end

function onCreatePost()
	-- dad trail, due to being too case-specific, there's no native implementation for the trails, so we just use runHaxeCode for it.
	addHaxeLibrary('FlxTrail', 'flixel.addons.effects');
	runHaxeCode("game.insert(game.members.indexOf(game.dadGroup) - 1, new FlxTrail(game.dad, null, 4, 24, 0.3, 0.1));");
end

function onEvent(name, value1, value2)
	if name == 'Trigger BG Ghouls' then
		playAnim('bgGhouls', 'idle', true);
		setProperty('bgGhouls.visible', true);
	end
end

function onUpdate(elapsed)
	if hasGhouls and getProperty('bgGhouls.animation.curAnim.finished') then
		setProperty('bgGhouls.visible', false);
	end
end