-- 基础信息
local base_info = {
	group_id = 133216020
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 20001, monster_id = 21010901, pos = { x = -4986.612, y = 206.032, z = -2721.174 }, rot = { x = 358.401, y = 275.290, z = 16.764 }, level = 33, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 18 },
	{ config_id = 20002, monster_id = 21010901, pos = { x = -4995.404, y = 204.020, z = -2731.979 }, rot = { x = 0.000, y = 243.348, z = 0.000 }, level = 33, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 18 },
	{ config_id = 20011, monster_id = 21010301, pos = { x = -4973.630, y = 206.053, z = -2705.567 }, rot = { x = 0.000, y = 173.923, z = 0.000 }, level = 33, drop_tag = "丘丘人", pose_id = 9003, area_id = 18 },
	{ config_id = 20015, monster_id = 21010301, pos = { x = -4973.922, y = 206.172, z = -2708.424 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "丘丘人", pose_id = 9003, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 20003, gadget_id = 70220026, pos = { x = -4981.130, y = 206.044, z = -2720.698 }, rot = { x = 0.000, y = 15.494, z = 0.000 }, level = 33, area_id = 18 },
	-- 可摧毁小哨塔A
	{ config_id = 20004, gadget_id = 70950092, pos = { x = -4994.925, y = 200.000, z = -2732.033 }, rot = { x = 0.000, y = 314.149, z = 0.000 }, level = 18, state = GadgetState.GearStart, area_id = 18 },
	-- 可摧毁小哨塔B
	{ config_id = 20005, gadget_id = 70950092, pos = { x = -4972.329, y = 200.000, z = -2731.248 }, rot = { x = 0.000, y = 311.327, z = 0.000 }, level = 18, state = GadgetState.GearStart, area_id = 18 },
	-- 不可摧毁大哨塔A
	{ config_id = 20006, gadget_id = 70290059, pos = { x = -4983.492, y = 200.000, z = -2720.151 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, state = GadgetState.GearStart, area_id = 18 },
	-- 不可摧毁大哨塔A
	{ config_id = 20007, gadget_id = 70290059, pos = { x = -4972.236, y = 200.000, z = -2708.345 }, rot = { x = 0.000, y = 81.114, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	-- 小哨塔A连接梯子A
	{ config_id = 20008, gadget_id = 70290060, pos = { x = -4978.682, y = 205.276, z = -2714.802 }, rot = { x = 1.986, y = 307.719, z = 347.700 }, level = 33, area_id = 18 },
	-- 小哨塔A连接梯子A
	{ config_id = 20009, gadget_id = 70290060, pos = { x = -4990.244, y = 204.319, z = -2726.842 }, rot = { x = 0.000, y = 313.734, z = 0.000 }, level = 18, area_id = 18 },
	-- 小哨塔B连接梯子B
	{ config_id = 20010, gadget_id = 70290060, pos = { x = -4977.726, y = 204.224, z = -2726.434 }, rot = { x = 0.000, y = 221.702, z = 0.000 }, level = 18, area_id = 18 },
	{ config_id = 20016, gadget_id = 70220026, pos = { x = -4970.788, y = 206.077, z = -2707.970 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 20017, gadget_id = 70220013, pos = { x = -4971.441, y = 206.078, z = -2709.646 }, rot = { x = 0.000, y = 22.401, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 20018, gadget_id = 70220013, pos = { x = -4984.065, y = 206.199, z = -2724.115 }, rot = { x = 0.000, y = 29.502, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 20019, gadget_id = 70211151, pos = { x = -4983.860, y = 206.196, z = -2720.808 }, rot = { x = 0.000, y = 310.246, z = 0.000 }, level = 26, chest_drop_id = 21900003, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 销毁了小哨塔A后销毁梯子A
	{ config_id = 1020012, name = "ANY_GADGET_DIE_20012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_20012", action = "action_EVENT_ANY_GADGET_DIE_20012" },
	-- 销毁了小哨塔B后销毁梯子B
	{ config_id = 1020013, name = "ANY_GADGET_DIE_20013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_20013", action = "action_EVENT_ANY_GADGET_DIE_20013" },
	{ config_id = 1020014, name = "ANY_MONSTER_DIE_20014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_20014", action = "action_EVENT_ANY_MONSTER_DIE_20014" }
}

-- 变量
variables = {
	{ config_id = 1, name = "GroupCompletion", value = 0, no_refresh = false },
	{ config_id = 2, name = "remainingHeat", value = 3, no_refresh = false },
	{ config_id = 3, name = "wave", value = 0, no_refresh = false }
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
		monsters = { 20001, 20002, 20011, 20015 },
		gadgets = { 20003, 20004, 20005, 20006, 20007, 20008, 20009, 20010, 20016, 20017, 20018, 20019 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_20012", "ANY_GADGET_DIE_20013", "ANY_MONSTER_DIE_20014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = [默认在场的第一组魔物],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_20012(context, evt)
	if 20004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_20012(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 20009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_20013(context, evt)
	if 20005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_20013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 20010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_20014(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133216020) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_20014(context, evt)
	-- 将configid为 20019 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 20019, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end