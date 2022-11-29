-- 基础信息
local base_info = {
	group_id = 133220008
}

-- DEFS_MISCS
function SLC_ThomaCoop_AnimalBeHit(context)
        ScriptLib.AddQuestProgress(context,"1911604")
        return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 8001, monster_id = 28020409, pos = { x = -3037.342, y = 212.942, z = -4303.839 }, rot = { x = 0.000, y = 141.800, z = 0.000 }, level = 1, drop_tag = "走兽", disableWander = true, affix = { 1108 }, pose_id = 1, area_id = 11 },
	{ config_id = 8002, monster_id = 28020511, pos = { x = -3036.624, y = 213.005, z = -4303.212 }, rot = { x = 0.000, y = 182.530, z = 0.000 }, level = 1, drop_tag = "走兽", disableWander = true, affix = { 1108 }, pose_id = 13, area_id = 11 },
	{ config_id = 8004, monster_id = 28020512, pos = { x = -3035.951, y = 212.999, z = -4303.277 }, rot = { x = 0.000, y = 281.200, z = 0.000 }, level = 1, drop_tag = "走兽", disableWander = true, affix = { 1108 }, pose_id = 13, area_id = 11 },
	{ config_id = 8005, monster_id = 28020409, pos = { x = -3037.124, y = 213.012, z = -4303.042 }, rot = { x = 0.000, y = 99.800, z = 0.000 }, level = 2, drop_tag = "走兽", affix = { 1108 }, pose_id = 2, area_id = 11 },
	{ config_id = 8006, monster_id = 28020512, pos = { x = -3036.075, y = 212.993, z = -4303.441 }, rot = { x = 0.000, y = 281.200, z = 0.000 }, level = 1, drop_tag = "走兽", disableWander = true, affix = { 1108 }, pose_id = 13, area_id = 11 },
	{ config_id = 8010, monster_id = 28020511, pos = { x = -3036.748, y = 212.988, z = -4303.376 }, rot = { x = 0.000, y = 182.530, z = 0.000 }, level = 1, drop_tag = "走兽", disableWander = true, affix = { 1108 }, pose_id = 13, area_id = 11 },
	{ config_id = 8012, monster_id = 28020512, pos = { x = -3035.734, y = 213.049, z = -4302.213 }, rot = { x = 0.000, y = 281.200, z = 0.000 }, level = 1, drop_tag = "走兽", affix = { 1108 }, pose_id = 1, area_id = 11 },
	{ config_id = 8013, monster_id = 28020511, pos = { x = -3036.407, y = 213.101, z = -4302.148 }, rot = { x = 0.000, y = 182.530, z = 0.000 }, level = 1, drop_tag = "走兽", disableWander = true, affix = { 1108 }, pose_id = 1, area_id = 11 },
	{ config_id = 8018, monster_id = 28020409, pos = { x = -3037.342, y = 212.942, z = -4303.839 }, rot = { x = 0.000, y = 141.800, z = 0.000 }, level = 1, drop_tag = "走兽", disableWander = true, affix = { 1108 }, pose_id = 2, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 8007, gadget_id = 70710111, pos = { x = -3035.948, y = 213.007, z = -4303.169 }, rot = { x = 0.000, y = 141.800, z = 0.000 }, level = 18, interact_id = 68, area_id = 11 },
	{ config_id = 8014, gadget_id = 70710110, pos = { x = -3035.014, y = 212.879, z = -4302.947 }, rot = { x = 0.000, y = 141.800, z = 0.000 }, level = 1, interact_id = 69, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1008003, name = "GADGET_STATE_CHANGE_8003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8003", action = "action_EVENT_GADGET_STATE_CHANGE_8003", trigger_count = 0 },
	{ config_id = 1008008, name = "GADGET_CREATE_8008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_8008", action = "action_EVENT_GADGET_CREATE_8008" },
	{ config_id = 1008009, name = "GADGET_STATE_CHANGE_8009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8009", action = "action_EVENT_GADGET_STATE_CHANGE_8009" },
	{ config_id = 1008015, name = "ANY_MONSTER_DIE_8015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_8015" },
	{ config_id = 1008016, name = "ANY_MONSTER_DIE_8016", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_8016" },
	{ config_id = 1008017, name = "ANY_MONSTER_DIE_8017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_8017" }
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
		monsters = { 8001, 8002, 8004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_8015" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 8005, 8012, 8013 },
		gadgets = { 8007, 8014 },
		regions = { },
		triggers = { "GADGET_CREATE_8008", "ANY_MONSTER_DIE_8016" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_8003", "GADGET_STATE_CHANGE_8009" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 8006, 8010, 8018 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_8017" },
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
function condition_EVENT_GADGET_STATE_CHANGE_8003(context, evt)
	if 8014 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_8003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1911603") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_8008(context, evt)
	if 8007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_8008(context, evt)
	-- 改变指定group组133220008中， configid为8007的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133220008, 8007, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220008, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_8009(context, evt)
	if 8007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_8009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1911602") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_8015(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1911604") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_8016(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1911604") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_8017(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1911604") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end