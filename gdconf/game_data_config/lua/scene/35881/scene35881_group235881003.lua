-- 基础信息
local base_info = {
	group_id = 235881003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[3002] = { config_id = 3002, monster_id = 26120201, pos = { x = 715.751, y = 90.185, z = 789.417 }, rot = { x = 0.000, y = 153.951, z = 0.000 }, level = 1, disableWander = true, affix = { 5256, 5262 }, pose_id = 201 },
	[3003] = { config_id = 3003, monster_id = 26120301, pos = { x = 713.659, y = 90.181, z = 784.779 }, rot = { x = 0.000, y = 137.962, z = 0.000 }, level = 1, disableWander = true, affix = { 5256, 5262 }, pose_id = 101 },
	[3004] = { config_id = 3004, monster_id = 26120301, pos = { x = 721.199, y = 90.183, z = 788.901 }, rot = { x = 0.000, y = 172.286, z = 0.000 }, level = 1, disableWander = true, affix = { 5256, 5262 }, pose_id = 101 },
	[3005] = { config_id = 3005, monster_id = 26120301, pos = { x = 717.527, y = 90.184, z = 776.095 }, rot = { x = 0.000, y = 37.386, z = 0.000 }, level = 1, disableWander = true, affix = { 5256, 5262 }, pose_id = 101 },
	[3006] = { config_id = 3006, monster_id = 26120101, pos = { x = 719.415, y = 90.184, z = 772.130 }, rot = { x = 0.000, y = 27.638, z = 0.000 }, level = 1, disableWander = true, affix = { 5256, 5262 }, pose_id = 201 },
	[3007] = { config_id = 3007, monster_id = 26120101, pos = { x = 712.196, y = 90.183, z = 776.137 }, rot = { x = 0.000, y = 44.931, z = 0.000 }, level = 1, disableWander = true, affix = { 5256, 5262 }, pose_id = 201 },
	[3008] = { config_id = 3008, monster_id = 26120201, pos = { x = 728.532, y = 90.184, z = 785.051 }, rot = { x = 0.000, y = 259.520, z = 0.000 }, level = 1, disableWander = true, affix = { 5256, 5262 }, pose_id = 201 },
	[3009] = { config_id = 3009, monster_id = 26120301, pos = { x = 731.369, y = 90.183, z = 779.887 }, rot = { x = 0.000, y = 281.304, z = 0.000 }, level = 1, disableWander = true, affix = { 5256, 5262 }, pose_id = 101 },
	[3010] = { config_id = 3010, monster_id = 26120101, pos = { x = 727.443, y = 90.185, z = 775.544 }, rot = { x = 0.000, y = 285.927, z = 0.000 }, level = 1, disableWander = true, affix = { 5256, 5262 }, pose_id = 201 },
	[3011] = { config_id = 3011, monster_id = 26120401, pos = { x = 724.634, y = 90.184, z = 780.252 }, rot = { x = 0.000, y = 273.622, z = 0.000 }, level = 1, disableWander = true, affix = { 5256, 5262 }, pose_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[3001] = { config_id = 3001, gadget_id = 70710535, pos = { x = 720.311, y = 84.500, z = 781.183 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[3012] = { config_id = 3012, gadget_id = 70900205, pos = { x = 721.858, y = 88.861, z = 782.615 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003013, name = "ANY_MONSTER_DIE_3013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3013", action = "action_EVENT_ANY_MONSTER_DIE_3013", trigger_count = 0 },
	{ config_id = 1003014, name = "ANY_MONSTER_DIE_3014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3014", action = "action_EVENT_ANY_MONSTER_DIE_3014", trigger_count = 0 },
	{ config_id = 1003015, name = "ANY_MONSTER_DIE_3015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3015", action = "action_EVENT_ANY_MONSTER_DIE_3015", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "monster_wave", value = 0, no_refresh = false }
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
		gadgets = { 3012 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 3001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 3002, 3003, 3004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3013" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 3005, 3006, 3007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3014" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 3008, 3009, 3010, 3011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3013(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为0
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3013(context, evt)
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235881003, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3014(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为1
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3014(context, evt)
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235881003, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3015(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为2
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3015(context, evt)
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "GALLERY_STATE" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "GALLERY_STATE", 2, 235881001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end