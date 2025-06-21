function onCreate()
	-- background shit

	makeLuaSprite('bg', 'stage/Back wall', -780, -370);
	scaleObject('bg', 1, 1);
	setScrollFactor('bg', 0.8, 0.8);
	
	makeLuaSprite('Flooring', 'stage/Flooring', -780, -370);
	scaleObject('Flooring', 1, 1);

	makeLuaSprite('wall', 'stage/wall', -830, -370);
	scaleObject('wall', 1, 1);
	
	
	makeLuaSprite('tables', 'stage/tables', -830, -370);
	scaleObject('tables', 1, 1);
	setScrollFactor('tables', 0.9, 0.9);
	
	
	makeAnimatedLuaSprite('Guest2', 'stage/Guest/Guest starC', 0, -15);
	scaleObject('Guest2', 1, 1);
	addAnimationByPrefix('Guest2', 'Guest starC', 'Guest starC', 24, false)

	makeAnimatedLuaSprite('Guest0', 'stage/Guest starA', 1000, -20);
	scaleObject('Guest0', 1, 1);
	addAnimationByPrefix('Guest0', 'Guest starA', 'Guest starA', 24, false)

	makeLuaSprite('Counter', 'stage/Dessert Counter', -780, -370);
	scaleObject('Counter', 1, 1);
	
	makeAnimatedLuaSprite('Guest1', 'stage/Guest/Guest starB', -600, 50);
	scaleObject('Guest1', 1, 1);
	addAnimationByPrefix('Guest1', 'Guest starB', 'Guest starB', 24, false)
	
	makeAnimatedLuaSprite('Guest3', 'stage/Guest/Guest starD', 1400, 150);
	scaleObject('Guest3', 1, 1);
	addAnimationByPrefix('Guest3', 'Guest starD', 'Guest starD', 24, false)

	makeAnimatedLuaSprite('Guest4', 'stage/Guest/Guest starE', 1270, 350);
	scaleObject('Guest4', 1, 1);
	addAnimationByPrefix('Guest4', 'Guest starE', 'Guest starE', 24, false)

	makeAnimatedLuaSprite('Guest5', 'stage/Guest/Guest starF', -480, 580);
	scaleObject('Guest5', 1, 1);
	addAnimationByPrefix('Guest5', 'Guest starF', 'Guest starF', 24, false)
	setScrollFactor('Guest5', 0.8, 0.8);

	makeLuaSprite('Lamp', 'stage/Lamp', -780, -820);
	scaleObject('Lamp', 1, 1);
	setScrollFactor('Lamp', 1.6, 1.7);

	
	makeLuaSprite('WhiteEdge','WhiteEdge',0,0);
	setObjectCamera('WhiteEdge','camHUD')
	doTweenColor('WhiteEdgeC', 'WhiteEdge', 'F4C978', 0.000001, 'linear')
	doTweenAlpha('WhiteEdgeA', 'WhiteEdge', 0, 0.001)
	
	makeAnimatedLuaSprite('StarFX', 'Star LightA', 0, 0);
	addAnimationByPrefix('StarFX', 'Star LightA', 'Star LightA', 24, true)
	setObjectCamera('StarFX','camHUD')
	setBlendMode('StarFX','lighten')
	doTweenAlpha('StarFXA', 'StarFX', 0, 0.001)

		addLuaSprite('bg', false)
		addLuaSprite('Flooring', false)
		addLuaSprite('wall', false)
		addLuaSprite('tables', false)
		addLuaSprite('Guest2', false)
		addLuaSprite('Guest1', false)
		addLuaSprite('Guest0', false)
		addLuaSprite('Counter', false)
		addLuaSprite('Guest3', false)
		addLuaSprite('Guest4', false)
		addLuaSprite('Lamp', true)
		addLuaSprite('Guest5', true)
		addLuaSprite('WhiteEdge',true);
		addLuaSprite('StarFX', true)
end



function onCreatePost( ... )
	if boyfriendName == 'XmasDanke_Player' or dadName == 'XmasDanke_Player' then
		doTweenY('LampY','Lamp',-900,0.00001);
		doTweenX('LampX','Lamp',-730,0.00001);
	end


function onBeatHit( ... )
	if curBeat % 2 == 0 then
		objectPlayAnimation('Guest0','Guest starA',true)
		objectPlayAnimation('Guest1','Guest starB',true)
		objectPlayAnimation('Guest2','Guest starC',true)
		objectPlayAnimation('Guest3','Guest starD',true)
		objectPlayAnimation('Guest4','Guest starE',true)
		objectPlayAnimation('Guest5','Guest starF',true)
	end
end
end