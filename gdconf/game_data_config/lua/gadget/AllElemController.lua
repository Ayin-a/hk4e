-- 机关被攻击
function OnBeHurt(context, element_type, strike_type, is_host)
	if is_host == true then
		-- 获取机关当前状态
		local state = ScriptLib.GetGadgetState(context)
		if state == GadgetState.Default then
			--if ElementType.None == element_type then
				ScriptLib.SetGadgetState(context, GadgetState.GearStart)
			--end
		end
	end
end
