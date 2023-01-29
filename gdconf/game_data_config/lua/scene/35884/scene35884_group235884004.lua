-- 基础信息
local base_info = {
	group_id = 235884004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[4002] = { config_id = 4002, monster_id = 25410101, pos = { x = 219.544, y = 90.183, z = 224.539 }, rot = { x = 0.000, y = 187.506, z = 0.000 }, level = 1, disableWander = true, affix = { 5259, 5265 } },
	[4003] = { config_id = 4003, monster_id = 23010101, pos = { x = 223.518, y = 90.183, z = 221.726 }, rot = { x = 0.000, y = 196.623, z = 0.000 }, level = 1, disableWander = true, affix = { 5259, 5265 } },
	[4004] = { config_id = 4004, monster_id = 23010601, pos = { x = 212.857, y = 90.183, z = 214.607 }, rot = { x = 0.000, y = 92.356, z = 0.000 }, level = 1, disableWander = true, affix = { 5259, 5265 } },
	[4005] = { config_id = 4005, monster_id = 25410201, pos = { x = 214.403, y = 90.186, z = 221.753 }, rot = { x = 0.000, y = 141.916, z = 0.000 }, level = 1, disableWander = true, affix = { 5259, 5265 }, pose_id = 1 },
	[4006] = { config_id = 4006, monster_id = 23050101, pos = { x = 223.007, y = 90.184, z = 207.258 }, rot = { x = 0.000, y = 325.251, z = 0.000 }, level = 1, disableWander = true, affix = { 5259, 5265 } },
	[4007] = { config_id = 4007, monster_id = 25310101, pos = { x = 209.645, y = 90.176, z = 214.345 }, rot = { x = 0.000, y = 89.899, z = 0.000 }, level = 1, disableWander = true, affix = { 5259, 5265 }, pose_id = 1 },
	[4008] = { config_id = 4008, monster_id = 25310101, pos = { x = 230.571, y = 90.183, z = 214.068 }, rot = { x = 0.000, y = 265.587, z = 0.000 }, level = 1, disableWander = true, affix = { 5259, 5265 }, pose_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[4001] = { config_id = 4001, gadget_id = 70710535, pos = { x = 219.071, y = 84.095, z = 213.377 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4009] = { config_id = 4009, gadget_id = 70900205, pos = { x = 218.140, y = 89.155, z = 217.621 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1004010, name = "ANY_MONSTER_DIE_4010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4010", action = "action_EVENT_ANY_MONSTER_DIE_4010", trigger_count = 0 },
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
		gadgets = { 4009 },
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
		monsters = { 4003, 4004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4010" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 4006, 4007, 4008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4012" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 4002, 4005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4010(context, evt)
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
function action_EVENT_ANY_MONSTER_DIE_4010(context, evt)
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235884004, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4011(context, evt)
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
function action_EVENT_ANY_MONSTER_DIE_4011(context, evt)
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "GALLERY_STATE" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "GALLERY_STATE", 2, 235884001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
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
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235884004, 5)
	
	return 0
end