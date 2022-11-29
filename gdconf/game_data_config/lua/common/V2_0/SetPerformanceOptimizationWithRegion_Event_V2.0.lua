--[[
使用region进行性能优化
]]--


local extraTriggers={
	{config_id = 9000001, name = "ENTER_REGION", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION", forbid_guest = false,trigger_count = 0 },
	{config_id = 9000002,name = "LEAVE_REGION", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_EVENT_LEAVE_REGION", forbid_guest = false, trigger_count = 0 },
}


function Initialize_Group(triggers, suites)
	for i=1,#extraTriggers do
		table.insert(triggers, extraTriggers[i])
		table.insert(suites[1].triggers,extraTriggers[i].name)
	end
--初始化
end

function action_EVENT_ENTER_REGION(context, evt)
	if evt.param1~=defs.inner_region then
		return 0
	end
	--设置视野锚点
	ScriptLib.SetPlayerEyePoint(context, defs.inner_region, defs.related_region)
	ScriptLib.SetLimitOptimization(context, context.uid, true)
	--环境小动物优化
	ScriptLib.SwitchSceneEnvAnimal(context, 0)
	--设置visiontype
	ScriptLib.SetPlayerGroupVisionType(context, {context.uid}, {0})
	--禁用visiontype变化
	ScriptLib.SetGroupTempValue(context, "optimize_"..context.uid, 1, { group_id = 133213025})
	return 0
end

function action_EVENT_LEAVE_REGION(context, evt)
	if evt.param1~=defs.outer_region then
		return 0
	end
	--关闭视野锚点
	ScriptLib.ClearPlayerEyePoint(context, defs.inner_region)
	ScriptLib.SetLimitOptimization(context, context.uid, false)
	--环境小动物优化
	ScriptLib.SwitchSceneEnvAnimal(context, 2)
	--重置visiontype
	ScriptLib.SetGroupTempValue(context, "optimize_"..context.uid, 0, { group_id = 133213025})
	return 0
end
Initialize_Group(triggers, suites)