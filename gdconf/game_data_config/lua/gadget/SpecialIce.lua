-- 特殊冰
function OnBeHurt(context, element_type, strike_type, is_host)
	ScriptLib.PrintContextLog(context, "SpeicalIce OnBeHurt ConfigId is"..ScriptLib.GetContextGadgetConfigId(context))
	ScriptLib.PrintContextLog(context, "SpeicalIce OnBeHurt Uid is"..context.uid)
	if context.uid ~= 0 then
		local configId=ScriptLib.GetContextGadgetConfigId(context)
		local uidValue=configId.."_Hit_Uid"
		ScriptLib.SetGroupVariableValue(context, uidValue, context.uid)
	end
end


