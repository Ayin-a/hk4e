-- 基础信息
local base_info = {
	group_id = 133002053
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 53003, monster_id = 23010101, pos = { x = 958.707, y = 342.711, z = -586.487 }, rot = { x = 0.000, y = 274.319, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, pose_id = 9001, climate_area_id = 1, area_id = 10 },
	{ config_id = 53005, monster_id = 23010301, pos = { x = 953.838, y = 341.925, z = -597.972 }, rot = { x = 0.000, y = 304.670, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, pose_id = 9001, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 53001, gadget_id = 70710540, pos = { x = 945.949, y = 342.928, z = -597.746 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 53002, gadget_id = 70710541, pos = { x = 955.523, y = 344.048, z = -580.639 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 53004, gadget_id = 70710113, pos = { x = 965.909, y = 342.718, z = -585.280 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 30, interact_id = 51, area_id = 10 },
	{ config_id = 53009, gadget_id = 70300094, pos = { x = 954.908, y = 344.173, z = -579.961 }, rot = { x = 0.000, y = 50.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 53010, gadget_id = 70710352, pos = { x = 945.590, y = 343.005, z = -598.053 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 53013, gadget_id = 70710113, pos = { x = 965.909, y = 342.718, z = -585.280 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 检测笼子打开
	{ config_id = 1053006, name = "GADGET_STATE_CHANGE_53006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_53006", action = "action_EVENT_GADGET_STATE_CHANGE_53006" },
	-- 笼子开启则完成任务
	{ config_id = 1053007, name = "QUEST_START_53007", event = EventType.EVENT_QUEST_START, source = "", condition = "condition_EVENT_QUEST_START_53007", action = "action_EVENT_QUEST_START_53007" },
	{ config_id = 1053011, name = "ANY_MONSTER_DIE_53011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_53011", action = "action_EVENT_ANY_MONSTER_DIE_53011" }
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
		gadgets = { 53004, 53009, 53010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 53001, 53002, 53004, 53009, 53010 },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 53003, 53005 },
		gadgets = { 53004, 53009, 53010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_53011" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 53004, 53009, 53010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_53006", "QUEST_START_53007" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 53009, 53010, 53013 },
		regions = { },
		triggers = { },
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
function condition_EVENT_GADGET_STATE_CHANGE_53006(context, evt)
	if 53004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_53006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4002610") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_53007(context, evt)
		if 53004 ~= evt.param1 then
			return false
		end
		local state =  ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1)
		if state == 201 or state == 202 then
			return true
		end
		
		return false
end

-- 触发操作
function action_EVENT_QUEST_START_53007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4002610") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_53011(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133002053) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_53011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4002621") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end