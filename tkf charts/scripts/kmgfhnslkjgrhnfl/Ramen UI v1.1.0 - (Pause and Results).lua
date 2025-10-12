--Made by RamenDominoes on GB ( https://gamebanana.com/members/2135195 )
--Please credit if you use this!!! Thanks! <3

--Custom Functions--
function RatingPercentage(rating)
	if getProperty('totalPlayed') > 0 then
		VisualRating = math.floor((getProperty(rating)/getProperty('totalPlayed'))*100)
	elseif getProperty('totalPlayed') == 0 then
		VisualRating = 0
	end
	return VisualRating
end
function RatingPercentageAccurate(rating)
	if getProperty('totalPlayed') > 0 then
		RatingPercent = string.format("%.2f",(getProperty(rating)/getProperty('totalPlayed'))*100)
	elseif getProperty('totalPlayed') == 0 then
		RatingPercent = 0
	end
	return RatingPercent
end
function flixelKeyPress(key)
	return getPropertyFromClass('flixel.FlxG', 'keys.justPressed.'..key)
end
function simpleishGraphic(tag, xPos, yPos, graphicWidth, graphicHeight, color)
	makeLuaSprite(tag, '', xPos, yPos)
	makeGraphic(tag, graphicWidth, graphicHeight, color)
	setObjectCamera(tag, 'Other')
	addLuaSprite(tag)
end
function simpleishText(tag, text, textWidth, xPos, yPos, textSize, textBorderSize, alignment)
	makeLuaText(tag, text, textWidth, xPos, yPos)
	setTextSize(tag, textSize)
	setTextColor(tag, '000000')
	setTextBorder(tag, textBorderSize, 'FFFFFF')
	setTextAlignment(tag, alignment)
	setObjectCamera(tag, 'Other')
	addLuaText(tag)
end
function RGBtoHex(R,G,B) -- behold, the most mid RGB to Hex converter to exist LMAO

	Decimal1 = math.floor(R/16)
	Decimal2 = ((R/16)%1)*16

	Decimal3 = math.floor(G/16)
	Decimal4 = ((G/16)%1)*16

	Decimal5 = math.floor(B/16)
	Decimal6 = ((B/16)%1)*16

	LetterValues = 'ABCDEF'

-- testing "string.sub" shit lol
	if Decimal1 == 10 then
		Decimal1 = string.sub(LetterValues, 1,1)
	elseif Decimal1 == 11 then
		Decimal1 = string.sub(LetterValues, 2,2)
	elseif Decimal1 == 12 then
		Decimal1 = string.sub(LetterValues, 3,3)
	elseif Decimal1 == 13 then
		Decimal1 = string.sub(LetterValues, 4,4)
	elseif Decimal1 == 14 then
		Decimal1 = string.sub(LetterValues, 5,5)
	elseif Decimal1 == 15 then
		Decimal1 = string.sub(LetterValues, 6,6)
	end
	if Decimal2 == 10 then
		Decimal2 = string.sub(LetterValues, 1,1)
	elseif Decimal2 == 11 then
		Decimal2 = string.sub(LetterValues, 2,2)
	elseif Decimal2 == 12 then
		Decimal2 = string.sub(LetterValues, 3,3)
	elseif Decimal2 == 13 then
		Decimal2 = string.sub(LetterValues, 4,4)
	elseif Decimal2 == 14 then
		Decimal2 = string.sub(LetterValues, 5,5)
	elseif Decimal2 == 15 then
		Decimal2 = string.sub(LetterValues, 6,6)
	end
	if Decimal3 == 10 then
		Decimal3 = string.sub(LetterValues, 1,1)
	elseif Decimal3 == 11 then
		Decimal3 = string.sub(LetterValues, 2,2)
	elseif Decimal3 == 12 then
		Decimal3 = string.sub(LetterValues, 3,3)
	elseif Decimal3 == 13 then
		Decimal3 = string.sub(LetterValues, 4,4)
	elseif Decimal3 == 14 then
		Decimal3 = string.sub(LetterValues, 5,5)
	elseif Decimal3 == 15 then
		Decimal3 = string.sub(LetterValues, 6,6)
	end
	if Decimal4 == 10 then
		Decimal4 = string.sub(LetterValues, 1,1)
	elseif Decimal4 == 11 then
		Decimal4 = string.sub(LetterValues, 2,2)
	elseif Decimal4 == 12 then
		Decimal4 = string.sub(LetterValues, 3,3)
	elseif Decimal4 == 13 then
		Decimal4 = string.sub(LetterValues, 4,4)
	elseif Decimal4 == 14 then
		Decimal4 = string.sub(LetterValues, 5,5)
	elseif Decimal4 == 15 then
		Decimal4 = string.sub(LetterValues, 6,6)
	end
	if Decimal5 == 10 then
		Decimal5 = string.sub(LetterValues, 1,1)
	elseif Decimal5 == 11 then
		Decimal5 = string.sub(LetterValues, 2,2)
	elseif Decimal5 == 12 then
		Decimal5 = string.sub(LetterValues, 3,3)
	elseif Decimal5 == 13 then
		Decimal5 = string.sub(LetterValues, 4,4)
	elseif Decimal5 == 14 then
		Decimal5 = string.sub(LetterValues, 5,5)
	elseif Decimal5 == 15 then
		Decimal5 = string.sub(LetterValues, 6,6)
	end
	if Decimal6 == 10 then
		Decimal6 = string.sub(LetterValues, 1,1)
	elseif Decimal6 == 11 then
		Decimal6 = string.sub(LetterValues, 2,2)
	elseif Decimal6 == 12 then
		Decimal6 = string.sub(LetterValues, 3,3)
	elseif Decimal6 == 13 then
		Decimal6 = string.sub(LetterValues, 4,4)
	elseif Decimal6 == 14 then
		Decimal6 = string.sub(LetterValues, 5,5)
	elseif Decimal6 == 15 then
		Decimal6 = string.sub(LetterValues, 6,6)
	end
		Hex1 = Decimal1
		Hex2 = Decimal2
		Hex3 = Decimal3
		Hex4 = Decimal4
		Hex5 = Decimal5
		Hex6 = Decimal6
		local HexCode = table.concat{Hex1,Hex2,Hex3,Hex4,Hex5,Hex6}
	return HexCode
end
--End of Custom Functions--

allowPause = true
liveCombo = 0
maxCombo = 0
--For the custom pause screen
function onPause()
	return Function_Stop
end
function onGameOver()
	allowPause = false
end
function onUpdate()
    if flixelKeyPress('ENTER') and allowPause then
        openCustomSubstate('PauseMenu', true)
		playSound('scrollMenu', 0.5)
    end
end
function goodNoteHit(id, direction, noteType, isSustainNote)
	if not isSustainNote then
		liveCombo = liveCombo + 1
	end
	if liveCombo > maxCombo and not isSustainNote then
		maxCombo = maxCombo + 1
	end
end
function noteMiss(membersIndex, noteData, noteType, isSustainNote)
	liveCombo = 0
end

--Pause Substate
function onCustomSubstateCreate(PauseMenu)
	local resumeSelected = true
	local restartSelected = false
	local exitSelected = false
	local allowKeyPress = true

	--lol
	local TotalSeconds = ((songLength/1000) % 60)
	local TotalMinutes = (((songLength/1000) - TotalSeconds) / 60)
	if TotalSeconds == 60 then
		TotalMinutes = TotalMinutes + 1
	end

	local CurTime = ((getPropertyFromClass('Conductor', 'songPosition')/1000))
	local CurSeconds = (CurTime%60)
	local CurMinutes = ((CurTime - CurSeconds)/60)
	if CurSeconds == 60 then
		CurMinutes = CurMinutes + 1
	end

	if getPropertyFromClass('Conductor', 'songPosition')/1000 < 0 then
		CurrentTime = '00:00'
		TotalTime = '00:00'
	else
		CurrentTime = string.format("%02d:%02d", CurMinutes, CurSeconds)
		TotalTime = string.format("%02d:%02d", TotalMinutes, TotalSeconds)
	end

	local R = getProperty('dad.healthColorArray[0]')
	local G = getProperty('dad.healthColorArray[1]')
	local B = getProperty('dad.healthColorArray[2]')
	local FG_Graphic_Color = RGBtoHex(R,G,B)
	local BG_Graphic_Color = 'FFFFFF'
	local Graphics = {'PauseMenuBG','PauseMenuSongBG','PauseMenuSongFG','PauseMenuCompletionBG','PauseMenuCompletionFG','PauseMenuFailsBG','PauseMenuFailsFG','PauseMenuStatsBG','PauseMenuStatsFG','PauseMenuOptionsBG','PauseMenuOptionsFG'}
	local Text = {'SongNameAndDifficulty','SongCompletion','SongFails','SongFailsTracker','TotalNotesHit','SicksLabel','SicksCount','GoodsLabel','GoodsCount','BadsLabel','BadsCount','ShitsLabel','ShitsCount','MissesLabel','MissesCount', 'resumeOption', 'restartOption', 'exitOption'}

    simpleishGraphic('PauseMenuBG', 0, 0, screenWidth, screenHeight, '000000')
    setProperty('PauseMenuBG.alpha', 0.8)

	simpleishGraphic('PauseMenuSongBG', 0, -100, 1000, 100, BG_Graphic_Color)
	screenCenter('PauseMenuSongBG', 'x')
	simpleishGraphic('PauseMenuSongFG', getProperty('PauseMenuSongBG.x')+10, getProperty('PauseMenuSongBG.y'), 980, 90, FG_Graphic_Color)
	simpleishText('SongNameAndDifficulty', songName..' | '..getProperty('storyDifficultyText'), 980, getProperty('PauseMenuSongFG.x'), getProperty('PauseMenuSongFG.y')+20, 40, 3, 'center')

	simpleishGraphic('PauseMenuCompletionBG', 0, 720, 1000, 100, BG_Graphic_Color)
	screenCenter('PauseMenuCompletionBG', 'x')
	simpleishGraphic('PauseMenuCompletionFG', getProperty('PauseMenuCompletionBG.x')+10, getProperty('PauseMenuCompletionBG.y')+10, 980, 90, FG_Graphic_Color)
	simpleishText('SongCompletion', 'Completion: '..getProperty('timeBar.percent')..'% | Time: '..CurrentTime..' / '..TotalTime, 980, getProperty('PauseMenuCompletionFG.x'), getProperty('PauseMenuCompletionFG.y')+25, 40, 3, 'center')

	simpleishGraphic('PauseMenuFailsBG', -250, 0, 250, 400, BG_Graphic_Color)
	screenCenter('PauseMenuFailsBG', 'y')
	simpleishGraphic('PauseMenuFailsFG', getProperty('PauseMenuFailsBG.x'), getProperty('PauseMenuFailsBG.y')+10, 240, 380, FG_Graphic_Color)
	simpleishText('SongFails', 'BlueBalled:', 240, getProperty('PauseMenuFailsFG.x'), getProperty('PauseMenuFailsFG.y')+60, 35, 3, 'center')
	simpleishText('SongFailsTracker', getPropertyFromClass('PlayState', 'deathCounter'), 240, getProperty('PauseMenuFailsFG.x'), getProperty('SongFails.y')+80, 200, 5, 'center')

	simpleishGraphic('PauseMenuStatsBG', 1280, 0, 250, 400, BG_Graphic_Color)
	screenCenter('PauseMenuStatsBG', 'y')
	simpleishGraphic('PauseMenuStatsFG', getProperty('PauseMenuStatsBG.x')+10, getProperty('PauseMenuStatsBG.y')+10, 240, 380, FG_Graphic_Color)
	simpleishText('TotalNotesHit', 'Notes Hit: '..getProperty('songHits'), 240, getProperty('PauseMenuStatsFG.x'), getProperty('PauseMenuStatsFG.y')+65, 25, 2, 'center')
	simpleishText('SicksLabel', 'Sicks:', 240, getProperty('PauseMenuStatsFG.x')+5, getProperty('TotalNotesHit.y')+60, 25, 2, 'left')
	simpleishText('SicksCount', getProperty('sicks'), 240, getProperty('PauseMenuStatsFG.x')-5, getProperty('TotalNotesHit.y')+60, 25, 2, 'right')
	simpleishText('GoodsLabel', 'Goods:', 240, getProperty('PauseMenuStatsFG.x')+5, getProperty('SicksLabel.y')+40, 25, 2, 'left')
	simpleishText('GoodsCount', getProperty('goods'), 240, getProperty('PauseMenuStatsFG.x')-5, getProperty('SicksLabel.y')+40, 25, 2, 'right')
	simpleishText('BadsLabel', 'Bads:', 240, getProperty('PauseMenuStatsFG.x')+5, getProperty('GoodsLabel.y')+40, 25, 2, 'left')
	simpleishText('BadsCount', getProperty('bads'), 240, getProperty('PauseMenuStatsFG.x')-5, getProperty('GoodsLabel.y')+40, 25, 2, 'right')
	simpleishText('ShitsLabel', 'Shits:', 240, getProperty('PauseMenuStatsFG.x')+5, getProperty('BadsLabel.y')+40, 25, 2, 'left')
	simpleishText('ShitsCount', getProperty('shits'), 240, getProperty('PauseMenuStatsFG.x')-5, getProperty('BadsLabel.y')+40, 25, 2, 'right')
	simpleishText('MissesLabel', 'Misses:', 240, getProperty('PauseMenuStatsFG.x')+5, getProperty('ShitsLabel.y')+40, 25, 2, 'left')
	simpleishText('MissesCount', getProperty('songMisses'), 240, getProperty('PauseMenuStatsFG.x')-5, getProperty('ShitsLabel.y')+40, 25, 2, 'right')

	simpleishGraphic('PauseMenuOptionsBG', 0, 0, 600, 1, BG_Graphic_Color)
	screenCenter('PauseMenuOptionsBG', 'xy')
	simpleishGraphic('PauseMenuOptionsFG', 0, 0, 580, 1, FG_Graphic_Color)
	screenCenter('PauseMenuOptionsFG', 'xy')
	simpleishText('resumeOption', 'Resume', 580, getProperty('PauseMenuOptionsFG.x'), 325, 60, 3, 'center')
	setProperty('resumeOption.scale.y', 0.01)
	simpleishText('restartOption', 'Restart Song', 580, getProperty('PauseMenuOptionsFG.x'), 325, 60, 3, 'center')
	setProperty('restartOption.scale.y', 0.01)
	simpleishText('exitOption', 'Exit to Menu', 580, getProperty('PauseMenuOptionsFG.x'), 325, 60, 3, 'center')
	setProperty('exitOption.scale.y', 0.01)

	function onCustomSubstateCreatePost(PauseMenu)

		doTweenY('PauseMenuSongTween', 'PauseMenuSongBG', 0, 0.5, 'QuartOut')
		doTweenY('PauseMenuCompletionTween', 'PauseMenuCompletionBG', 620, 0.5, 'QuartOut')
		doTweenX('PauseMenuFailsTween', 'PauseMenuFailsBG', 0, 0.5, 'QuartOut')
		doTweenX('PauseMenuStatsTween', 'PauseMenuStatsBG', 1030, 0.5, 'QuartOut')

		doTweenY('PauseMenuOptionsBGTween1', 'PauseMenuOptionsBG', 160, 0.5, 'QuartOut')
		doTweenY('PauseMenuOptionsBGTween2', 'PauseMenuOptionsBG.scale', 400, 0.5, 'QuartOut')
		doTweenY('PauseMenuOptionsFGTween1', 'PauseMenuOptionsFG', 170, 0.5, 'QuartOut')
		doTweenY('PauseMenuOptionsFGTween2', 'PauseMenuOptionsFG.scale', 380, 0.5, 'QuartOut')
		runTimer('OptionsTimer', 0.1, 1)--Dont change this, it'll fuck it up LOL

	end


    function onCustomSubstateUpdate(PauseMenu)

		updateHitbox('PauseMenuOptionsBG')
		updateHitbox('PauseMenuOptionsFG')

		setProperty('PauseMenuSongFG.y', getProperty('PauseMenuSongBG.y'))
		setProperty('SongNameAndDifficulty.y', getProperty('PauseMenuSongFG.y')+20)

		setProperty('PauseMenuCompletionFG.y', getProperty('PauseMenuCompletionBG.y')+10)
		setProperty('SongCompletion.y', getProperty('PauseMenuCompletionFG.y')+25)

		setProperty('PauseMenuFailsFG.x', getProperty('PauseMenuFailsBG.x'))
		setProperty('SongFails.x', getProperty('PauseMenuFailsFG.x'))
		setProperty('SongFailsTracker.x', getProperty('PauseMenuFailsFG.x'))

		setProperty('PauseMenuStatsFG.x', getProperty('PauseMenuStatsBG.x')+10)
		setProperty('TotalNotesHit.x', getProperty('PauseMenuStatsFG.x'))
		setProperty('SicksLabel.x', getProperty('PauseMenuStatsFG.x')+5)
		setProperty('SicksCount.x', getProperty('PauseMenuStatsFG.x')-5)
		setProperty('GoodsLabel.x', getProperty('PauseMenuStatsFG.x')+5)
		setProperty('GoodsCount.x', getProperty('PauseMenuStatsFG.x')-5)
		setProperty('BadsLabel.x', getProperty('PauseMenuStatsFG.x')+5)
		setProperty('BadsCount.x', getProperty('PauseMenuStatsFG.x')-5)
		setProperty('ShitsLabel.x', getProperty('PauseMenuStatsFG.x')+5)
		setProperty('ShitsCount.x', getProperty('PauseMenuStatsFG.x')-5)
		setProperty('MissesLabel.x', getProperty('PauseMenuStatsFG.x')+5)
		setProperty('MissesCount.x', getProperty('PauseMenuStatsFG.x')-5)


	if allowKeyPress then 

		if flixelKeyPress('BACKSPACE') or flixelKeyPress('ESCAPE') or flixelKeyPress('UP') or flixelKeyPress('DOWN') or flixelKeyPress('ENTER') then
			playSound('scrollMenu', 0.5)
		end

        if flixelKeyPress('BACKSPACE') or flixelKeyPress('ESCAPE') then
            runTimer('exitTweens', 0.1, 1)
			allowKeyPress = false
        end

		if flixelKeyPress('UP') and resumeSelected then
			resumeSelected = false
			restartSelected = false
	 		exitSelected = true
		elseif flixelKeyPress('UP') and exitSelected then
			resumeSelected = false
			restartSelected = true
	 		exitSelected = false
		elseif flixelKeyPress('UP') and restartSelected then
			resumeSelected = true
			restartSelected = false
	 		exitSelected = false
		elseif flixelKeyPress('DOWN') and resumeSelected then
			resumeSelected = false
			restartSelected = true
	 		exitSelected = false
		elseif flixelKeyPress('DOWN') and restartSelected then
			resumeSelected = false
			restartSelected = false
	 		exitSelected = true
		elseif flixelKeyPress('DOWN') and exitSelected then
			resumeSelected = true
			restartSelected = false
	 		exitSelected = false
		end


		if resumeSelected then
			setProperty('resumeOption.alpha', 1)
			setTextString('resumeOption', '> Resume <')
		elseif not resumeSelected then
			setProperty('resumeOption.alpha', 0.6)
			setTextString('resumeOption', 'Resume')
		end
		if restartSelected then
			setProperty('restartOption.alpha', 1)
			setTextString('restartOption', '> Restart Song <')
		elseif not restartSelected then
			setProperty('restartOption.alpha', 0.6)
			setTextString('restartOption', 'Restart Song')
		end
		if exitSelected then
			setProperty('exitOption.alpha', 1)
			setTextString('exitOption', '> Exit to Menu <')
		elseif not exitSelected then
			setProperty('exitOption.alpha', 0.6)
			setTextString('exitOption', 'Exit to Menu')
		end

		if resumeSelected and flixelKeyPress('ENTER') then
			runTimer('exitTweens', 0.1, 1)
			allowKeyPress = false
		elseif restartSelected and flixelKeyPress('ENTER') then
			restartSong()
		elseif exitSelected and flixelKeyPress('ENTER') then
			exitSong()
			setPropertyFromClass('PlayState', 'deathCounter', 0)
		end
	end
end

	function onTimerCompleted(tag, loops, loopsLeft)

		if tag == 'OptionsTimer' then
			doTweenY('resumeOptionScaleTween', 'resumeOption.scale', 1, 0.5, 'ElasticInOut')
			doTweenY('restartOptionScaleTween', 'restartOption.scale', 1, 0.5, 'ElasticInOut')
			doTweenY('exitOptionScaleTween', 'exitOption.scale', 1, 0.5, 'ElasticInOut')
			doTweenY('resumeOptionTween', 'resumeOption', 225, 0.5, 'QuartOut')
			doTweenY('restartOptionTween', 'restartOption', 325, 0.5, 'QuartOut')
			doTweenY('exitOptionTween', 'exitOption', 425, 0.5, 'QuartOut')
		end

		if tag == 'exitTweens' then
			doTweenY('PauseMenuSongTween', 'PauseMenuSongBG', -100, 0.5, 'QuartIn')
			doTweenY('PauseMenuCompletionTween', 'PauseMenuCompletionBG', 720, 0.5, 'QuartIn')
			doTweenX('PauseMenuFailsTween', 'PauseMenuFailsBG', -250, 0.5, 'QuartIn')
			doTweenX('PauseMenuStatsTween', 'PauseMenuStatsBG', 1280, 0.5, 'QuartIn')
			doTweenY('PauseMenuOptionsBGTween1', 'PauseMenuOptionsBG', 360, 0.5, 'QuartIn')
			doTweenY('PauseMenuOptionsBGTween2', 'PauseMenuOptionsBG.scale', 0, 0.5, 'QuartIn')
			doTweenY('PauseMenuOptionsFGTween1', 'PauseMenuOptionsFG', 360, 0.5, 'QuartIn')
			doTweenY('PauseMenuOptionsFGTween2', 'PauseMenuOptionsFG.scale', 0, 0.5, 'QuartIn')
			doTweenY('resumeOptionScaleTween', 'resumeOption.scale', 0, 0.5, 'ElasticInOut')
			doTweenY('restartOptionScaleTween', 'restartOption.scale', 0, 0.5, 'ElasticInOut')
			doTweenY('exitOptionScaleTween', 'exitOption.scale', 0, 0.5, 'ElasticInOut')
			doTweenY('resumeOptionTween', 'resumeOption', 325, 0.5, 'QuartIn')
			doTweenY('restartOptionTween', 'restartOption', 325, 0.5, 'QuartIn')
			doTweenY('exitOptionTween', 'exitOption', 325, 0.5, 'QuartIn')
			doTweenAlpha('PauseMenuBGTween', 'PauseMenuBG', 0, 2)
			runTimer('closeSubstate', 2, 1)

			runTimer('3', 0, 1)
			runTimer('2', 0.8, 1)
			runTimer('1', 1.6, 1)
		end

		if tag == '3' then
			simpleishText('3', '3', screenWidth, 0, 0, 100, 3, 'center')
			screenCenter('3', 'xy')
		end
		if tag == '2' then
			removeLuaText('3', false)
			simpleishText('2', '2', screenWidth, 0, 0, 100, 3, 'center')
			screenCenter('2', 'xy')
			playSound('scrollMenu', 0.5)
		end
		if tag == '1' then
			removeLuaText('2', false)
			simpleishText('1', '1', screenWidth, 0, 0, 100, 3, 'center')
			screenCenter('1', 'xy')
			playSound('scrollMenu', 0.5)
		end

		if tag == 'closeSubstate' then
			closeCustomSubstate(PauseMenu)
		end
	end

    function onCustomSubstateDestroy(PauseMenu)
		for Numbers = 1,11 do
        	removeLuaSprite(Graphics[Numbers], false)
		end
		for Numbers = 1,18 do
			removeLuaText(Text[Numbers], false)
		end
		removeLuaText('1', false)
    end
end
--End of PauseSubstate

allowEnd = false

--Results Screen
function onEndSong()
	allowPause = false

	local R = getProperty('dad.healthColorArray[0]')
	local G = getProperty('dad.healthColorArray[1]')
	local B = getProperty('dad.healthColorArray[2]')
	local FG_Graphic_Color = RGBtoHex(R,G,B)

	simpleishGraphic('ResultsBG', 640, 360, 1, 1, 'FFFFFF')

	simpleishGraphic('ResultsFG', 640, 360, 1, 1, FG_Graphic_Color)

	doTweenX('ResultsBGTweenScaleX', 'ResultsBG.scale', 1280, 0.25, 'QuartOut')
	doTweenX('ResultsFGTweenScaleX', 'ResultsFG.scale', 1240, 0.25, 'QuartOut')
	runTimer('ResultsTimer', 0.5, 1)

	simpleishGraphic('Stripe1', -1500, 200, 1000, 10, 'FFFFFF')
	setProperty('Stripe1.angle', -45)
	simpleishGraphic('Stripe2', -1500, 200, 1000, 20, 'FFFFFF')
	setProperty('Stripe2.angle', -45)
	simpleishGraphic('Stripe3', -1500, 300, 1000, 60, 'FFFFFF')
	setProperty('Stripe3.angle', -45)
	simpleishGraphic('Stripe3a', -1500, 400, 1200, 60, 'FFFFFF')
	setProperty('Stripe3a.angle', -45)

	simpleishGraphic('SongNameAndDifficultyBarBG', -1500, 60, 1000, 100, 'FFFFFF')
	simpleishGraphic('SongNameAndDifficultyBarFG', -1500, 70, 980, 80, FG_Graphic_Color)
	simpleishText('SongNameBarText', '"'..songName..'" ['..getProperty('storyDifficultyText')..']', 980, -1500, 85, 40, 2, 'left')

	simpleishGraphic('SongStatsBarBG', -1500, 210, 350, 450, 'FFFFFF')
	simpleishGraphic('SongStatsBarFG', -1500, 220, 330, 430, FG_Graphic_Color)
	simpleishGraphic('SongStatsUnderLine', -1500, 270, 280, 5, 'FFFFFF')
	simpleishGraphic('NotesHitDivisionLine', -1500, 515, 100, 5, 'FFFFFF')

	simpleishText('SongStatsBarHeader', 'Song Stats', 330, -1500, 230, 40, 2, 'left')
	simpleishText('SongScore', 'Score: '..score, 330, -1500, 300, 30, 2, 'left')
	simpleishText('SongAccuracy', 'Accuracy: '..string.format("%.2f",(rating*100))..'%', 330, -1500, 360, 30, 2, 'left')
	simpleishText('SongRating', 'Rating: ['..ratingFC..']', 330, -1500, 420, 30, 2, 'left')
	simpleishText('SongNotesHitLabel', 'Notes Hit:', 330, -1500, 500, 30, 2, 'left')--why do i do this to myself
	simpleishText('SongNotesPlayed', getProperty('songHits'), 100, -1500, 485, 25, 2, 'center')--why do i do this to myself
	simpleishText('SongNotesTotal', getProperty('totalPlayed'), 100, -1500, 522, 25, 2, 'center')--why do i do this to myself
	simpleishText('SongHighestCombo', 'Max Combo: x'..maxCombo, 330, -1500, 580, 30, 2, 'left')

	simpleishGraphic('DetailedStatsBG', 1500, 210, 760, 450, 'FFFFFF')
	simpleishGraphic('DetailedStatsFG', 1500, 220, 740, 430, FG_Graphic_Color)
	simpleishGraphic('DetailedStatsBottomLine', 1500, 550, 660, 10, 'FFFFFF')

	simpleishGraphic('DetailedStatsPercentageLabelSpine', 1500, 250, 1, 300, 'FFFFFF')
	simpleishGraphic('DetailedStatsPercentageLabel0', 1500, 550, 20, 1, 'FFFFFF')
	simpleishText('0PercentLabel', '0%', 50, 1500, 540, 20, 1, 'center')

	simpleishGraphic('DetailedStatsPercentageLabel25', 1500, 475, 20, 1, 'FFFFFF')
	simpleishText('25PercentLabel', '25%', 50, 1500, 465, 20, 1, 'center')

	simpleishGraphic('DetailedStatsPercentageLabel50', 1500, 400, 20, 1, 'FFFFFF')
	simpleishText('50PercentLabel', '50%', 50, 1500, 390, 20, 1, 'center')

	simpleishGraphic('DetailedStatsPercentageLabel75', 1500, 325, 20, 1, 'FFFFFF')
	simpleishText('75PercentLabel', '75%', 50, 1500, 315, 20, 1, 'center')

	simpleishGraphic('DetailedStatsPercentageLabel100', 1500, 250, 20, 1, 'FFFFFF')
	simpleishText('100PercentLabel', '100%', 60, 1500, 240, 20, 1, 'center')


	simpleishGraphic('DetailedStatsSicksBGBG', 1500, 249, 82, 301, '000000')
	simpleishGraphic('DetailedStatsSicksBG', 1500, 250, 80, 300, 'FFFFFF')
	setProperty('DetailedStatsSicksBG.alpha', 0.6)
	simpleishText('SicksFinalCount', getProperty('sicks'), 80, 1500, 220, 20, 1, 'center')
	simpleishText('SicksRatingPercentage', RatingPercentageAccurate('sicks')..'%', 80, 1500, 540, 15, 1, 'center')
	if RatingPercentage('sicks') > 0 then
		simpleishGraphic('DetailedStatsSicksFG', 1500, 550 - (RatingPercentage('sicks')*3), 80, (RatingPercentage('sicks')*3), 'FFFFFF') --300 max
		setProperty('DetailedStatsSicksFG.alpha', 0.8)
		setProperty('SicksRatingPercentage.y', getProperty('DetailedStatsSicksFG.y')-10)
	end
	simpleishText('SicksDetailedLabel', 'Sicks', 80, 1500, 570, 25, 2, 'center')

	simpleishGraphic('DetailedStatsGoodsBGBG', 1500, 249, 82, 301, '000000')
	simpleishGraphic('DetailedStatsGoodsBG', 1500, 250, 80, 300, 'FFFFFF')
	setProperty('DetailedStatsGoodsBG.alpha', 0.6)
	simpleishText('GoodsFinalCount', getProperty('goods'), 80, 1500, 220, 20, 1, 'center')
	simpleishText('GoodsRatingPercentage', RatingPercentageAccurate('goods')..'%', 80, 1500, 540, 15, 1, 'center')
	if RatingPercentage('goods') > 0 then
		simpleishGraphic('DetailedStatsGoodsFG', 1500, 550 - (RatingPercentage('goods')*3), 80, (RatingPercentage('goods')*3), 'FFFFFF') --300 max
		setProperty('DetailedStatsGoodsFG.alpha', 0.8)
		setProperty('GoodsRatingPercentage.y', getProperty('DetailedStatsGoodsFG.y')-10)
	end
	simpleishText('GoodsDetailedLabel', 'Goods', 80, 1500, 570, 25, 2, 'center')

	simpleishGraphic('DetailedStatsBadsBGBG', 1500, 249, 82, 301, '000000')
	simpleishGraphic('DetailedStatsBadsBG', 1500, 250, 80, 300, 'FFFFFF')
	setProperty('DetailedStatsBadsBG.alpha', 0.6)
	simpleishText('BadsFinalCount', getProperty('bads'), 80, 1500, 220, 20, 1, 'center')
	simpleishText('BadsRatingPercentage', RatingPercentageAccurate('bads')..'%', 80, 1500, 540, 15, 1, 'center')
	if RatingPercentage('bads') > 0 then
		simpleishGraphic('DetailedStatsBadsFG', 1500, 550 - (RatingPercentage('bads')*3), 80, (RatingPercentage('bads')*3), 'FFFFFF') --300 max
		setProperty('DetailedStatsBadsFG.alpha', 0.8)
		setProperty('BadsRatingPercentage.y', getProperty('DetailedStatsBadsFG.y')-10)
	end
	simpleishText('BadsDetailedLabel', 'Bads', 80, 1500, 570, 25, 2, 'center')

	simpleishGraphic('DetailedStatsShitsBGBG', 1500, 249, 82, 301, '000000')
	simpleishGraphic('DetailedStatsShitsBG', 1500, 250, 80, 300, 'FFFFFF')
	setProperty('DetailedStatsShitsBG.alpha', 0.6)
	simpleishText('ShitsFinalCount', getProperty('shits'), 80, 1500, 220, 20, 1, 'center')
	simpleishText('ShitsRatingPercentage', RatingPercentageAccurate('shits')..'%', 80, 1500, 540, 15, 1, 'center')
	if RatingPercentage('shits') > 0 then
		simpleishGraphic('DetailedStatsShitsFG', 1500, 550 - (RatingPercentage('shits')*3), 80, (RatingPercentage('shits')*3), 'FFFFFF') --300 max
		setProperty('DetailedStatsShitsFG.alpha', 0.8)
		setProperty('ShitsRatingPercentage.y', getProperty('DetailedStatsShitsFG.y')-10)
	end
	simpleishText('ShitsDetailedLabel', 'Shits', 80, 1500, 570, 25, 2, 'center')

	simpleishGraphic('DetailedStatsMissesBGBG', 1500, 249, 82, 301, '000000')
	simpleishGraphic('DetailedStatsMissesBG', 1500, 250, 80, 300, 'FFFFFF')
	setProperty('DetailedStatsMissesBG.alpha', 0.6)
	simpleishText('MissesFinalCount', getProperty('songMisses'), 80, 1500, 220, 20, 1, 'center')
	simpleishText('MissesRatingPercentage', RatingPercentageAccurate('songMisses')..'%', 80, 1500, 540, 15, 1, 'center')
	if RatingPercentage('songMisses') > 0 then
		simpleishGraphic('DetailedStatsMissesFG', 1500, 550 - (RatingPercentage('songMisses')*3), 80, (RatingPercentage('songMisses')*3), 'FFFFFF') --300 max
		setProperty('DetailedStatsMissesFG.alpha', 0.8)
		setProperty('MissesRatingPercentage.y', getProperty('DetailedStatsMissesFG.y')-10)
	end
	simpleishText('MissesDetailedLabel', 'Misses', 100, 1500, 570, 25, 2, 'center')

	simpleishGraphic('ContinueBG', 1500, 620, 400, 100, 'FFFFFF')
	simpleishGraphic('ContinueFG', 1500, 630, 380, 80, FG_Graphic_Color)
	simpleishText('SpaceToContinue', "'SPACE' to Continue", 380, 1500, 652, 30, 2, 'center')

	function onTimerCompleted(tag,loops,loopsleft)--LOL
		if tag == 'ResultsTimer' then
			doTweenY('ResultsBGTweenScaleY', 'ResultsBG.scale', 720, 1, 'QuartOut')
			doTweenY('ResultsFGTweenScaleY', 'ResultsFG.scale', 680, 1, 'QuartOut')
			runTimer('ShineTween', 1, 1)
		elseif tag == 'ShineTween' then
			doTweenX('Stripe1Tween', 'Stripe1', -450, 1.5, 'QuartOut')
			doTweenX('Stripe2Tween', 'Stripe2', -250, 1.5, 'QuartOut')
			doTweenX('Stripe3Tween', 'Stripe3', -275, 1.5, 'QuartOut')
			doTweenX('Stripe3aTween', 'Stripe3a', 700, 1.5, 'QuartOut')
			runTimer('SongNameAndDifficultyTimer', 1, 1)
		elseif tag == 'SongNameAndDifficultyTimer' then
			doTweenX('SongNameAndDifficultyBarBGTween', 'SongNameAndDifficultyBarBG', 60, 1, 'QuartOut')
			doTweenX('SongNameAndDifficultyBarFGTween', 'SongNameAndDifficultyBarFG', 70, 1, 'QuartOut')
			doTweenX('SongNameBarTextTween', 'SongNameBarText', 85, 1, 'QuartOut')
			runTimer('SongStatsTimer', 1, 1)
		elseif tag == 'SongStatsTimer' then
			doTweenX('SongStatsBarBGTween', 'SongStatsBarBG', 60, 1, 'QuartOut')
			doTweenX('SongStatsBarFGTween', 'SongStatsBarFG', 70, 1, 'QuartOut')
			doTweenX('SongStatsUnderLineTween', 'SongStatsUnderLine', 80, 1, 'QuartOut')
			doTweenX('NotesHitDivisionLineTween', 'NotesHitDivisionLine', 280, 1, 'QuartOut')
			doTweenX('SongStatsBarHeaderTween', 'SongStatsBarHeader', 80, 1, 'QuartOut')
			doTweenX('SongScoreTween', 'SongScore', 80, 1, 'QuartOut')
			doTweenX('SongAccuracyTween', 'SongAccuracy', 80, 1, 'QuartOut')
			doTweenX('SongRatingTween', 'SongRating', 80, 1, 'QuartOut')
			doTweenX('SongNotesHitLabelTween', 'SongNotesHitLabel', 80, 1, 'QuartOut')
			doTweenX('SongNotesPlayedTween', 'SongNotesPlayed', 280, 1, 'QuartOut')
			doTweenX('SongNotesTotalTween', 'SongNotesTotal', 280, 1, 'QuartOut')
			doTweenX('SongHighestComboTween', 'SongHighestCombo', 80, 1, 'QuartOut')
			runTimer('DetailedStatsTimer', 1, 1)
		elseif tag == 'DetailedStatsTimer' then
			doTweenX('DetailedStatsBGTween', 'DetailedStatsBG', 460, 1, 'QuartOut')
			doTweenX('DetailedStatsFGTween', 'DetailedStatsFG', 470, 1, 'QuartOut')
			doTweenX('DetailedStatsBottomLineTween', 'DetailedStatsBottomLine', 530, 1, 'QuartOut')
			doTweenX('DetailedStatsPercentageLabelSpineTween', 'DetailedStatsPercentageLabelSpine', 530, 1, 'QuartOut')

			doTweenX('DetailedStatsPercentageLabel0Tween', 'DetailedStatsPercentageLabel0', 520, 1, 'QuartOut')
			doTweenX('0PercentLabelTween', '0PercentLabel', 470, 1, 'QuartOut')
			doTweenX('DetailedStatsPercentageLabel25Tween', 'DetailedStatsPercentageLabel25', 520, 1, 'QuartOut')
			doTweenX('25PercentLabelTween', '25PercentLabel', 470, 1, 'QuartOut')
			doTweenX('DetailedStatsPercentageLabel50Tween', 'DetailedStatsPercentageLabel50', 520, 1, 'QuartOut')
			doTweenX('50PercentLabelTween', '50PercentLabel', 470, 1, 'QuartOut')
			doTweenX('DetailedStatsPercentageLabel75Tween', 'DetailedStatsPercentageLabel75', 520, 1, 'QuartOut')
			doTweenX('75PercentLabelTween', '75PercentLabel', 470, 1, 'QuartOut')
			doTweenX('DetailedStatsPercentageLabel100Tween', 'DetailedStatsPercentageLabel100', 520, 1, 'QuartOut')
			doTweenX('100PercentLabelTween', '100PercentLabel', 465, 1, 'QuartOut')

			--oh jeez
			doTweenX('DetailedStatsSicksBGBGTween', 'DetailedStatsSicksBGBG', 559, 1, 'QuartOut')
			doTweenX('DetailedStatsSicksBGTween', 'DetailedStatsSicksBG', 560, 1, 'QuartOut')
			doTweenX('SicksFinalCountTween', 'SicksFinalCount', 560, 1, 'QuartOut')
			doTweenX('SicksRatingPercentageTween', 'SicksRatingPercentage', 560, 1, 'QuartOut')
			doTweenX('DetailedStatsSicksFGTween', 'DetailedStatsSicksFG', 560, 1, 'QuartOut')
			doTweenX('SicksDetailedLabelTween', 'SicksDetailedLabel', 560, 1, 'QuartOut')

			doTweenX('DetailedStatsGoodsBGBGTween', 'DetailedStatsGoodsBGBG', 689, 1, 'QuartOut')
			doTweenX('DetailedStatsGoodsBGTween', 'DetailedStatsGoodsBG', 690, 1, 'QuartOut')
			doTweenX('GoodsFinalCountTween', 'GoodsFinalCount', 690, 1, 'QuartOut')
			doTweenX('GoodsRatingPercentageTween', 'GoodsRatingPercentage', 690, 1, 'QuartOut')
			doTweenX('DetailedStatsGoodsFGTween', 'DetailedStatsGoodsFG', 690, 1, 'QuartOut')
			doTweenX('GoodsDetailedLabelTween', 'GoodsDetailedLabel', 690, 1, 'QuartOut')

			doTweenX('DetailedStatsBadsBGBGTween', 'DetailedStatsBadsBGBG', 819, 1, 'QuartOut')
			doTweenX('DetailedStatsBadsBGTween', 'DetailedStatsBadsBG', 820, 1, 'QuartOut')
			doTweenX('BadsFinalCountTween', 'BadsFinalCount', 820, 1, 'QuartOut')
			doTweenX('BadsRatingPercentageTween', 'BadsRatingPercentage', 820, 1, 'QuartOut')
			doTweenX('DetailedStatsBadsFGTween', 'DetailedStatsBadsFG', 820, 1, 'QuartOut')
			doTweenX('BadsDetailedLabelTween', 'BadsDetailedLabel', 820, 1, 'QuartOut')

			doTweenX('DetailedStatsShitsBGBGTween', 'DetailedStatsShitsBGBG', 949, 1, 'QuartOut')
			doTweenX('DetailedStatsShitsBGTween', 'DetailedStatsShitsBG', 950, 1, 'QuartOut')
			doTweenX('ShitsFinalCountTween', 'ShitsFinalCount', 950, 1, 'QuartOut')
			doTweenX('ShitsRatingPercentageTween', 'ShitsRatingPercentage', 950, 1, 'QuartOut')
			doTweenX('DetailedStatsShitsFGTween', 'DetailedStatsShitsFG', 950, 1, 'QuartOut')
			doTweenX('ShitsDetailedLabelTween', 'ShitsDetailedLabel', 950, 1, 'QuartOut')

			doTweenX('DetailedStatsMissesBGBGTween', 'DetailedStatsMissesBGBG', 1079, 1, 'QuartOut')
			doTweenX('DetailedStatsMissesBGTween', 'DetailedStatsMissesBG', 1080, 1, 'QuartOut')
			doTweenX('MissesFinalCountTween', 'MissesFinalCount', 1080, 1, 'QuartOut')
			doTweenX('MissesRatingPercentageTween', 'MissesRatingPercentage', 1080, 1, 'QuartOut')
			doTweenX('DetailedStatsMissesFGTween', 'DetailedStatsMissesFG', 1080, 1, 'QuartOut')
			doTweenX('MissesDetailedLabelTween', 'MissesDetailedLabel', 1070, 1, 'QuartOut')

			runTimer('ContinueTimer', 1, 1)
		elseif tag == 'ContinueTimer' then
			doTweenX('ContinueBGTween', 'ContinueBG', 880, 1, 'QuartOut')
			doTweenX('ContinueFGTween', 'ContinueFG', 890, 1, 'QuartOut')
			doTweenX('SpaceToContinueTween', 'SpaceToContinue', 890, 1, 'QuartOut')
		end
	end
	function onUpdatePost()
		if flixelKeyPress('SPACE') then
			playSound('confirmMenu', 0.5)
			allowEnd = true
			cameraFade('Other','000000',1)
			runTimer('EndSongTimer', 1, 1)
			function onTimerCompleted(tag,loops,loopsleft)
				if tag == 'EndSongTimer' then
				endSong()
				end
			end
		end
	end
	if not allowEnd then
		return Function_Stop
	end
	if allowEnd then
		return Function_Continue
	end
end