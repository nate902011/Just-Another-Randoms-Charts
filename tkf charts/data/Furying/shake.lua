shake = 0.0
function opponentNoteHit()
	if shake < 5 then
		shake = shake + 0.003;
	else shake = 5;
	end
end
function onUpdatePost(elapsed)
	if shake > 0 then
		triggerEvent('Screen Shake', '0.03, '..shake, '0.03, '..shake)
	end
	shake = 0
end