-- 基础信息
local base_info = {
	group_id = 133103200
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 200004, monster_id = 24010101, pos = { x = 989.146, y = 267.477, z = 1611.625 }, rot = { x = 0.000, y = 318.124, z = 0.000 }, level = 30, drop_tag = "遗迹守卫", isOneoff = true, pose_id = 101, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 200001, gadget_id = 70900039, pos = { x = 982.705, y = 268.560, z = 1618.955 }, rot = { x = 0.000, y = 59.381, z = 0.000 }, level = 24, state = GadgetState.GearStop, persistent = true, area_id = 6 },
	{ config_id = 200002, gadget_id = 70610201, pos = { x = 982.479, y = 268.545, z = 1619.118 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, persistent = true, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1200003, name = "GADGET_STATE_CHANGE_200003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_200003", action = "action_EVENT_GADGET_STATE_CHANGE_200003" },
	{ config_id = 1200005, name = "ANY_MONSTER_DIE_200005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_200005", action = "action_EVENT_ANY_MONSTER_DIE_200005" },
	{ config_id = 1200006, name = "GROUP_LOAD_200006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_200006", action = "action_EVENT_GROUP_LOAD_200006" }
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
		monsters = { 200004 },
		gadgets = { 200001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_200003", "ANY_MONSTER_DIE_200005", "GROUP_LOAD_200006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_200003(context, evt)
	if 200001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_200003(context, evt)
	-- 创建id为200002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 200002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_200005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_200005(context, evt)
	-- 将configid为 200001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 200001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_200006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_200006(context, evt)
	-- 将configid为 200001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 200001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end