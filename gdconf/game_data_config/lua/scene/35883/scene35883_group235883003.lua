-- 基础信息
local base_info = {
	group_id = 235883003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[3002] = { config_id = 3002, monster_id = 23030101, pos = { x = 715.751, y = 90.185, z = 789.417 }, rot = { x = 0.000, y = 153.951, z = 0.000 }, level = 1, disableWander = true, affix = { 5258, 5264 } },
	[3003] = { config_id = 3003, monster_id = 25070101, pos = { x = 712.134, y = 90.182, z = 781.607 }, rot = { x = 0.000, y = 89.373, z = 0.000 }, level = 1, disableWander = true, affix = { 5258, 5264 } },
	[3004] = { config_id = 3004, monster_id = 25010601, pos = { x = 724.889, y = 90.184, z = 788.994 }, rot = { x = 0.000, y = 204.037, z = 0.000 }, level = 1, disableWander = true, affix = { 5258, 5264 } },
	[3005] = { config_id = 3005, monster_id = 25070101, pos = { x = 717.011, y = 90.184, z = 775.724 }, rot = { x = 0.000, y = 37.386, z = 0.000 }, level = 1, disableWander = true, affix = { 5258, 5264 } },
	[3006] = { config_id = 3006, monster_id = 25010401, pos = { x = 729.045, y = 90.184, z = 781.469 }, rot = { x = 0.000, y = 284.670, z = 0.000 }, level = 1, disableWander = true, affix = { 5258, 5264 } },
	[3007] = { config_id = 3007, monster_id = 25030301, pos = { x = 724.333, y = 90.184, z = 775.009 }, rot = { x = 0.000, y = 329.860, z = 0.000 }, level = 1, disableWander = true, affix = { 5258, 5263 }, isElite = true },
	[3011] = { config_id = 3011, monster_id = 23050101, pos = { x = 724.619, y = 90.185, z = 774.483 }, rot = { x = 0.000, y = 322.341, z = 0.000 }, level = 1, disableWander = true, affix = { 5258, 5264 } },
	[3012] = { config_id = 3012, monster_id = 25210401, pos = { x = 727.840, y = 90.185, z = 781.415 }, rot = { x = 0.000, y = 265.450, z = 0.000 }, level = 1, disableWander = true, affix = { 5258, 5264 } },
	[3013] = { config_id = 3013, monster_id = 25210401, pos = { x = 714.304, y = 90.185, z = 772.174 }, rot = { x = 0.000, y = 37.609, z = 0.000 }, level = 1, disableWander = true, affix = { 5258, 5264 } },
	[3014] = { config_id = 3014, monster_id = 25210501, pos = { x = 712.660, y = 90.185, z = 781.369 }, rot = { x = 0.000, y = 98.554, z = 0.000 }, level = 1, disableWander = true, affix = { 5258, 5264 } },
	[3015] = { config_id = 3015, monster_id = 25210201, pos = { x = 717.178, y = 90.185, z = 787.336 }, rot = { x = 0.000, y = 149.197, z = 0.000 }, level = 1, disableWander = true, affix = { 5258, 5263 }, isElite = true },
	[3016] = { config_id = 3016, monster_id = 25210501, pos = { x = 724.894, y = 90.185, z = 789.123 }, rot = { x = 0.000, y = 198.187, z = 0.000 }, level = 1, disableWander = true, affix = { 5258, 5264 } },
	[3018] = { config_id = 3018, monster_id = 23020101, pos = { x = 715.751, y = 90.185, z = 789.417 }, rot = { x = 0.000, y = 153.951, z = 0.000 }, level = 1, disableWander = true, affix = { 5258, 5264 } },
	[3019] = { config_id = 3019, monster_id = 25060101, pos = { x = 712.134, y = 90.182, z = 781.607 }, rot = { x = 0.000, y = 89.373, z = 0.000 }, level = 1, disableWander = true, affix = { 5258, 5264 } },
	[3020] = { config_id = 3020, monster_id = 25210301, pos = { x = 724.889, y = 90.184, z = 788.994 }, rot = { x = 0.000, y = 204.037, z = 0.000 }, level = 1, disableWander = true, affix = { 5258, 5264 } },
	[3021] = { config_id = 3021, monster_id = 25060101, pos = { x = 717.011, y = 90.184, z = 775.724 }, rot = { x = 0.000, y = 37.386, z = 0.000 }, level = 1, disableWander = true, affix = { 5258, 5264 } },
	[3022] = { config_id = 3022, monster_id = 25210301, pos = { x = 729.045, y = 90.184, z = 781.469 }, rot = { x = 0.000, y = 284.670, z = 0.000 }, level = 1, disableWander = true, affix = { 5258, 5264 } },
	[3023] = { config_id = 3023, monster_id = 25010701, pos = { x = 724.333, y = 90.184, z = 775.009 }, rot = { x = 0.000, y = 329.860, z = 0.000 }, level = 1, disableWander = true, affix = { 5258, 5263 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[3001] = { config_id = 3001, gadget_id = 70710535, pos = { x = 720.311, y = 84.500, z = 781.183 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[3008] = { config_id = 3008, gadget_id = 70900205, pos = { x = 721.493, y = 89.151, z = 783.303 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003009, name = "ANY_MONSTER_DIE_3009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3009", action = "action_EVENT_ANY_MONSTER_DIE_3009", trigger_count = 0 },
	{ config_id = 1003010, name = "ANY_MONSTER_DIE_3010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3010", action = "action_EVENT_ANY_MONSTER_DIE_3010", trigger_count = 0 },
	{ config_id = 1003017, name = "ANY_MONSTER_DIE_3017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3017", action = "action_EVENT_ANY_MONSTER_DIE_3017", trigger_count = 0 }
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
		gadgets = { 3008 },
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
		monsters = { 3002, 3003, 3004, 3005, 3006, 3007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 3018, 3019, 3020, 3021, 3022, 3023 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3017" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 3011, 3012, 3013, 3014, 3015, 3016 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3009(context, evt)
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
function action_EVENT_ANY_MONSTER_DIE_3009(context, evt)
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235883003, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3010(context, evt)
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
function action_EVENT_ANY_MONSTER_DIE_3010(context, evt)
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
function condition_EVENT_ANY_MONSTER_DIE_3017(context, evt)
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
function action_EVENT_ANY_MONSTER_DIE_3017(context, evt)
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235883003, 5)
	
	return 0
end