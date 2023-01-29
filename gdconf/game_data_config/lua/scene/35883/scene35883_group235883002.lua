-- 基础信息
local base_info = {
	group_id = 235883002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[2002] = { config_id = 2002, monster_id = 22010101, pos = { x = 718.038, y = 90.184, z = 788.549 }, rot = { x = 0.000, y = 156.107, z = 0.000 }, level = 1, disableWander = true, affix = { 5258, 5264 } },
	[2003] = { config_id = 2003, monster_id = 20011101, pos = { x = 714.898, y = 90.183, z = 772.688 }, rot = { x = 0.000, y = 27.855, z = 0.000 }, level = 1, disableWander = true, affix = { 5258, 5264 } },
	[2004] = { config_id = 2004, monster_id = 20011101, pos = { x = 729.812, y = 90.184, z = 785.815 }, rot = { x = 0.000, y = 249.651, z = 0.000 }, level = 1, disableWander = true, affix = { 5258, 5264 } },
	[2005] = { config_id = 2005, monster_id = 20011101, pos = { x = 730.965, y = 90.183, z = 779.130 }, rot = { x = 0.000, y = 275.385, z = 0.000 }, level = 1, disableWander = true, affix = { 5258, 5264 } },
	[2006] = { config_id = 2006, monster_id = 20011101, pos = { x = 710.913, y = 90.183, z = 777.491 }, rot = { x = 0.000, y = 65.368, z = 0.000 }, level = 1, disableWander = true, affix = { 5258, 5264 } },
	[2007] = { config_id = 2007, monster_id = 21030201, pos = { x = 724.335, y = 90.187, z = 772.931 }, rot = { x = 0.000, y = 337.622, z = 0.000 }, level = 1, disableWander = true, affix = { 5258, 5263 }, isElite = true },
	[2008] = { config_id = 2008, monster_id = 21030301, pos = { x = 718.038, y = 90.184, z = 788.549 }, rot = { x = 0.000, y = 156.107, z = 0.000 }, level = 1, disableWander = true, affix = { 5258, 5263 }, isElite = true },
	[2009] = { config_id = 2009, monster_id = 20011301, pos = { x = 715.179, y = 90.183, z = 773.785 }, rot = { x = 0.000, y = 33.994, z = 0.000 }, level = 1, disableWander = true, affix = { 5258, 5264 } },
	[2010] = { config_id = 2010, monster_id = 20010601, pos = { x = 727.327, y = 90.184, z = 787.017 }, rot = { x = 0.000, y = 232.821, z = 0.000 }, level = 1, disableWander = true, affix = { 5258, 5264 } },
	[2011] = { config_id = 2011, monster_id = 20011301, pos = { x = 730.740, y = 90.183, z = 781.113 }, rot = { x = 0.000, y = 269.825, z = 0.000 }, level = 1, disableWander = true, affix = { 5258, 5264 } },
	[2012] = { config_id = 2012, monster_id = 20010701, pos = { x = 711.549, y = 90.183, z = 781.098 }, rot = { x = 0.000, y = 65.368, z = 0.000 }, level = 1, disableWander = true, affix = { 5258, 5264 } },
	[2013] = { config_id = 2013, monster_id = 21020201, pos = { x = 724.335, y = 90.187, z = 772.931 }, rot = { x = 0.000, y = 337.622, z = 0.000 }, level = 1, disableWander = true, affix = { 5258, 5264 } },
	[2014] = { config_id = 2014, monster_id = 21020801, pos = { x = 718.038, y = 90.184, z = 788.549 }, rot = { x = 0.000, y = 156.107, z = 0.000 }, level = 1, disableWander = true, affix = { 5258, 5264 } },
	[2015] = { config_id = 2015, monster_id = 21010601, pos = { x = 714.261, y = 90.183, z = 772.728 }, rot = { x = 0.000, y = 27.855, z = 0.000 }, level = 1, disableWander = true, affix = { 5258, 5264 } },
	[2017] = { config_id = 2017, monster_id = 21010601, pos = { x = 731.785, y = 90.183, z = 781.523 }, rot = { x = 0.000, y = 268.200, z = 0.000 }, level = 1, disableWander = true, affix = { 5258, 5264 } },
	[2019] = { config_id = 2019, monster_id = 21030101, pos = { x = 724.938, y = 90.184, z = 774.024 }, rot = { x = 0.000, y = 333.712, z = 0.000 }, level = 1, disableWander = true, affix = { 5258, 5263 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[2001] = { config_id = 2001, gadget_id = 70710535, pos = { x = 720.311, y = 84.500, z = 781.183 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2016] = { config_id = 2016, gadget_id = 70900205, pos = { x = 721.493, y = 89.151, z = 783.303 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1002018, name = "ANY_MONSTER_DIE_2018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2018", action = "action_EVENT_ANY_MONSTER_DIE_2018", trigger_count = 0 },
	{ config_id = 1002020, name = "ANY_MONSTER_DIE_2020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2020", action = "action_EVENT_ANY_MONSTER_DIE_2020", trigger_count = 0 },
	{ config_id = 1002021, name = "ANY_MONSTER_DIE_2021", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2021", action = "action_EVENT_ANY_MONSTER_DIE_2021", trigger_count = 0 }
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
		gadgets = { 2016 },
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
		monsters = { 2002, 2003, 2004, 2005, 2006, 2007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2018" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 2008, 2009, 2010, 2011, 2012, 2013 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2020" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 2014, 2015, 2017, 2019 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2021" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2018(context, evt)
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
function action_EVENT_ANY_MONSTER_DIE_2018(context, evt)
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235883002, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2020(context, evt)
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
function action_EVENT_ANY_MONSTER_DIE_2020(context, evt)
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235883002, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2021(context, evt)
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
function action_EVENT_ANY_MONSTER_DIE_2021(context, evt)
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