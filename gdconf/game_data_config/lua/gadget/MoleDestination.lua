local _delay = 10

-- ¶¨Ê±Æ÷»Øµ÷
function OnTimer(context, now)
	-- »ñÈ¡»ú¹Øµ±Ç°×´Ì¬
	local state = ScriptLib.GetGadgetState(context)
	if state ~= GadgetState.GearAction1 then
		-- »ñÈ¡µ±Ç°×´Ì¬µÄ¿ªÊ¼Ê±¼ä
		local state_begin_time = ScriptLib.GetGadgetStateBeginTime(context)
		if now >= state_begin_time + _delay then
			-- Èç¹ûÆô¶¯Ê±¼ä³¬¹ýÆô¶¯³ÖÐøÊ±¼ä£¬Ôò×ª»»ÎªDefault×´Ì¬
			ScriptLib.SetGadgetState(context, GadgetState.GearStart)
		end
	end
end

function OnClientExecuteReq(context, param1, param2, param3)
	if param1 == 0 then
		ScriptLib.SetGadgetState(context, GadgetState.Default)
	end
	if param1 == 201 then
		ScriptLib.SetGadgetState(context, GadgetState.GearStart)
	end
	if param1 == 202 then
		ScriptLib.SetGadgetState(context, GadgetState.GearStop)
	end
	if param1 == 203 then
		ScriptLib.SetGadgetState(context, GadgetState.GearAction1)
	end
	if param1 == 204 then
		ScriptLib.SetGadgetState(context, GadgetState.GearAction2)
	end
	if param1 == 901 then
		ScriptLib.SetGadgetState(context, GadgetState.Action01)
	end
	if param1 == 902 then
		ScriptLib.SetGadgetState(context, GadgetState.Action02)
	end
end