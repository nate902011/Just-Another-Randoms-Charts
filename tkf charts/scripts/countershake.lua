function onCountdownTick(counter)
    if counter == 1 then
           triggerEvent('Screen Shake', '0.35, 0.005', '0.35, 0.005')
    end
    if counter == 2 then
        triggerEvent('Screen Shake', '0.35, 0.025', '0.35, 0.025')
      end
        if counter == 3 then
          triggerEvent('Screen Shake', '0.35, 0.05', '0.35, 0.05')
     end
end