-- 基础信息
local base_info = {
	group_id = 133002058
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 58002, monster_id = 26010103, pos = { x = 1081.972, y = 285.861, z = -439.350 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 3, drop_id = 1000100, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 58001, gadget_id = 70270004, pos = { x = 1083.751, y = 285.861, z = -437.474 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 58003, gadget_id = 70300203, pos = { x = 1113.028, y = 286.787, z = -436.655 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 58005, gadget_id = 70360001, pos = { x = 1113.028, y = 286.787, z = -436.655 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_guest_can_operate = true, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1058004, name = "ANY_MONSTER_DIE_58004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_58004", action = "action_EVENT_ANY_MONSTER_DIE_58004" },
	{ config_id = 1058006, name = "GADGET_CREATE_58006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_58006", action = "action_EVENT_GADGET_CREATE_58006", trigger_count = 0 },
	{ config_id = 1058007, name = "SELECT_OPTION_58007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_58007", action = "action_EVENT_SELECT_OPTION_58007", trigger_count = 0, forbid_guest = false }
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
		monsters = { 58002 },
		gadgets = { 58001, 58003, 58005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_58004", "GADGET_CREATE_58006", "SELECT_OPTION_58007" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_58004(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133002058) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_58004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4002811") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_58006(context, evt)
	if 66016 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_58006(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133002066, 66016, {2905}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_58007(context, evt)
	-- 判断是gadgetid 66016 option_id 2905
	if 66016 ~= evt.param1 then
		return false	
	end
	
	if 2905 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_58007(context, evt)
	ScriptLib.TransPlayerToPos(context, {uid_list = {context.uid}, pos = {x=1097.705, y= 285.8612, z=-438.728}, radius = 2, rot = {x=0, y=269.461, z=0}}) 
	
	return 0
end