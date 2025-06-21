
--����
local ElongNoteHealthDrain = .0015 --�з������Ŀ�Ѫǿ��(Easy�Ѷ�)
local EnoteHealthDrain = .005		--�з��������Ŀ�Ѫǿ��(Easy�Ѷ�)


local NlongNoteHealthDrain = .003 --�з������Ŀ�Ѫǿ��(Normal�Ѷ�)
local NnoteHealthDrain = .01		--�з��������Ŀ�Ѫǿ��(Normal�Ѷ�)


local HlongNoteHealthDrain = .006 --�з������Ŀ�Ѫǿ��(Hard�Ѷ�)
local HnoteHealthDrain = .015		--�з��������Ŀ�Ѫǿ��(Hard�Ѷ�)

local isMercy = true	--�ĳ�false���������������



---------------------------------------���治�ö���
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


