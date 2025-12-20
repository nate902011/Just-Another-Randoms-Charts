function onUpdatePost()
	if botPlay then
    	setTextString('scoreTxt', numberShit(getProperty('totalNotesPlayed')) ..' + '.. numberShit(getProperty('enemyHits')) ..' = '.. numberShit(getProperty('totalNotesPlayed')+getProperty('enemyHits')) ..' / '.. numberShit(getProperty('totalNotes')+getProperty('opponentNoteTotal'))..' ('.. roundPc(((getProperty('totalNotesPlayed')+getProperty('enemyHits'))/(getProperty('totalNotes')+getProperty('opponentNoteTotal')))*100, 2) ..'% / '..roundPc(getProperty('totalNotesPlayed')/getProperty('enemyHits'), 4).. ' : 1)') --wow h-slice cool!
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