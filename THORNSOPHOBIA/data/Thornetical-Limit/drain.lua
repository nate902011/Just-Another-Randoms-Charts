function opponentNoteHit()
health = getProperty('health')
max = getProperty('maxHealth')

   if getProperty('health') >= getProperty('maxHealth')/10 then setProperty('health', getProperty('health') -1*(getProperty('health')/22)/16) end
end