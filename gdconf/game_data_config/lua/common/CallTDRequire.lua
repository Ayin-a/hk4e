-- 该Lua为范例,需要使用的时候依赖TD自行处理,仅做示例
local callTDRequireTrigger = {
	{ config_id = 7770001, name = "EVENT_VARIABLE_CHANGE_A", event = EventType.EVENT_VARIABLE_CHANGE, source = "SelfActionName",condition = "", action = "action_VARIABLE_CHANGE_A", trigger_count = 0}
}

--------初始化----------
function LF_Initialize_Level()
	for k,v in pairs(callTDRequireTrigger) do
		table.insert(triggers, v)
		table.insert(suites[init_config.suite].triggers, v.name)
	end
	return 0
end

-------处理函数-------
function action_VARIABLE_CHANGE_A(context, evt)
	local actionName = evt.source_name
	if 1 == evt.param1 - evt.param2 then
		local functionParam1 = ScriptLib.GetGroupTempValue(context,actionName .. "Param1",{})
		local functionParam2 = ScriptLib.GetGroupTempValue(context,actionName .. "Param2",{})
		local functionParam3 = ScriptLib.GetGroupTempValue(context,actionName .. "Param3",{})
		local functionParam4 = ScriptLib.GetGroupTempValue(context,actionName .. "Param4",{})
		SelfActionName(context,functionParam1,functionParam2,functionParam3,functionParam4)
	end
	return 0
end

function SelfActionName(context,param1,param2,param3,param4)
	--对应自己的Action
end

LF_Initialize_Level()