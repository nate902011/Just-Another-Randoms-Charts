function onCreatePost()
    makeLuaSprite('blackthingy', 'blank')
    setProperty('blackthingy.alpha', 0)
    setObjectCamera('blackthingy', 'hud')
end
function onUpdate()
    if curBeat == 672 then
        addLuaSprite('blackthingy', true)
        doTweenAlpha('blackthingy', 'blackthingy', 1, 12)
    end
end