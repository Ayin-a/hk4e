
local extraTriggers = {
	{ name = "fishing_start", config_id = 8000001, event = EventType.EVENT_FISHING_START, source = "", condition = "", action = "action_fishing_start", trigger_count = 0},
	{ name = "fishing_stop", config_id = 8000002, event = EventType.EVENT_FISHING_STOP, source = "", condition = "", action = "action_fishing_stop", trigger_count = 0},	
	{ name = "fishing_qte_finish", config_id = 8000003, event = EventType.EVENT_FISHING_QTE_FINISH, source = "", condition = "", action = "action_fishing_qte_finish", trigger_count = 0},
	{ name = "group_load", config_id = 8000004, event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0 }
}


function action_group_load(context, evt)
	ScriptLib.PrintContextLog(context, "[fishing] fishing Groupload")
	return 0
end

function Initialize()
	--print("[fishing] fishing Initialize")
	for k,v in pairs(extraTriggers) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
	return 0
end

function action_fishing_start(context, evt)
	ScriptLib.PrintContextLog(context, "[fishing] action_fishing_start")
	return 0
end

--处理钓鱼结束
function action_fishing_stop(context, evt)
	ScriptLib.PrintContextLog(context, "[fishing] action_fishing_stop")
	return 0
end
--每次退出钓鱼QTE状态时触发 
	--evt.param1 鱼id
	--evt.param2 0-失败 1-成功
	--evt.param3 0-未进包（即背包满/到达活动要求的获取上限）1-进包
function action_fishing_qte_finish(context, evt)
	ScriptLib.PrintContextLog(context, "[fishing] action_fishing_qte_finish. FishID@"..evt.param1.." EID@"..evt.source_eid.." isSucc@"..evt.param2.." isGetInBag@"..evt.param3)
	return 0
end

Initialize()
