-- 基础信息
local base_info = {
	group_id = 235881004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[4002] = { config_id = 4002, monster_id = 25310301, pos = { x = 713.809, y = 90.184, z = 786.518 }, rot = { x = 0.000, y = 152.894, z = 0.000 }, level = 1, disableWander = true, affix = { 5256, 5262 } },
	[4003] = { config_id = 4003, monster_id = 25310301, pos = { x = 721.003, y = 90.183, z = 789.715 }, rot = { x = 0.000, y = 164.161, z = 0.000 }, level = 1, disableWander = true, affix = { 5256, 5262 } },
	[4004] = { config_id = 4004, monster_id = 23010201, pos = { x = 715.708, y = 90.187, z = 791.772 }, rot = { x = 0.000, y = 158.567, z = 0.000 }, level = 1, disableWander = true, affix = { 5256, 5262 } },
	[4005] = { config_id = 4005, monster_id = 23010401, pos = { x = 718.142, y = 90.184, z = 786.605 }, rot = { x = 0.000, y = 149.109, z = 0.000 }, level = 1, disableWander = true, affix = { 5256, 5262 } },
	[4006] = { config_id = 4006, monster_id = 24040101, pos = { x = 725.131, y = 90.188, z = 773.327 }, rot = { x = 0.000, y = 327.273, z = 0.000 }, level = 1, disableWander = true, affix = { 5256, 5262 }, pose_id = 1 },
	[4007] = { config_id = 4007, monster_id = 24040301, pos = { x = 729.474, y = 90.184, z = 781.819 }, rot = { x = 0.000, y = 266.581, z = 0.000 }, level = 1, disableWander = true, affix = { 5256, 5262 }, pose_id = 1 },
	[4008] = { config_id = 4008, monster_id = 24040301, pos = { x = 714.325, y = 90.183, z = 774.437 }, rot = { x = 0.000, y = 26.608, z = 0.000 }, level = 1, disableWander = true, affix = { 5256, 5262 }, pose_id = 1 },
	[4009] = { config_id = 4009, monster_id = 24040101, pos = { x = 718.287, y = 90.184, z = 785.855 }, rot = { x = 0.000, y = 153.392, z = 0.000 }, level = 1, disableWander = true, affix = { 5256, 5262 }, pose_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[4001] = { config_id = 4001, gadget_id = 70710535, pos = { x = 720.311, y = 84.500, z = 781.183 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4010] = { config_id = 4010, gadget_id = 70900205, pos = { x = 721.858, y = 88.861, z = 782.615 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1004011, name = "ANY_MONSTER_DIE_4011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4011", action = "action_EVENT_ANY_MONSTER_DIE_4011", trigger_count = 0 },
	{ config_id = 1004012, name = "ANY_MONSTER_DIE_4012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4012", action = "action_EVENT_ANY_MONSTER_DIE_4012", trigger_count = 0 }
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
		gadgets = { 4010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 4001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 4002, 4003, 4004, 4005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4011" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 4006, 4007, 4008, 4009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4011(context, evt)
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
function action_EVENT_ANY_MONSTER_DIE_4011(context, evt)
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235881004, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4012(context, evt)
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
function action_EVENT_ANY_MONSTER_DIE_4012(context, evt)
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