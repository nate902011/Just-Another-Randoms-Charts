shake = 0.01
function opponentNoteHit()
	if shake < 5 then
		shake = shake + 0.03;
	else shake = 5;
	end
end
function onUpdatePost(elapsed)
	if shake > 0 then
		triggerEvent('Screen Shake', '0.03, '..shake, '0.03, '..shake)
	end
	shake = 0.01
end