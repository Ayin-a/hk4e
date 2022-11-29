-- 基础信息
local base_info = {
	group_id = 144004049
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 49001, monster_id = 21011001, pos = { x = -809.901, y = 123.895, z = 685.065 }, rot = { x = 0.000, y = 20.037, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, area_id = 103 },
	{ config_id = 49002, monster_id = 21010901, pos = { x = -787.771, y = 124.392, z = 686.324 }, rot = { x = 0.000, y = 353.810, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, area_id = 103 },
	{ config_id = 49003, monster_id = 21011001, pos = { x = -798.925, y = 126.385, z = 696.802 }, rot = { x = 0.000, y = 27.558, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, area_id = 103 },
	{ config_id = 49015, monster_id = 21010901, pos = { x = -799.536, y = 126.161, z = 693.555 }, rot = { x = 0.000, y = 173.031, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, area_id = 103 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 可摧毁小哨塔A
	{ config_id = 49004, gadget_id = 70950092, pos = { x = -809.583, y = 120.000, z = 685.124 }, rot = { x = 0.000, y = 314.149, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 103 },
	-- 可摧毁小哨塔B
	{ config_id = 49005, gadget_id = 70950092, pos = { x = -786.987, y = 120.000, z = 685.909 }, rot = { x = 0.000, y = 311.327, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 103 },
	-- 不可摧毁大哨塔A
	{ config_id = 49006, gadget_id = 70290059, pos = { x = -798.150, y = 120.000, z = 697.005 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 103 },
	{ config_id = 49007, gadget_id = 70950087, pos = { x = -811.148, y = 120.000, z = 688.775 }, rot = { x = 0.000, y = 49.032, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 49008, gadget_id = 70950087, pos = { x = -784.976, y = 120.000, z = 690.528 }, rot = { x = 0.000, y = 196.466, z = 0.000 }, level = 1, area_id = 103 },
	-- 小哨塔A连接梯子A
	{ config_id = 49009, gadget_id = 70290060, pos = { x = -804.902, y = 124.300, z = 690.315 }, rot = { x = 0.000, y = 313.734, z = 0.000 }, level = 1, area_id = 103 },
	-- 小哨塔B连接梯子B
	{ config_id = 49010, gadget_id = 70290060, pos = { x = -792.384, y = 124.055, z = 690.723 }, rot = { x = 0.000, y = 221.702, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 49011, gadget_id = 70211012, pos = { x = -799.093, y = 126.023, z = 698.816 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "战斗中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 103 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 销毁了小哨塔A后销毁梯子A
	{ config_id = 1049012, name = "ANY_GADGET_DIE_49012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_49012", action = "action_EVENT_ANY_GADGET_DIE_49012" },
	-- 销毁了小哨塔B后销毁梯子B
	{ config_id = 1049013, name = "ANY_GADGET_DIE_49013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_49013", action = "action_EVENT_ANY_GADGET_DIE_49013" },
	{ config_id = 1049014, name = "ANY_MONSTER_DIE_49014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_49014", action = "action_EVENT_ANY_MONSTER_DIE_49014" }
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
	end_suite = 2,
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
		monsters = { 49001, 49002, 49003, 49015 },
		gadgets = { 49004, 49005, 49006, 49007, 49008, 49009, 49010, 49011 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_49012", "ANY_GADGET_DIE_49013", "ANY_MONSTER_DIE_49014" },
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
function condition_EVENT_ANY_GADGET_DIE_49012(context, evt)
	if 49004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_49012(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 49009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_49013(context, evt)
	if 49005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_49013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 49010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_49014(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 144004049) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_49014(context, evt)
	-- 将configid为 49011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 49011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end