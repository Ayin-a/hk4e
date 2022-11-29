-- 雪堆被攻击
function OnBeHurt(context, element_type, strike_type, is_host)
	if is_host == true then
		if ElementType.Fire == element_type then
			ScriptLib.SetGadgetState(context, GadgetState.GearStart)
		end

	end
end

