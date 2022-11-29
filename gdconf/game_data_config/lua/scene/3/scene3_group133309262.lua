-- 基础信息
local base_info = {
	group_id = 133309262
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 262001, monster_id = 24040301, pos = { x = -2366.419, y = 7.366, z = 5310.323 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "元能构装体", affix = { 5246 }, pose_id = 1004, area_id = 27 },
	{ config_id = 262003, monster_id = 24040201, pos = { x = -2374.374, y = 7.366, z = 5310.781 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "元能构装体", affix = { 5246 }, pose_id = 1004, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1262004, name = "ANY_MONSTER_DIE_262004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_262004", action = "action_EVENT_ANY_MONSTER_DIE_262004" },
	{ config_id = 1262006, name = "GROUP_LOAD_262006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_262006", action = "action_EVENT_GROUP_LOAD_262006", trigger_count = 0 }
}

-- 变量
variables = {
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
		monsters = { 262001, 262003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_262004", "GROUP_LOAD_262006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_262004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_262004(context, evt)
	-- 将本组内变量名为 "active" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "active", 1, 133309261) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_262006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133309261, 261001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_262006(context, evt)
	-- 将本组内变量名为 "active" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "active", 1, 133309261) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end