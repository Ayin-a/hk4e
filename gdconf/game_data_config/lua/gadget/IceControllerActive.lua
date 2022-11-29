-- 机关初始化配置
-- 初始状态
local state_ = GadgetState.GearStart
-- 启动元素
local start_elem_type_ = ElementType.Ice
-- 停止元素
local stop_elem_type_ = ElementType.None


-- 机关被攻击
function OnBeHurt(context, element_type, strike_type, is_host)
	if is_host == true then
	-- 获取机关当前状态
		local state = ScriptLib.GetGadgetState(context)
		if state == GadgetState.Default or state == GadgetState.GearAction1 then
			if start_elem_type_ == element_type then
				ScriptLib.SetGadgetState(context, GadgetState.GearStart)
			end
		end
		if state == GadgetState.Action01 then
			if start_elem_type_ == element_type then
				ScriptLib.SetGadgetState(context, GadgetState.Action02)
			end
		end
	end
end

function OnClientExecuteReq(context, param1, param2, param3)

	--ScriptLib.PrintLog("GadgetState Get Change！！！！！！！")
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
	if param1 == 903 then
		ScriptLib.SetGadgetState(context, GadgetState.Action03)
	end
	if param1 == 106 then
		ScriptLib.SetGadgetState(context, GadgetState.ChestRock)
	end
end

