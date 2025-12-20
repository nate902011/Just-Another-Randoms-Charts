--iconBopTypes = {"Goofy", "OS Engine"}

hitBased = false
funniNoteShit = false
--if funniNoteShit is false, this can't happen
funnierNoteShit = false
--if funniNoteShit or funnierNoteShit is false, this can't happen
funniestNoteShit = false

function onBeatHit()
	if curBeat % 4 == 0 then
		setProperty('timeTxt.scale.x', 1.6)
		setProperty('timeTxt.scale.y', 0.8)
		setProperty('timeBar.scale.x', 1.6)
		setProperty('timeBar.scale.y', 0.8)
		setProperty('timeBarBG.scale.x', 1.6)
		setProperty('timeBarBG.scale.y', 0.8)
		setProperty('botplayTxt.scale.x', 1.6)
		setProperty('botplayTxt.scale.y', 0.8)
		doTweenScale('timeTxt', 'timeTxt', 1, ((60/curBpm)/playbackRate)*2, 'backOut')
		doTweenScale('timeBar', 'timeBar', 1, ((60/curBpm)/playbackRate)*2, 'backOut')
		doTweenScale('timeBarBG', 'timeBarBG', 1, ((60/curBpm)/playbackRate)*2, 'backOut')
		doTweenScale('botplayTxt', 'botplayTxt', 1, ((60/curBpm)/playbackRate)*2, 'backOut')


		if not hitBased then
				setProperty('iconP1.scale.x', 0.2 + 3 * (getProperty('health')/getProperty('maxHealth')))
				setProperty('iconP1.scale.y', 0.9 - 0.7 * (getProperty('health')/getProperty('maxHealth')))
				setProperty('iconP2.scale.x', 0.4 + 0.8 / (getProperty('health')/getProperty('maxHealth')))
				setProperty('iconP2.scale.y', 0.7 - 0.225 / (getProperty('health') * getProperty('maxHealth')))
				setProperty('iconP1.angle', 0 - 90 * (getProperty('health')/getProperty('maxHealth')))
				setProperty('iconP2.angle', 90 - 90 * (getProperty('health')/getProperty('maxHealth')))
				doTweenScale('iconP1', 'iconP1', 1, ((60/curBpm)/playbackRate)*2, 'backOut')
				doTweenScale('iconP2', 'iconP2', 1, ((60/curBpm)/playbackRate)*2, 'backOut')
				doTweenAngle('iconP1a', 'iconP1', 0, ((60/curBpm)/playbackRate)*2, 'backOut')
				doTweenAngle('iconP2a', 'iconP2', 0, ((60/curBpm)/playbackRate)*2, 'backOut')
		end
	elseif curBeat % 2 == 0 and curBeat % 4 ~= 0 then
		setProperty('timeTxt.scale.x', 0.4)
		setProperty('timeTxt.scale.y', 3.2)
		setProperty('timeBar.scale.x', 0.4)
		setProperty('timeBar.scale.y', 3.2)
		setProperty('timeBarBG.scale.x', 0.4)
		setProperty('timeBarBG.scale.y', 3.2)
		setProperty('botplayTxt.scale.x', 0.4)
		setProperty('botplayTxt.scale.y', 3.2)
		doTweenScale('timeTxt', 'timeTxt', 1, ((60/curBpm)/playbackRate)*2, 'backOut')
		doTweenScale('timeBar', 'timeBar', 1, ((60/curBpm)/playbackRate)*2, 'backOut')
		doTweenScale('timeBarBG', 'timeBarBG', 1, ((60/curBpm)/playbackRate)*2, 'backOut')
		doTweenScale('botplayTxt', 'botplayTxt', 1, ((60/curBpm)/playbackRate)*2, 'backOut')


		if not hitBased then
				setProperty('iconP1.scale.x', 1 - 0.6 * (getProperty('health')/getProperty('maxHealth')))
				setProperty('iconP1.scale.y', 0.2 + 3 * (getProperty('health')/getProperty('maxHealth')))
				setProperty('iconP2.scale.x', 0.7 - 0.225 / (getProperty('health') * getProperty('maxHealth')))
				setProperty('iconP2.scale.y', 0.4 + 0.8 / (getProperty('health')/getProperty('maxHealth')))
				setProperty('iconP1.angle', 120 * (getProperty('health')/getProperty('maxHealth')))
				setProperty('iconP2.angle', -120 + 30 * (getProperty('health') * getProperty('maxHealth')))
				doTweenScale('iconP1', 'iconP1', 1, ((60/curBpm)/playbackRate)*2, 'backOut')
				doTweenScale('iconP2', 'iconP2', 1, ((60/curBpm)/playbackRate)*2, 'backOut')
				doTweenAngle('iconP1a', 'iconP1', 0, ((60/curBpm)/playbackRate)*2, 'backOut')
				doTweenAngle('iconP2a', 'iconP2', 0, ((60/curBpm)/playbackRate)*2, 'backOut')
		end
	end
end

function onCreatePost()
setPropertyFromClass('ClientPrefs', 'iconBounceType', 'None')
defaultBoyfriendScaleX = getProperty('boyfriend.scale.x')
defaultBoyfriendScaleY = getProperty('boyfriend.scale.y')
defaultDadScaleX = getProperty('dad.scale.x')
defaultDadScaleY = getProperty('dad.scale.y')
defaultGfScaleX = getProperty('gf.scale.x')
defaultGfScaleX = getProperty('gf.scale.y')
end

function onEvent(n, v1, v2)
	if n == 'Change Character' then
		if v1 == '0' or v1 == 'dad' or v1 == 'opponent' then
			defaultDadScaleX = getProperty('dad.scale.x')
			defaultDadScaleY = getProperty('dad.scale.y')
		elseif v1 == '1' or v1 == 'gf' or v1 == 'girlfriend' then
			defaultGfScaleX = getProperty('gf.scale.x')
			defaultGfScaleX = getProperty('gf.scale.y')
		else
			defaultBoyfriendScaleX = getProperty('boyfriend.scale.x')
			defaultBoyfriendScaleY = getProperty('boyfriend.scale.y')
		end
	end
end

playhit = 0
opphit = 0

function goodNoteHit(id, dir, type, sustain)
	if hitBased then
		cancelTween('iconP1a')
		if playhit % 2 == 0 then
				setProperty('iconP1.scale.x', 0.2 + 3 * (getProperty('health')/getProperty('maxHealth')))
				setProperty('iconP1.scale.y', 0.9 - 0.7 * (getProperty('health')/getProperty('maxHealth')))
				setProperty('iconP1.angle', 0 - 90 * (getProperty('health')/getProperty('maxHealth')))
				doTweenScale('iconP1', 'iconP1', 1, ((60/curBpm)/playbackRate)*2, 'backOut')
				doTweenAngle('iconP1a', 'iconP1', 0, ((60/curBpm)/playbackRate)*2, 'backOut')
				if not sustain then
				playhit = playhit + 1
				end
		elseif playhit % 1 == 0 then
				setProperty('iconP1.scale.x', 1 - 0.6 * (getProperty('health')/getProperty('maxHealth')))
				setProperty('iconP1.scale.y', 0.2 + 3 * (getProperty('health')/getProperty('maxHealth')))
				setProperty('iconP1.angle', 120 * (getProperty('health')/getProperty('maxHealth')))
				doTweenScale('iconP1', 'iconP1', 1, ((60/curBpm)/playbackRate)*2, 'backOut')
				doTweenAngle('iconP1a', 'iconP1', 0, ((60/curBpm)/playbackRate)*2, 'backOut')
				if not sustain then
				playhit = playhit - 1
				end
		end
	end
end

function opponentNoteHit(id, dir, type, sustain)
	if hitBased then
		cancelTween('iconP2a')
		if opphit % 2 == 0 then
				setProperty('iconP2.scale.x', 0.4 + 0.8 / (getProperty('health')/getProperty('maxHealth')))
				setProperty('iconP2.scale.y', 0.7 - 0.225 / (getProperty('health') * getProperty('maxHealth')))
				setProperty('iconP2.angle', 90 - 90 * (getProperty('health')/getProperty('maxHealth')))
				doTweenScale('iconP2', 'iconP2', 1, ((60/curBpm)/playbackRate)*2, 'backOut')
				doTweenAngle('iconP2a', 'iconP2', 0, ((60/curBpm)/playbackRate)*2, 'backOut')
				if not sustain then
				opphit = opphit + 1
				end
		elseif opphit % 1 == 0 then
				setProperty('iconP2.scale.x', 0.7 - 0.225 / (getProperty('health') * getProperty('maxHealth')))
				setProperty('iconP2.scale.y', 0.4 + 0.8 / (getProperty('health')/getProperty('maxHealth')))
				setProperty('iconP2.angle', -120 + 30 * (getProperty('health') * getProperty('maxHealth')))
				doTweenScale('iconP2', 'iconP2', 1, ((60/curBpm)/playbackRate)*2, 'backOut')
				doTweenAngle('iconP2a', 'iconP2', 0, ((60/curBpm)/playbackRate)*2, 'backOut')
			elseif daBounceType == "OS Engine" then
				if not sustain then
				opphit = opphit - 1
				end
		end
	end
end

function onUpdate()
	if funniNoteShit then
			if funnierNoteShit and funniestNoteShit then
				setProperty('boyfriend.scale.x', defaultBoyfriendScaleX*getProperty('iconP1.scale.x'))
				setProperty('boyfriend.scale.y', defaultBoyfriendScaleY*getProperty('iconP1.scale.y'))
				setProperty('boyfriend.angle', getProperty('iconP1.angle'))
				setProperty('dad.scale.x', defaultDadScaleX*getProperty('iconP2.scale.x'))
				setProperty('dad.scale.y', defaultDadScaleY*getProperty('iconP2.scale.y'))
				setProperty('dad.angle', getProperty('iconP2.angle'))
				setProperty('gf.scale.x', defaultGfScaleX*getProperty('iconP2.scale.x')*getProperty('iconP1.scale.x'))
				setProperty('gf.scale.y', defaultGfScaleX*getProperty('iconP2.scale.y')*getProperty('iconP1.scale.y'))
				setProperty('gf.angle', getProperty('iconP2.angle')+getProperty('iconP1.angle'))
				setProperty('camHUD.angle', 0 - getProperty('iconP1.angle') - getProperty('iconP2.angle'))
				setProperty('camGame.angle', 0 - getProperty('iconP1.angle') - getProperty('iconP2.angle'))
			end

		for i = 0,getProperty('opponentStrums.length')-1 do
			setPropertyFromGroup('opponentStrums', i, 'scale.x', getProperty('iconP2.scale.x')*.7)
			setPropertyFromGroup('opponentStrums', i, 'scale.y', getProperty('iconP2.scale.y')*.7)
			setPropertyFromGroup('opponentStrums', i, 'angle', getProperty('iconP2.angle'))
			if funnierNoteShit then
				setPropertyFromGroup('opponentStrums', i, 'direction', getProperty('iconP2.angle')+90)
			end
		end

		for i = 0,getProperty('playerStrums.length')-1 do
			setPropertyFromGroup('playerStrums', i, 'scale.x', getProperty('iconP1.scale.x')*.7)
			setPropertyFromGroup('playerStrums', i, 'scale.y', getProperty('iconP1.scale.y')*.7)
			setPropertyFromGroup('playerStrums', i, 'angle', getProperty('iconP1.angle'))
			if funnierNoteShit then
				setPropertyFromGroup('playerStrums', i, 'direction', getProperty('iconP1.angle')+90)
			end
		end
	end
end