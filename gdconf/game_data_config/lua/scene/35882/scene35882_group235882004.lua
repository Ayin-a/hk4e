-- 基础信息
local base_info = {
	group_id = 235882004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[4002] = { config_id = 4002, monster_id = 22010301, pos = { x = 217.472, y = 90.183, z = 225.290 }, rot = { x = 0.000, y = 172.388, z = 0.000 }, level = 1, disableWander = true, affix = { 5257 } },
	[4003] = { config_id = 4003, monster_id = 20050203, pos = { x = 223.139, y = 90.184, z = 220.717 }, rot = { x = 0.000, y = 192.370, z = 0.000 }, level = 1, disableWander = true, affix = { 5257 } },
	[4004] = { config_id = 4004, monster_id = 20050203, pos = { x = 213.764, y = 90.184, z = 219.517 }, rot = { x = 0.000, y = 167.140, z = 0.000 }, level = 1, disableWander = true, affix = { 5257 } },
	[4005] = { config_id = 4005, monster_id = 22010301, pos = { x = 208.146, y = 90.171, z = 216.618 }, rot = { x = 0.000, y = 102.903, z = 0.000 }, level = 1, disableWander = true, affix = { 5257 } },
	[4006] = { config_id = 4006, monster_id = 20050603, pos = { x = 224.248, y = 90.184, z = 208.270 }, rot = { x = 0.000, y = 336.746, z = 0.000 }, level = 1, disableWander = true, affix = { 5257 } },
	[4007] = { config_id = 4007, monster_id = 20050603, pos = { x = 217.413, y = 90.184, z = 206.531 }, rot = { x = 0.000, y = 355.029, z = 0.000 }, level = 1, disableWander = true, affix = { 5257 } },
	[4008] = { config_id = 4008, monster_id = 20050802, pos = { x = 217.472, y = 90.183, z = 225.290 }, rot = { x = 0.000, y = 172.388, z = 0.000 }, level = 1, disableWander = true, affix = { 5257 } },
	[4009] = { config_id = 4009, monster_id = 20011101, pos = { x = 227.399, y = 90.183, z = 212.147 }, rot = { x = 0.000, y = 268.920, z = 0.000 }, level = 1, disableWander = true, affix = { 5257 } },
	[4010] = { config_id = 4010, monster_id = 20011101, pos = { x = 228.776, y = 90.184, z = 215.767 }, rot = { x = 0.000, y = 253.080, z = 0.000 }, level = 1, disableWander = true, affix = { 5257 } },
	[4011] = { config_id = 4011, monster_id = 20011101, pos = { x = 211.571, y = 90.173, z = 215.646 }, rot = { x = 0.000, y = 86.434, z = 0.000 }, level = 1, disableWander = true, affix = { 5257 } },
	[4012] = { config_id = 4012, monster_id = 20011101, pos = { x = 212.828, y = 90.183, z = 209.203 }, rot = { x = 0.000, y = 69.410, z = 0.000 }, level = 1, disableWander = true, affix = { 5257 } },
	[4013] = { config_id = 4013, monster_id = 20011101, pos = { x = 209.465, y = 90.183, z = 212.289 }, rot = { x = 0.000, y = 73.964, z = 0.000 }, level = 1, disableWander = true, affix = { 5257 } },
	[4014] = { config_id = 4014, monster_id = 20011101, pos = { x = 227.120, y = 90.184, z = 218.530 }, rot = { x = 0.000, y = 253.080, z = 0.000 }, level = 1, disableWander = true, affix = { 5257 } },
	[4015] = { config_id = 4015, monster_id = 22010301, pos = { x = 228.069, y = 90.184, z = 217.904 }, rot = { x = 0.000, y = 232.141, z = 0.000 }, level = 1, disableWander = true, affix = { 5257 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[4001] = { config_id = 4001, gadget_id = 70710535, pos = { x = 219.071, y = 84.095, z = 213.377 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4016] = { config_id = 4016, gadget_id = 70900205, pos = { x = 219.317, y = 88.605, z = 215.511 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1004017, name = "ANY_MONSTER_DIE_4017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4017", action = "action_EVENT_ANY_MONSTER_DIE_4017", trigger_count = 0 },
	{ config_id = 1004018, name = "ANY_MONSTER_DIE_4018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4018", action = "action_EVENT_ANY_MONSTER_DIE_4018", trigger_count = 0 },
	{ config_id = 1004019, name = "ANY_MONSTER_DIE_4019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4019", action = "action_EVENT_ANY_MONSTER_DIE_4019", trigger_count = 0 }
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
		gadgets = { 4016 },
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
		monsters = { 4003, 4004, 4006, 4007, 4008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4017" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 4009, 4010, 4011, 4012, 4013, 4014 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4018" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 4002, 4005, 4015 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4019" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4017(context, evt)
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
function action_EVENT_ANY_MONSTER_DIE_4017(context, evt)
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235882004, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4018(context, evt)
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
function action_EVENT_ANY_MONSTER_DIE_4018(context, evt)
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235882004, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4019(context, evt)
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
function action_EVENT_ANY_MONSTER_DIE_4019(context, evt)
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