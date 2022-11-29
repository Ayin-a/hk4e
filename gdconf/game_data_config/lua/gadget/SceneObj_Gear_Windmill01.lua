local _delay = 10

function OnClientExecuteReq(context, param1, param2, param3)
	if param1 == 0 then
		ScriptLib.SetGadgetState(context, GadgetState.Default)
	elseif param1 == 201 then
		ScriptLib.SetGadgetState(context, GadgetState.GearStart)
	end
end

-- 定时器回调
function OnTimer(context, now)
	-- 获取机关当前状态
	local state = ScriptLib.GetGadgetState(context)
	if state ~= GadgetState.Default then
		-- 获取当前状态的开始时间
		local state_begin_time = ScriptLib.GetGadgetStateBeginTime(context)
		if now >= state_begin_time + _delay then
			-- 如果启动时间超过启动持续时间，则转换为Default状态
			ScriptLib.SetGadgetState(context, GadgetState.Default)
		end
	end
end
