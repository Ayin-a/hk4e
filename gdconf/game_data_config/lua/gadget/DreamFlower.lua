-- ServerUploadTool Save to [/root/env/data/lua/gadget]
function OnClientExecuteReq(context, param1, param2, param3)
	local this_gadget = ScriptLib.GetContextGadgetConfigId(context)
	local this_group = ScriptLib.GetContextGroupId(context)

	if param1 == 0 then	
		ScriptLib.SetGadgetEnableInteract(context, this_group, this_gadget, true)
	end
	if param1 == 201 then
		ScriptLib.SetGadgetEnableInteract(context, this_group, this_gadget, false)
	end
end