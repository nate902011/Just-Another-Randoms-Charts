-- local anchorpos = {};
-- local dadPos = {};

-- function onCreatePost()
-- 	makeLuaSprite('shakeAmt', '', 6, 0);
-- 	setProperty('shakeAmt.visible',false)
--   	addLuaSprite('shakeAmt',false);

--         for i = 0,getProperty('strumLineNotes.length')-1 do 
--             xshake = getPropertyFromGroup('strumLineNotes', i, 'x')
--             yshake = getPropertyFromGroup('strumLineNotes', i, 'y')
--             table.insert(anchorpos, {xshake,yshake})
--         end
-- 	table.insert(dadPos, {getProperty('dad.x'), getProperty('dad.y')})
-- end


-- shake = 0
-- function onUpdate(elapsed)
-- 	if getProperty('shakeAmt.x') > 0 then
-- 		shake = getProperty('shakeAmt.x')
-- 		for i = 0,getProperty('strumLineNotes.length')-1 do
-- 			setPropertyFromGroup('strumLineNotes', i, 'x', anchorpos[i+1][1] + math.random(-shake,shake))
-- 			setPropertyFromGroup('strumLineNotes', i, 'y', anchorpos[i+1][2] + math.random(-shake,shake))
-- 		end
-- 		setProperty('dad.x', dadPos[1][1] + math.random(-shake * 4,shake * 4))
-- 		setProperty('dad.y', dadPos[1][2] + math.random(-shake * 4,shake * 4))
-- 	end
-- end