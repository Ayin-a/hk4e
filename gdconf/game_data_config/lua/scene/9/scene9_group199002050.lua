-- 基础信息
local base_info = {
	group_id = 199002050
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 50001, gadget_id = 70360001, pos = { x = 531.178, y = 191.862, z = -92.230 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1050002, name = "GADGET_CREATE_50002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_50002", action = "action_EVENT_GADGET_CREATE_50002", trigger_count = 0 },
	{ config_id = 1050003, name = "SELECT_OPTION_50003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_50003", action = "action_EVENT_SELECT_OPTION_50003", trigger_count = 0 },
	{ config_id = 1050004, name = "CUTSCENE_END_50004", event = EventType.EVENT_CUTSCENE_END, source = "790271301", condition = "", action = "action_EVENT_CUTSCENE_END_50004", trigger_count = 0 }
}

-- 变量
variables = {
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { },
		gadgets = { 50001 },
		regions = { },
		triggers = { "GADGET_CREATE_50002", "SELECT_OPTION_50003", "CUTSCENE_END_50004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_50002(context, evt)
	if 50001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_50002(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 199002050, 50001, {64}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_50003(context, evt)
	-- 判断是gadgetid 50001 option_id 64
	if 50001 ~= evt.param1 then
		return false	
	end
	
	if 64 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_50003(context, evt)
	-- 通知场景上的所有玩家播放名字为790271301 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 790271301, 18) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CUTSCENE_END_50004(context, evt)
	if evt.param1 == 790271301 and evt.param2 == 1 then
		ScriptLib.AddQuestProgress(context, "7902713finished")
	end
	
	return 0
end