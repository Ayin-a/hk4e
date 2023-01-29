-- 基础信息
local base_info = {
	group_id = 235883004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[4002] = { config_id = 4002, monster_id = 26120101, pos = { x = 712.207, y = 90.175, z = 784.979 }, rot = { x = 0.000, y = 139.939, z = 0.000 }, level = 1, disableWander = true, affix = { 5258, 5264 }, pose_id = 201 },
	[4003] = { config_id = 4003, monster_id = 26120201, pos = { x = 723.090, y = 90.183, z = 790.726 }, rot = { x = 0.000, y = 172.436, z = 0.000 }, level = 1, disableWander = true, affix = { 5258, 5264 }, pose_id = 201 },
	[4004] = { config_id = 4004, monster_id = 26120301, pos = { x = 715.313, y = 90.188, z = 792.364 }, rot = { x = 0.000, y = 154.584, z = 0.000 }, level = 1, disableWander = true, affix = { 5258, 5263 }, isElite = true, pose_id = 101 },
	[4005] = { config_id = 4005, monster_id = 26120401, pos = { x = 718.626, y = 90.184, z = 785.543 }, rot = { x = 0.000, y = 156.360, z = 0.000 }, level = 1, disableWander = true, affix = { 5258, 5264 }, pose_id = 101 },
	[4006] = { config_id = 4006, monster_id = 23020101, pos = { x = 725.262, y = 90.193, z = 772.084 }, rot = { x = 0.000, y = 327.273, z = 0.000 }, level = 1, disableWander = true, affix = { 5258, 5264 } },
	[4007] = { config_id = 4007, monster_id = 23020101, pos = { x = 729.474, y = 90.184, z = 781.819 }, rot = { x = 0.000, y = 266.581, z = 0.000 }, level = 1, disableWander = true, affix = { 5258, 5264 } },
	[4008] = { config_id = 4008, monster_id = 23020101, pos = { x = 714.543, y = 90.183, z = 773.228 }, rot = { x = 0.000, y = 26.608, z = 0.000 }, level = 1, disableWander = true, affix = { 5258, 5264 } },
	[4012] = { config_id = 4012, monster_id = 25210201, pos = { x = 716.784, y = 90.193, z = 788.052 }, rot = { x = 0.000, y = 152.424, z = 0.000 }, level = 1, disableWander = true, affix = { 5258, 5263 }, isElite = true },
	[4013] = { config_id = 4013, monster_id = 22010101, pos = { x = 719.045, y = 90.193, z = 784.011 }, rot = { x = 0.000, y = 151.895, z = 0.000 }, level = 1, disableWander = true, affix = { 5258, 5264 } },
	[4014] = { config_id = 4014, monster_id = 22010301, pos = { x = 722.869, y = 90.184, z = 784.553 }, rot = { x = 0.000, y = 211.564, z = 0.000 }, level = 1, disableWander = true, affix = { 5258, 5264 } },
	[4015] = { config_id = 4015, monster_id = 22010401, pos = { x = 716.084, y = 90.183, z = 781.748 }, rot = { x = 0.000, y = 102.400, z = 0.000 }, level = 1, disableWander = true, affix = { 5258, 5264 } },
	[4017] = { config_id = 4017, monster_id = 21010902, pos = { x = 727.267, y = 90.193, z = 770.602 }, rot = { x = 0.000, y = 321.420, z = 0.000 }, level = 1, disableWander = true, affix = { 5258, 5263 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[4001] = { config_id = 4001, gadget_id = 70710535, pos = { x = 720.311, y = 84.500, z = 781.183 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4009] = { config_id = 4009, gadget_id = 70900205, pos = { x = 721.493, y = 89.151, z = 783.303 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1004010, name = "ANY_MONSTER_DIE_4010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4010", action = "action_EVENT_ANY_MONSTER_DIE_4010", trigger_count = 0 },
	{ config_id = 1004011, name = "ANY_MONSTER_DIE_4011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4011", action = "action_EVENT_ANY_MONSTER_DIE_4011", trigger_count = 0 },
	{ config_id = 1004016, name = "ANY_MONSTER_DIE_4016", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4016", action = "action_EVENT_ANY_MONSTER_DIE_4016", trigger_count = 0 }
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
		monsters = { 4002, 4003, 4004, 4005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4010" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 4006, 4007, 4008, 4012 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4016" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 4013, 4014, 4015, 4017 },
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
	    ScriptLib.AddExtraGroupSuite(context, 235883004, 4)
	
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
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "GALLERY_STATE", 2, 235883001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4016(context, evt)
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
function action_EVENT_ANY_MONSTER_DIE_4016(context, evt)
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235883004, 5)
	
	return 0
end