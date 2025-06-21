function onCreate()


    if boyfriendName == 'Xmas_BF' then

        setPropertyFromClass('GameOverSubstate', 'characterName', 'Xmas_BF');
        --setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'gameover'); 
    end

    if boyfriendName == 'XmasDanke_Player' then
        setPropertyFromClass('GameOverSubstate', 'characterName', 'XmasDanke_Player');
        --setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'gameover'); 
    end


end
function onGameOver()
	--playSound('fnf_loss_sfx',1)

	makeAnimatedLuaSprite('RETRY', 'RETRY',0, 0)
	addAnimationByPrefix('RETRY', 'RETRY', 'RETRY', 24, true)
    setObjectCamera('RETRY','other')
	addLuaSprite('RETRY', false)

	return Function_Continue;
end