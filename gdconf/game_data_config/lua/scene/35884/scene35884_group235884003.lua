-- 基础信息
local base_info = {
	group_id = 235884003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[3002] = { config_id = 3002, monster_id = 24030101, pos = { x = 212.723, y = 90.184, z = 217.620 }, rot = { x = 0.000, y = 120.982, z = 0.000 }, level = 1, disableWander = true, affix = { 5259, 5265 }, pose_id = 101 },
	[3003] = { config_id = 3003, monster_id = 24030101, pos = { x = 220.488, y = 90.183, z = 221.666 }, rot = { x = 0.000, y = 181.433, z = 0.000 }, level = 1, disableWander = true, affix = { 5259, 5265 }, pose_id = 101 },
	[3005] = { config_id = 3005, monster_id = 25310101, pos = { x = 222.499, y = 90.184, z = 207.792 }, rot = { x = 0.000, y = 330.583, z = 0.000 }, level = 1, disableWander = true, affix = { 5259, 5265 }, pose_id = 1 },
	[3006] = { config_id = 3006, monster_id = 25310301, pos = { x = 213.936, y = 90.183, z = 206.663 }, rot = { x = 0.000, y = 41.133, z = 0.000 }, level = 1, disableWander = true, affix = { 5259, 5265 } },
	[3007] = { config_id = 3007, monster_id = 25310201, pos = { x = 223.459, y = 90.184, z = 220.482 }, rot = { x = 0.000, y = 200.422, z = 0.000 }, level = 1, disableWander = true, affix = { 5259, 5265 }, pose_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[3001] = { config_id = 3001, gadget_id = 70710535, pos = { x = 219.071, y = 84.095, z = 213.377 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[3009] = { config_id = 3009, gadget_id = 70900205, pos = { x = 218.140, y = 89.155, z = 217.621 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003010, name = "ANY_MONSTER_DIE_3010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3010", action = "action_EVENT_ANY_MONSTER_DIE_3010", trigger_count = 0 },
	{ config_id = 1003011, name = "ANY_MONSTER_DIE_3011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3011", action = "action_EVENT_ANY_MONSTER_DIE_3011", trigger_count = 0 }
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
		gadgets = { 3009 },
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
		monsters = { 3005, 3006, 3007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3010" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 3002, 3003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3010(context, evt)
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
function action_EVENT_ANY_MONSTER_DIE_3010(context, evt)
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235884003, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3011(context, evt)
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
function action_EVENT_ANY_MONSTER_DIE_3011(context, evt)
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