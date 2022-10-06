
--推条
local ElongNoteHealthDrain = .0015 --敌方长条的扣血强度(Easy难度)
local EnoteHealthDrain = .005		--敌方单个键的扣血强度(Easy难度)


local NlongNoteHealthDrain = .003 --敌方长条的扣血强度(Normal难度)
local NnoteHealthDrain = .01		--敌方单个键的扣血强度(Normal难度)


local HlongNoteHealthDrain = .006 --敌方长条的扣血强度(Hard难度)
local HnoteHealthDrain = .015		--敌方单个键的扣血强度(Hard难度)

local isMercy = true	--改成false如果你想推条致死



---------------------------------------下面不用动了
local longNoteHealthDrain
local noteHealthDrain

function onCreatePost( ... )

	if difficulty ==0 then
	
		longNoteHealthDrain = ElongNoteHealthDrain
		noteHealthDrain = EnoteHealthDrain
	end

	if difficulty ==1 then
		longNoteHealthDrain = NlongNoteHealthDrain
		noteHealthDrain = NnoteHealthDrain
	end

	if difficulty ==2 then
		longNoteHealthDrain = HlongNoteHealthDrain
		noteHealthDrain = HnoteHealthDrain
	end

end


function opponentNoteHit(id, direction, noteType, isSustainNote)
	 if isMercy then
	 Mercy()
	 else
	 NoMercy()
	 end
	 
end

function NoMercy( ... )
	 health = getProperty('health')
	 if isSustainNote == true then
		
		setProperty('health', health- longNoteHealthDrain)
		else
		setProperty('health', health- noteHealthDrain)
	 end
end

function Mercy( ... )
	 health = getProperty('health')
	 if isSustainNote == true then
			if health >longNoteHealthDrain then
				setProperty('health', health- longNoteHealthDrain)
			end
		else
			if health >noteHealthDrain then
				setProperty('health', health- noteHealthDrain)
			end
	 end
end


