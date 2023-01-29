-- 基础信息
local base_info = {
	group_id = 235882003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[3002] = { config_id = 3002, monster_id = 22040201, pos = { x = 212.767, y = 90.184, z = 218.043 }, rot = { x = 0.000, y = 135.763, z = 0.000 }, level = 1, disableWander = true, affix = { 5257 }, pose_id = 101 },
	[3003] = { config_id = 3003, monster_id = 22040201, pos = { x = 223.020, y = 90.184, z = 220.272 }, rot = { x = 0.000, y = 201.644, z = 0.000 }, level = 1, disableWander = true, affix = { 5257 }, pose_id = 101 },
	[3004] = { config_id = 3004, monster_id = 22040201, pos = { x = 215.158, y = 90.184, z = 221.354 }, rot = { x = 0.000, y = 152.681, z = 0.000 }, level = 1, disableWander = true, affix = { 5257 }, pose_id = 101 },
	[3005] = { config_id = 3005, monster_id = 22040201, pos = { x = 219.930, y = 90.183, z = 221.260 }, rot = { x = 0.000, y = 179.415, z = 0.000 }, level = 1, disableWander = true, affix = { 5257 }, pose_id = 101 },
	[3006] = { config_id = 3006, monster_id = 22040201, pos = { x = 211.028, y = 90.179, z = 214.697 }, rot = { x = 0.000, y = 111.645, z = 0.000 }, level = 1, disableWander = true, affix = { 5257 }, pose_id = 101 },
	[3007] = { config_id = 3007, monster_id = 22040101, pos = { x = 218.119, y = 90.184, z = 204.488 }, rot = { x = 0.000, y = 352.679, z = 0.000 }, level = 1, disableWander = true, affix = { 5257 }, pose_id = 101 },
	[3008] = { config_id = 3008, monster_id = 22040101, pos = { x = 227.189, y = 90.184, z = 213.113 }, rot = { x = 0.000, y = 278.251, z = 0.000 }, level = 1, disableWander = true, affix = { 5257 }, pose_id = 101 },
	[3009] = { config_id = 3009, monster_id = 22040101, pos = { x = 223.498, y = 90.190, z = 204.946 }, rot = { x = 0.000, y = 331.774, z = 0.000 }, level = 1, disableWander = true, affix = { 5257 }, pose_id = 101 },
	[3010] = { config_id = 3010, monster_id = 22040101, pos = { x = 226.269, y = 90.184, z = 208.679 }, rot = { x = 0.000, y = 291.561, z = 0.000 }, level = 1, disableWander = true, affix = { 5257 }, pose_id = 101 },
	[3011] = { config_id = 3011, monster_id = 22040101, pos = { x = 213.103, y = 90.182, z = 204.426 }, rot = { x = 0.000, y = 31.593, z = 0.000 }, level = 1, disableWander = true, affix = { 5257 }, pose_id = 101 },
	[3012] = { config_id = 3012, monster_id = 22040201, pos = { x = 224.659, y = 90.184, z = 208.793 }, rot = { x = 0.000, y = 277.802, z = 0.000 }, level = 1, disableWander = true, affix = { 5257 }, pose_id = 101 },
	[3013] = { config_id = 3013, monster_id = 22040201, pos = { x = 223.550, y = 90.184, z = 218.716 }, rot = { x = 0.000, y = 246.352, z = 0.000 }, level = 1, disableWander = true, affix = { 5257 }, pose_id = 101 },
	[3014] = { config_id = 3014, monster_id = 22040101, pos = { x = 211.277, y = 90.178, z = 217.430 }, rot = { x = 0.000, y = 117.043, z = 0.000 }, level = 1, disableWander = true, affix = { 5257 }, pose_id = 101 },
	[3015] = { config_id = 3015, monster_id = 22040101, pos = { x = 211.447, y = 90.183, z = 209.996 }, rot = { x = 0.000, y = 72.497, z = 0.000 }, level = 1, disableWander = true, affix = { 5257 }, pose_id = 101 },
	[3016] = { config_id = 3016, monster_id = 22050201, pos = { x = 226.547, y = 90.184, z = 213.551 }, rot = { x = 0.000, y = 269.095, z = 0.000 }, level = 1, disableWander = true, affix = { 5257 }, pose_id = 101 },
	[3017] = { config_id = 3017, monster_id = 22050101, pos = { x = 209.384, y = 90.183, z = 213.517 }, rot = { x = 0.000, y = 86.757, z = 0.000 }, level = 1, disableWander = true, affix = { 5257 }, pose_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[3001] = { config_id = 3001, gadget_id = 70710535, pos = { x = 219.071, y = 84.095, z = 213.377 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[3018] = { config_id = 3018, gadget_id = 70900205, pos = { x = 219.317, y = 88.605, z = 215.511 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003019, name = "ANY_MONSTER_DIE_3019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3019", action = "action_EVENT_ANY_MONSTER_DIE_3019", trigger_count = 0 },
	{ config_id = 1003020, name = "ANY_MONSTER_DIE_3020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3020", action = "action_EVENT_ANY_MONSTER_DIE_3020", trigger_count = 0 },
	{ config_id = 1003021, name = "ANY_MONSTER_DIE_3021", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3021", action = "action_EVENT_ANY_MONSTER_DIE_3021", trigger_count = 0 }
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
		gadgets = { 3018 },
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
		monsters = { 3002, 3003, 3004, 3005, 3006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3019" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 3007, 3008, 3009, 3010, 3011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3021" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 3012, 3013, 3014, 3015, 3016, 3017 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3020" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3019(context, evt)
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
function action_EVENT_ANY_MONSTER_DIE_3019(context, evt)
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235882003, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3020(context, evt)
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
function action_EVENT_ANY_MONSTER_DIE_3020(context, evt)
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

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3021(context, evt)
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
function action_EVENT_ANY_MONSTER_DIE_3021(context, evt)
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235882003, 5)
	
	return 0
end