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
	
	makeAnimatedLuaSprite('Guest0', 'stage/Guest starA', 1000, -20);
	scaleObject('Guest0', 1, 1);
	addAnimationByPrefix('Guest0', 'Guest starA', 'Guest starA', 24, true)

	makeLuaSprite('Counter', 'stage/Dessert Counter', -780, -370);
	scaleObject('Counter', 1, 1);

	makeLuaSprite('Lamp', 'stage/Lamp', -780, -820);
	scaleObject('Lamp', 1, 1);
	setScrollFactor('Lamp', 1.6, 1.7);

		addLuaSprite('bg', false)
		addLuaSprite('Flooring', false)
		addLuaSprite('wall', false)
		addLuaSprite('tables', false)
		addLuaSprite('Guest0', false)
		addLuaSprite('Counter', false)
		addLuaSprite('Lamp', true)
	
	end

function onCreatePost( ... )
	if boyfriendName == 'XmasDanke_Player' or dadName == 'XmasDanke_Player' then
		doTweenY('LampY','Lamp',-900,0.00001);
		doTweenX('LampX','Lamp',-730,0.00001);
	end
end
