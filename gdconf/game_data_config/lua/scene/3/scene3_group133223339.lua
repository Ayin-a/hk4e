-- 基础信息
local base_info = {
	group_id = 133223339
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
	{ config_id = 339005, npc_id = 20512, pos = { x = -6315.079, y = 207.153, z = -2693.972 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 18 }
}

-- 装置
gadgets = {
	{ config_id = 339002, gadget_id = 70211021, pos = { x = -6316.072, y = 206.901, z = -2692.523 }, rot = { x = 0.000, y = 190.520, z = 0.000 }, level = 26, chest_drop_id = 2003900, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 339004, gadget_id = 70300110, pos = { x = -6315.103, y = 207.182, z = -2693.966 }, rot = { x = 7.033, y = 19.354, z = 3.302 }, level = 33, area_id = 18 },
	{ config_id = 339007, gadget_id = 70360001, pos = { x = -6314.998, y = 207.181, z = -2694.149 }, rot = { x = 7.725, y = 0.054, z = 0.800 }, level = 33, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 7220705_finish
	{ config_id = 1339011, name = "SELECT_OPTION_339011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_339011", action = "action_EVENT_SELECT_OPTION_339011", trigger_count = 0 },
	{ config_id = 1339012, name = "GADGET_CREATE_339012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_339012", action = "action_EVENT_GADGET_CREATE_339012", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 339003, gadget_id = 70950101, pos = { x = -6316.140, y = 207.100, z = -2693.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 }
	},
	triggers = {
		{ config_id = 1339001, name = "QUEST_START_339001", event = EventType.EVENT_QUEST_START, source = "7220705", condition = "condition_EVENT_QUEST_START_339001", action = "action_EVENT_QUEST_START_339001", trigger_count = 0 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 3,
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
		gadgets = { 339007 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 339007 },
		regions = { },
		triggers = { "SELECT_OPTION_339011", "GADGET_CREATE_339012" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 339002, 339004 },
		regions = { },
		triggers = { },
		npcs = { 339005 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_339011(context, evt)
	-- 判断是gadgetid 339007 option_id 169
	if 339007 ~= evt.param1 then
		return false	
	end
	
	if 169 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_339011(context, evt)
	-- 删除指定group： 133223339 ；指定config：339007；物件身上指定option：169；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133223339, 339007, 169) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7220705_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133223339, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_339012(context, evt)
	if 339007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_339012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133223339, 339007, {169}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end