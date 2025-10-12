function opponentNoteHit()
health = getProperty('health')
max = getProperty('maxHealth')
   if health > max*1.5 then
      setProperty('health', health - 1 * ((health/22))*2)
   end
   if health <= max*1.5 then
      setProperty('health', health - 1 * ((health/22)))
   end
   if health <= max then
      setProperty('health', health - 1 * ((health/22))/2)
   end
   if health <= max/1.333 then
      setProperty('health', health - 1 * ((health/22))/4)
   end
   if health <= max/1.5 then
      setProperty('health', health - 1 * ((health/22))/8)
   end
   if health <= max/2 then
      setProperty('health', health - 1 * ((health/22))/12)
   end
   if health <= max/3 then
      setProperty('health', health - 1 * ((health/22))/16)
   end
   if health <= max/5 then
      setProperty('health', health - 1 * ((health/22))/32)
   end
   if health <= max/7 then
      setProperty('health', health - 1 * ((health/22))/64)
   end
   if health >= max/10 then
   end
end