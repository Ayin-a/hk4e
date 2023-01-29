-- 基础信息
local base_info = {
	group_id = 235882002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[2001] = { config_id = 2001, monster_id = 24020401, pos = { x = 216.986, y = 90.184, z = 217.888 }, rot = { x = 0.000, y = 148.871, z = 0.000 }, level = 1, disableWander = true, affix = { 5257 }, pose_id = 100 },
	[2002] = { config_id = 2002, monster_id = 24020201, pos = { x = 219.892, y = 90.183, z = 224.768 }, rot = { x = 0.000, y = 172.850, z = 0.000 }, level = 1, disableWander = true, affix = { 5257 }, pose_id = 100 },
	[2003] = { config_id = 2003, monster_id = 24020201, pos = { x = 210.106, y = 90.184, z = 218.162 }, rot = { x = 0.000, y = 124.952, z = 0.000 }, level = 1, disableWander = true, affix = { 5257 }, pose_id = 100 },
	[2004] = { config_id = 2004, monster_id = 24030201, pos = { x = 212.912, y = 90.188, z = 223.910 }, rot = { x = 0.000, y = 150.708, z = 0.000 }, level = 1, disableWander = true, affix = { 5257 }, pose_id = 101 },
	[2005] = { config_id = 2005, monster_id = 21020201, pos = { x = 224.271, y = 90.183, z = 221.810 }, rot = { x = 0.000, y = 213.925, z = 0.000 }, level = 1, disableWander = true, affix = { 5257 } },
	[2006] = { config_id = 2006, monster_id = 21020201, pos = { x = 213.497, y = 90.183, z = 205.492 }, rot = { x = 0.000, y = 31.930, z = 0.000 }, level = 1, disableWander = true, affix = { 5257 } },
	[2008] = { config_id = 2008, monster_id = 21020701, pos = { x = 208.336, y = 90.179, z = 214.072 }, rot = { x = 0.000, y = 92.283, z = 0.000 }, level = 1, disableWander = true, affix = { 5257 } },
	[2009] = { config_id = 2009, monster_id = 21020701, pos = { x = 230.878, y = 90.183, z = 213.820 }, rot = { x = 0.000, y = 280.184, z = 0.000 }, level = 1, disableWander = true, affix = { 5257 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[2007] = { config_id = 2007, gadget_id = 70710535, pos = { x = 219.071, y = 84.095, z = 213.377 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2010] = { config_id = 2010, gadget_id = 70900205, pos = { x = 219.317, y = 88.605, z = 215.511 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1002011, name = "ANY_MONSTER_DIE_2011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2011", action = "action_EVENT_ANY_MONSTER_DIE_2011", trigger_count = 0 },
	{ config_id = 1002012, name = "ANY_MONSTER_DIE_2012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2012", action = "action_EVENT_ANY_MONSTER_DIE_2012", trigger_count = 0 }
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
		gadgets = { 2010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 2007 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 2005, 2006, 2008, 2009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2011" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 2001, 2002, 2003, 2004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2011(context, evt)
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
function action_EVENT_ANY_MONSTER_DIE_2011(context, evt)
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235882002, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2012(context, evt)
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
function action_EVENT_ANY_MONSTER_DIE_2012(context, evt)
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "GALLERY_STATE" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "GALLERY_STATE", 2, 235882001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end