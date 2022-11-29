-- 基础信息
local base_info = {
	group_id = 133003486
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1763, monster_id = 20011001, pos = { x = 2492.316, y = 300.137, z = -1804.784 }, rot = { x = 0.000, y = 277.170, z = 0.000 }, level = 10, drop_id = 1000100, area_id = 1 },
	{ config_id = 1764, monster_id = 20011101, pos = { x = 2490.389, y = 300.212, z = -1806.639 }, rot = { x = 4.102, y = 265.631, z = 359.725 }, level = 10, drop_id = 1000100, area_id = 1 },
	{ config_id = 1765, monster_id = 20011001, pos = { x = 2492.893, y = 300.595, z = -1808.385 }, rot = { x = 0.000, y = 267.123, z = 0.000 }, level = 10, drop_id = 1000100, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4471, gadget_id = 70211102, pos = { x = 2492.348, y = 300.337, z = -1806.622 }, rot = { x = 2.756, y = 265.474, z = 354.206 }, level = 6, drop_tag = "解谜低级蒙德", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 598, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2492.520, y = 301.056, z = -1806.585 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1000598, name = "ENTER_REGION_598", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_598", action = "action_EVENT_ENTER_REGION_598" },
	{ config_id = 1000599, name = "ANY_MONSTER_DIE_599", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_599", action = "action_EVENT_ANY_MONSTER_DIE_599" },
	{ config_id = 1000600, name = "GADGET_CREATE_600", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_600", action = "action_EVENT_GADGET_CREATE_600", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 4471 },
		regions = { 598 },
		triggers = { "ENTER_REGION_598", "GADGET_CREATE_600" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 1763, 1764, 1765 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_599" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_598(context, evt)
	if evt.param1 ~= 598 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_598(context, evt)
	-- 将configid为 4471 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4471, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003486, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_599(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_599(context, evt)
	-- 将configid为 4471 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4471, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_600(context, evt)
	if 4471 ~= evt.param1 or GadgetState.ChestLocked ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_600(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003486, 2)
	
	return 0
end