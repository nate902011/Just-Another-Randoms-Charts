function onCreate()    for i = 0, getProperty('unspawnNotes.length')-1 do

        if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Phone Note (no anim)' then

            setPropertyFromGroup('unspawnNotes', i, 'texture', 'phone_notes');

                if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then

                setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true);

            end

        end

    end

end