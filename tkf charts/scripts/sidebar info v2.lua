--recreated by nate902011, aka Just Another Random on yt
--OG version in B:SC made by Acap09
--code cleanups suggested by NAEL2XD, now the code is more readable
--Further code cleanups by Jordan Santiago.

-- for clientprefs settings
local showComboInfo = 0
local showNPS = 0
local marvelous = 0

	oppJudgement = true --for those who want it ig; basically the opponents hits and nps (if you have that option enabled)
    judgeBasedOnRatingType = true --whether or not you want the judgeCountStrings to be based on you rating type setting in ui
    judgeCountStrings = {}
	judgeCountColors = {}

local function setupJudgeStrings(rType)
	--To add more quotes for your specific rating type, add a comma at the end of the last one, and add another field for your custom rating type. (Be sure to use your list.txt name!)

	local presets = {
		["Default"] = {"Perfects","Sicks","Goods","Bads","Shits","Misses"},
		["Doki Doki+"] = {"Very Dokis","Dokis","Goods","OKs","Nos","Misses"},
		["FIRE IN THE HOLE"] = {"Easys","Normals","Hards","Harders","Insanes","Extreme Demon Fails"},
		["NMCW"] = {"Amazings","Wows","Nices","Bruhs","Bee-womps","Misses"},
		["TGT V4"] = {"Killers","Awesomes","Cools","Gays","Retardeds","Fails"},
		["VS Impostor"] = {"Perfects","Sussys","Sus'","Sads","Asses","Misses"},
		["Yeahs"] = {"Super Yeahs","Yeahs","Okays","Thin Ices","Nos","Super Nos"},
		["JAREM"] = {"Haxxers","Pretty Goods","OKs","Awfuls","You Sucks","Misses"}
	}
    local normalRating = 'ratings/'.. stringTrim(string.gsub(string.lower(getPropertyFromClass('ClientPrefs', 'ratingType')), ' ', '-')) ..'/' --pneumonoultramicroscopicsilicovolcanoconiosis

    local thetxtfile = 'images/'.. normalRating ..'judgeCountStrings.txt'
    if checkFileExists(thetxtfile) then
        presets[getPropertyFromClass('ClientPrefs', 'ratingType')] = {}
        judgeTxt = getTextFromFile(thetxtfile)
        for line in string.gmatch(judgeTxt, "([^\n]+)") do
            table.insert(presets[getPropertyFromClass('ClientPrefs', 'ratingType')], stringTrim(line)) --stringtrim there to prevent another newline past the line string
        end
    end
    return presets[rType] or presets["Default"]
end

local function setupJudgeColors(rType)
	--To add more colors for your specific rating type, add a comma at the end of the last one, and add another field for your custom rating type. (Be sure to use your list.txt name!)

	local presets = {
		["Default"] = {"FFFF00","00FFFF","00FF00","FFA500","FF0000","CC4242"}, --also ms popup colors
		["FIRE IN THE HOLE"] = {"00FFFF","00FF00","FFA500","FF0000","FF00FF","CC4242"},
		["Strident Crisis"] = {"00FF00","00FF00","A4FF00","FFFF00","FFA500","FF0000"}, --ignore this
	}
    return presets[rType] or presets["Default"]
end

function setColorProperty(obj, hex)
    setProperty(obj..'.color', getColorFromHex(hex))
end

function onCreatePost()
	--settings
	if getPropertyFromClass('ClientPrefs', 'showComboInfo') then
		showComboInfo = 1
		makeLuaText('comboTxt', '', screenWidth, 22, (screenHeight / 2 - 80)+(23*0));
		setTextAlignment('comboTxt', 'left');
		setTextFont('comboTxt', 'comic.ttf');
		addLuaText('comboTxt');
		setTextSize('comboTxt', 23);
	end

    if not getPropertyFromClass('ClientPrefs', 'noMarvJudge') then
        marvelous = 1
        makeLuaText('perfectTxt', '', screenWidth, 22, (screenHeight / 2 - 80)+(23*(1+showComboInfo)));
		setTextAlignment('perfectTxt', 'left');
		setTextFont('perfectTxt', 'comic.ttf');
		addLuaText('perfectTxt');
		setTextSize('perfectTxt', 23);
    end

	if getPropertyFromClass('ClientPrefs', 'showNPS') then
		showNPS = 1
		makeLuaText('npsTxt', '', screenWidth, 22, (screenHeight / 2 - 80)+(23*(6+showComboInfo+marvelous)));
		setTextAlignment('npsTxt', 'left');
		setTextFont('npsTxt', 'comic.ttf');
		addLuaText('npsTxt');
		setTextSize('npsTxt', 23);
	end

    if oppJudgement and getProperty('opponentNoteTotal') ~= 0 then
		makeLuaText('opptnhTxt', '', screenWidth, 22, (screenHeight / 2 - 80)+(23*(7+showComboInfo+showNPS+marvelous)));
		setTextAlignment('opptnhTxt', 'left');
		setTextFont('opptnhTxt', 'comic.ttf');
		addLuaText('opptnhTxt');
		setTextSize('opptnhTxt', 23);
		if getPropertyFromClass('ClientPrefs', 'showNPS') then
			makeLuaText('oppnpsTxt', '', screenWidth, 22, (screenHeight / 2 - 80)+(23*(9+showComboInfo+marvelous)));
			setTextAlignment('oppnpsTxt', 'left');
			setTextFont('oppnpsTxt', 'comic.ttf');
			addLuaText('oppnpsTxt');
			setTextSize('oppnpsTxt', 23);
		end
	end
    
    makeLuaText('tnhTxt', '', screenWidth, 22, (screenHeight / 2 - 80)+(23*(0+showComboInfo)));
	setTextAlignment('tnhTxt', 'left');
	setTextFont('tnhTxt', 'comic.ttf');
	addLuaText('tnhTxt');
	setTextSize('tnhTxt', 23);
	
	makeLuaText('sickTxt', '', screenWidth, 22, (screenHeight / 2 - 80)+(23*(1+showComboInfo+marvelous)));
	setTextAlignment('sickTxt', 'left');
	setTextFont('sickTxt', 'comic.ttf');
	addLuaText('sickTxt');
	setTextSize('sickTxt', 23);
	
	makeLuaText('goodTxt', '', screenWidth, 22, (screenHeight / 2 - 80)+(23*(2+showComboInfo+marvelous)));
	setTextAlignment('goodTxt', 'left');
	setTextFont('goodTxt', 'comic.ttf');
	addLuaText('goodTxt');
	setTextSize('goodTxt', 23);
	
	makeLuaText('badTxt', '', screenWidth, 22, (screenHeight / 2 - 80)+(23*(3+showComboInfo+marvelous)));
	setTextAlignment('badTxt', 'left');
	setTextFont('badTxt', 'comic.ttf');
	addLuaText('badTxt');
	setTextSize('badTxt', 23);
	
	makeLuaText('shitTxt', '', screenWidth, 22, (screenHeight / 2 - 80)+(23*(4+showComboInfo+marvelous)));
	setTextAlignment('shitTxt', 'left');
	setTextFont('shitTxt', 'comic.ttf');
	addLuaText('shitTxt');
	setTextSize('shitTxt', 23);
	
	makeLuaText('missesTxt', '', screenWidth, 22, (screenHeight / 2 - 80)+(23*(5+showComboInfo+marvelous)));
	setTextAlignment('missesTxt', 'left');
	setTextFont('missesTxt', 'comic.ttf');
	addLuaText('missesTxt');
	setTextSize('missesTxt', 23);

    ratingType = getPropertyFromClass('ClientPrefs', 'ratingType')

	if judgeBasedOnRatingType then
		judgeCountStrings = setupJudgeStrings(ratingType)
		judgeCountColors = setupJudgeColors(ratingType)
	else --if you want to customize this field ONLY, change the fields here. first one is Perfects, second is Sicks etc.
		judgeCountStrings = {"Perfects","Sicks","Goods","Bads","Shits","Misses"}
		judgeCountColors = {"FFFF00","00FFFF","00FF00","FFA500","FF0000","CC4242"}
	end
end

prevCombo = 0
function goodNoteHit(id, dir, type, sustain)
	if not sustain then
		prevCombo = prevCombo + 1
        if not getPropertyFromClass('ClientPrefs', 'noMarvJudge') then
            if getPropertyFromGroup('notes', id, 'rating') == 'perfect' then
            	setColorProperty('perfectTxt', '00FF00');
			    doTweenColor('perfectTransitionXD', 'perfectTxt', 'FFFFFF', 0.35, 'linear');
			
			    setColorProperty('tnhTxt', judgeCountColors[1]);
			    doTweenColor('tnhTransitionXD', 'tnhTxt', 'FFFFFF', 0.35, 'linear');
            end
        end

        if getPropertyFromClass('ClientPrefs', 'showComboInfo') and getProperty('combo') == getProperty('maxCombo') then
            setColorProperty('comboTxt', '00FF00')
            doTweenColor('combotransitionXD', 'comboTxt', 'FFFFFF', 0.35, 'linear')
        end

        if getPropertyFromGroup('notes', id, 'rating') == 'sick' then
			
			setColorProperty('sickTxt', '00FF00');
			doTweenColor('sickTransitionXD', 'sickTxt', 'FFFFFF', 0.35, 'linear');
			
			setColorProperty('tnhTxt', judgeCountColors[2]);
			doTweenColor('tnhTransitionXD', 'tnhTxt', 'FFFFFF', 0.35, 'linear');
		elseif getPropertyFromGroup('notes', id, 'rating') == 'good' then
			
			setColorProperty('goodTxt', '00FF00');
			doTweenColor('goodTransitionXD', 'goodTxt', 'FFFFFF', 0.35, 'linear');
			
			setColorProperty('tnhTxt', judgeCountColors[3]);
			doTweenColor('tnhTransitionXD', 'tnhTxt', 'FFFFFF', 0.35, 'linear');
		elseif getPropertyFromGroup('notes', id, 'rating') == 'bad' then
			
			setColorProperty('badTxt', '00FF00');
			doTweenColor('badTransitionXD', 'badTxt', 'FFFFFF', 0.35, 'linear');
			
			setColorProperty('tnhTxt', judgeCountColors[4]);
			doTweenColor('tnhTransitionXD', 'tnhTxt', 'FFFFFF', 0.35, 'linear');
		elseif getPropertyFromGroup('notes', id, 'rating') == 'shit' then
			
			setColorProperty('shitTxt', '00FF00');
			doTweenColor('shitTransitionXD', 'shitTxt', 'FFFFFF', 0.35, 'linear');
			
			setColorProperty('tnhTxt', judgeCountColors[5]);
			doTweenColor('tnhTransitionXD', 'tnhTxt', 'FFFFFF', 0.35, 'linear');
		end
	end
end

function noteMiss(id, dir, type, sustain)
    if getPropertyFromClass('ClientPrefs', 'showComboInfo') and getProperty('maxCombo') ~= 0 and prevCombo > 0 then
        setColorProperty('comboTxt', 'FF0000')
        doTweenColor('combotransitionXD', 'comboTxt', 'FFFFFF', 0.35, 'linear')
		prevCombo = 0
    end

    setColorProperty('missesTxt', 'FF0000');
    doTweenColor('missTransitionXD', 'missesTxt', 'FFFFFF', 0.35, 'linear');

    setColorProperty('tnhTxt', judgeCountColors[6]);
    doTweenColor('tnhTransitionXD', 'tnhTxt', 'FFFFFF', 0.35, 'linear');
end

-- function opponentNoteHit(id, dir, type, sustain)
--     if not sustain and oppJudgement and getProperty('opponentNoteTotal') ~= 0 then
--         setColorProperty('opptnhTxt', '00FF00')
--         doTweenColor('opptnhTransitionXD', 'opptnhTxt', 'FFFFFF', 0.35, 'linear')
--     end
-- end

-- that coment above is to make it consistent with botplay

function onUpdatePost(elapsed)
	setTextString('tnhTxt', 'Hits: '.. numberShit(getProperty('totalNotesPlayed')) ..' ('.. numberShit(getProperty('totalNotes')) ..') : '.. roundPc((getProperty('totalNotesPlayed')/getProperty('totalNotes'))*100, 2) ..'%');
    if getPropertyFromClass('ClientPrefs', 'showNPS') then
        setTextString('npsTxt', 'NPS: '.. numberShit(getProperty('nps')) ..' ('.. numberShit(getProperty('maxNPS')) ..')')
        if not botPlay then
            setProperty('npsTxt.y', (screenHeight / 2 - 80)+(23*(6+showComboInfo+marvelous)))
        else
            setProperty('npsTxt.y', (screenHeight / 2 - 80)+(23*1))
        end
    end
    if oppJudgement and getProperty('opponentNoteTotal') ~= 0 then
        setTextString('opptnhTxt', 'Opponent Hits: '.. numberShit(getProperty('enemyHits')) ..' ('.. numberShit(getProperty('opponentNoteTotal')) ..') : '.. roundPc((getProperty('enemyHits')/getProperty('opponentNoteTotal'))*100, 2) ..'%')
        if not botPlay then
            setProperty('opptnhTxt.y', (screenHeight / 2 - 80)+(23*(7+showComboInfo+showNPS+marvelous)))
        else
            setProperty('opptnhTxt.y', (screenHeight / 2 - 80)+(23*(2+showNPS)))
        end
        if getPropertyFromClass('ClientPrefs', 'showNPS') then
            setTextString('oppnpsTxt', 'Opponent NPS: '.. numberShit(getProperty('oppNPS')) ..' ('.. numberShit(getProperty('maxOppNPS')) ..')')
            if not botPlay then
                setProperty('oppnpsTxt.y', (screenHeight / 2 - 80)+(23*(9+showComboInfo+marvelous)))
            else
                setProperty('oppnpsTxt.y', (screenHeight / 2 - 80)+(23*(4)))
            end
        end
    end
    if not botPlay then
        if getPropertyFromClass('ClientPrefs', 'showComboInfo') then
        setTextString('comboTxt', 'Combo: '.. numberShit(getProperty('combo')) ..' ('.. numberShit(getProperty('maxCombo')) ..')');
        end
        if not getPropertyFromClass('ClientPrefs', 'noMarvJudge') then
	    setTextString('perfectTxt', judgeCountStrings[1] ..': '.. numberShit(getProperty('perfects')));
        end
	    setTextString('sickTxt', judgeCountStrings[2] ..': '.. numberShit(getProperty('sicks')));
	    setTextString('goodTxt', judgeCountStrings[3] ..': '.. numberShit(getProperty('goods')));
	    setTextString('badTxt', judgeCountStrings[4] ..': '.. numberShit(getProperty('bads')));
	    setTextString('shitTxt', judgeCountStrings[5] ..': '.. numberShit(getProperty('shits')));
        setTextString('missesTxt', misses== 0 and ratingFC or ratingFC ..' / '..judgeCountStrings[6] ..': '.. numberShit(misses))
        if misses == 0 then
            if ratingFC == getProperty('fcStrings[0]') then
                setColorProperty('missesTxt', 'FFFFFF');
            elseif ratingFC == getProperty('fcStrings[1]') then
                setColorProperty('missesTxt', 'FFFFC4');
            elseif ratingFC == getProperty('fcStrings[2]') then
                setColorProperty('missesTxt', 'C4FFFF');
            elseif ratingFC == getProperty('fcStrings[3]') then
                setColorProperty('missesTxt', 'C4FFC4');
            elseif ratingFC == getProperty('fcStrings[4]') then
                setColorProperty('missesTxt', 'FFC46D');
            else
                setColorProperty('missesTxt', 'FFC4C4');
            end
        end
        setProperty('tnhTxt.y', (screenHeight / 2 - 80)+(23*(0+showComboInfo)))
        setProperty('perfectTxt.alpha', 1)
        setProperty('sickTxt.alpha', 1)
        setProperty('goodTxt.alpha', 1)
        setProperty('badTxt.alpha', 1)
        setProperty('shitTxt.alpha', 1)
        setProperty('missesTxt.alpha', 1)
    else
        if getPropertyFromClass('ClientPrefs', 'showComboInfo') then
        setTextString('comboTxt', '')
        end
        setProperty('tnhTxt.y', (screenHeight / 2 - 80)+(23*0))
        setProperty('perfectTxt.alpha', 0)
        setProperty('sickTxt.alpha', 0)
        setProperty('goodTxt.alpha', 0)
        setProperty('badTxt.alpha', 0)
        setProperty('shitTxt.alpha', 0)
        setProperty('missesTxt.alpha', 0)
    end
end

function roundPc(numb, dcpl)
    local multi = 10^(dcpl or 0)
    return math.floor(numb * multi + 0.5) / multi
end

number = 0
function numberShit(num)
	if nil ~= num ~= number then
		number = tonumber(num)
		return runHaxeCode('PlayState.formatNumber('..math.floor(number + 0.5)..')')
	end
end

function stringTrim(str)
    return string.gsub(str, "^%s*(.-)%s*$", "%1")
end