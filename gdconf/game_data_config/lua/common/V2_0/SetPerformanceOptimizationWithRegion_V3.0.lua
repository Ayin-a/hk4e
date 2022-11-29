--[[
使用region进行性能优化
]]--

local whiteList={
	133220037,
	133210237,
}




local extraTriggers={
	{config_id = 9000001, name = "ENTER_REGION", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION", forbid_guest = false,trigger_count = 0 },
	{config_id = 9000002,name = "LEAVE_REGION", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_EVENT_LEAVE_REGION", forbid_guest = false, trigger_count = 0 },
}


function Initialize_Group(triggers, suites)
	for i=1,#extraTriggers do
		table.insert(triggers, extraTriggers[i])
		table.insert(suites[init_config.suite].triggers,extraTriggers[i].name)
	end
--初始化
end

function action_EVENT_ENTER_REGION(context, evt)
	if evt.param1~=defs.inner_region then
		return 0
	end
	--设置视野锚点
	local isInWhiteList=0
	local curGroup=ScriptLib.GetContextGroupId(context)
	for i=1,#whiteList do
		if whiteList[i]==curGroup then
			isInWhiteList=isInWhiteList+1
		end
	end
	if isInWhiteList>=1 then
		ScriptLib.SetPlayerEyePointStream(context, defs.inner_region, defs.related_region, false)
	else
		ScriptLib.SetPlayerEyePointStream(context, defs.inner_region, defs.related_region, true)
	end
	ScriptLib.SetLimitOptimization(context, context.uid, true)
	--环境小动物优化
	ScriptLib.SwitchSceneEnvAnimal(context, 0)
	if defs.bossRegionSpecialOptimization==nil then
		--设置visiontype
		ScriptLib.SetPlayerGroupVisionType(context, {context.uid}, {0})
	else 
		ScriptLib.SetPlayerGroupVisionType(context, {context.uid}, {30010001})
		ScriptLib.ForbidPlayerRegionVision(context, context.uid)
	end
	--禁用LD配置的visiontype变化
	ScriptLib.ForbidPlayerRegionVision(context, context.uid)
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
	ScriptLib.SetPlayerGroupVisionType(context, {context.uid}, {1})
	if defs.bossRegionSpecialOptimization~=nil then
		ScriptLib.RevertPlayerRegionVision(context, context.uid)
	end
	--还原LD配置的visiontype变化
	ScriptLib.RevertPlayerRegionVision(context, context.uid)
	return 0
end
Initialize_Group(triggers, suites)