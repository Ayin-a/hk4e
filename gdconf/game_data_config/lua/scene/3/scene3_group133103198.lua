-- 基础信息
local base_info = {
	group_id = 133103198
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 198004, monster_id = 24010101, pos = { x = 892.067, y = 284.030, z = 1527.018 }, rot = { x = 0.000, y = 139.176, z = 0.000 }, level = 30, drop_tag = "遗迹守卫", isOneoff = true, pose_id = 101, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 198001, gadget_id = 70900039, pos = { x = 885.637, y = 285.744, z = 1535.023 }, rot = { x = 0.000, y = 59.381, z = 0.000 }, level = 24, state = GadgetState.GearStop, persistent = true, area_id = 6 },
	{ config_id = 198002, gadget_id = 70610201, pos = { x = 885.410, y = 285.729, z = 1535.187 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, persistent = true, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1198003, name = "GADGET_STATE_CHANGE_198003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_198003", action = "action_EVENT_GADGET_STATE_CHANGE_198003" },
	{ config_id = 1198005, name = "ANY_MONSTER_DIE_198005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_198005", action = "action_EVENT_ANY_MONSTER_DIE_198005" },
	{ config_id = 1198006, name = "GROUP_LOAD_198006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_198006", action = "action_EVENT_GROUP_LOAD_198006" }
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
		monsters = { 198004 },
		gadgets = { 198001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_198003", "ANY_MONSTER_DIE_198005", "GROUP_LOAD_198006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_198003(context, evt)
	if 198001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_198003(context, evt)
	-- 创建id为198002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 198002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_198005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_198005(context, evt)
	-- 将configid为 198001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 198001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_198006(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133103198) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_198006(context, evt)
	-- 将configid为 198001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 198001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end