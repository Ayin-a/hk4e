-- 基础信息
local base_info = {
	group_id = 235881002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[2002] = { config_id = 2002, monster_id = 21020501, pos = { x = 718.038, y = 90.184, z = 788.549 }, rot = { x = 0.000, y = 156.107, z = 0.000 }, level = 1, disableWander = true, affix = { 5256, 5262 } },
	[2003] = { config_id = 2003, monster_id = 21020401, pos = { x = 712.229, y = 90.183, z = 777.520 }, rot = { x = 0.000, y = 63.190, z = 0.000 }, level = 1, disableWander = true, affix = { 5256, 5262 } },
	[2004] = { config_id = 2004, monster_id = 24010101, pos = { x = 723.003, y = 90.184, z = 774.024 }, rot = { x = 0.000, y = 321.275, z = 0.000 }, level = 1, disableWander = true, affix = { 5256, 5262 }, pose_id = 100 },
	[2009] = { config_id = 2009, monster_id = 24010101, pos = { x = 729.378, y = 90.184, z = 784.812 }, rot = { x = 0.000, y = 246.664, z = 0.000 }, level = 1, disableWander = true, affix = { 5256, 5262 }, pose_id = 100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[2001] = { config_id = 2001, gadget_id = 70710535, pos = { x = 720.311, y = 84.500, z = 781.183 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2005] = { config_id = 2005, gadget_id = 70900205, pos = { x = 721.858, y = 88.861, z = 782.615 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1002006, name = "ANY_MONSTER_DIE_2006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2006", action = "action_EVENT_ANY_MONSTER_DIE_2006", trigger_count = 0 },
	{ config_id = 1002007, name = "ANY_MONSTER_DIE_2007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2007", action = "action_EVENT_ANY_MONSTER_DIE_2007", trigger_count = 0 },
	{ config_id = 1002008, name = "ANY_MONSTER_DIE_2008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2008", action = "action_EVENT_ANY_MONSTER_DIE_2008", trigger_count = 0 }
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
		gadgets = { 2005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 2001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 2002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2006" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 2003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2007" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 2004, 2009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2006(context, evt)
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
function action_EVENT_ANY_MONSTER_DIE_2006(context, evt)
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235881002, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2007(context, evt)
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
function action_EVENT_ANY_MONSTER_DIE_2007(context, evt)
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235881002, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2008(context, evt)
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
function action_EVENT_ANY_MONSTER_DIE_2008(context, evt)
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