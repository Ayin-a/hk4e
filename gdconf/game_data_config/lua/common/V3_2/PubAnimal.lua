--[[======================================
||	filename:       PubAnimal
||	owner:          chen.chen
||	description:    酒馆小动物
||	LogName:        TD
||	Protection:     [Protection]
=======================================]]




-- 打印日志
function PrintLog(context, content)
	local log = "## [PubAnimal] TD: "..content
	ScriptLib.PrintContextLog(context, log)
end

local extraTriggers = 
{
    { config_id = 40000001, name = "tavern_refresh", event = EventType.EVENT_GCG_TAVERN_SCENE_REFRESH, source = "", condition = "", action = "action_EVENT_GCG_TAVERN_SCENE_REFRESH", trigger_count = 0 },
}

------ Local Functions -----------
function LF_Initialize_Level()
    --- TRIGGER
	for i, _suite in ipairs(suites) do
		for _, _trigger in pairs(extraTriggers) do
			table.insert(_suite.triggers, _trigger.name)
		end
	end
	for _, _trigger in pairs(extraTriggers) do
		table.insert(triggers, _trigger)
	end
    return 0
end


------ conditions & actions ------
--任务进度改变刷一下按钮锁定状态
function action_EVENT_GCG_TAVERN_SCENE_REFRESH(context, evt)
    --开始刷新NPC
    PrintLog(context, "开始刷新小动物")
    --执行刷新
    ScriptLib.RefreshGroup(context, { group_id = 0, suite = evt.param1 })
    return 0
end


LF_Initialize_Level()
