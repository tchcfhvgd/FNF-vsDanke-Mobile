
function onBeatHit( ... )
	--if curBeat == 4 then
	--DOIT()
	--end
end

function DOIT( ... )
	doTweenAlpha('WhiteEdgeAStart', 'WhiteEdge', .6, 0.001)
	setProperty('isPlayFX',true)
end

function StarFXEnable(please)
	if please then
	doTweenAlpha('StarFXA', 'StarFX', 1, 2,'cubeOut')
	else
	doTweenAlpha('StarFXA', 'StarFX', 0, 2,'cubeOut')
	end
end

function onTweenCompleted( tag )
	if tag == 'WhiteEdgeAStart' then
	doTweenAlpha('WhiteEdgeAEnd', 'WhiteEdge', 0, 2,'cubeOut')
	end
end