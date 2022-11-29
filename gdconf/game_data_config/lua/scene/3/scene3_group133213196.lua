-- 基础信息
local base_info = {
	group_id = 133213196
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 196001, monster_id = 23010601, pos = { x = -3932.548, y = 200.274, z = -3271.459 }, rot = { x = 0.000, y = 80.927, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, area_id = 12 },
	{ config_id = 196002, monster_id = 23010101, pos = { x = -3938.497, y = 200.000, z = -3263.965 }, rot = { x = 0.000, y = 45.855, z = 0.000 }, level = 28, drop_id = 1000100, area_id = 12 },
	{ config_id = 196006, monster_id = 23010301, pos = { x = -3933.843, y = 200.503, z = -3255.652 }, rot = { x = 0.000, y = 134.158, z = 0.000 }, level = 28, drop_id = 1000100, pose_id = 9001, area_id = 12 },
	{ config_id = 196015, monster_id = 23010401, pos = { x = -3939.639, y = 200.134, z = -3268.266 }, rot = { x = 0.000, y = 64.418, z = 0.000 }, level = 28, drop_id = 1000100, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 196004, gadget_id = 70310001, pos = { x = -3945.986, y = 199.838, z = -3266.818 }, rot = { x = 0.000, y = 311.979, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 12 },
	{ config_id = 196009, gadget_id = 70310001, pos = { x = -3932.627, y = 200.553, z = -3273.823 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 12 },
	{ config_id = 196010, gadget_id = 70310006, pos = { x = -3931.092, y = 200.272, z = -3258.250 }, rot = { x = 352.878, y = 359.889, z = 1.790 }, level = 1, state = GadgetState.GearStart, area_id = 12 },
	{ config_id = 196011, gadget_id = 70220062, pos = { x = -3935.525, y = 200.065, z = -3258.632 }, rot = { x = 0.000, y = 113.672, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 196012, gadget_id = 70220064, pos = { x = -3934.277, y = 200.366, z = -3258.427 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 196013, gadget_id = 70220063, pos = { x = -3948.087, y = 199.825, z = -3263.534 }, rot = { x = 0.000, y = 317.034, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 196014, gadget_id = 70220062, pos = { x = -3948.499, y = 199.331, z = -3262.823 }, rot = { x = 0.000, y = 263.897, z = 0.000 }, level = 1, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1196007, name = "ANY_MONSTER_DIE_196007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_196007", action = "action_EVENT_ANY_MONSTER_DIE_196007" },
	{ config_id = 1196008, name = "ANY_MONSTER_DIE_196008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_196008", action = "action_EVENT_ANY_MONSTER_DIE_196008" }
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
		monsters = { 196001, 196006 },
		gadgets = { 196004, 196009, 196010, 196011, 196012, 196013, 196014 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_196007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 196002, 196015 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_196008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_196007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_196007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213196, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_196008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_196008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133213196") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end