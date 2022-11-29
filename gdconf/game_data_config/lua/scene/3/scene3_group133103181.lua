-- 基础信息
local base_info = {
	group_id = 133103181
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 181001, monster_id = 26060101, pos = { x = 539.595, y = 242.992, z = 1653.541 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_id = 1000100, area_id = 6 },
	{ config_id = 181002, monster_id = 26060101, pos = { x = 541.095, y = 242.992, z = 1651.741 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_id = 1000100, area_id = 6 },
	{ config_id = 181003, monster_id = 26060101, pos = { x = 537.995, y = 242.992, z = 1650.341 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_id = 1000100, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 181004, gadget_id = 70211102, pos = { x = 539.595, y = 242.477, z = 1651.341 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, drop_tag = "解谜低级璃月", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 181005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 539.695, y = 243.177, z = 1651.541 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1181005, name = "ENTER_REGION_181005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_181005", action = "action_EVENT_ENTER_REGION_181005" },
	{ config_id = 1181006, name = "ANY_MONSTER_DIE_181006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_181006", action = "action_EVENT_ANY_MONSTER_DIE_181006" },
	{ config_id = 1181007, name = "GADGET_CREATE_181007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_181007", action = "action_EVENT_GADGET_CREATE_181007", trigger_count = 0 }
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
		gadgets = { 181004 },
		regions = { 181005 },
		triggers = { "ENTER_REGION_181005", "GADGET_CREATE_181007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 181001, 181002, 181003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_181006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_181005(context, evt)
	if evt.param1 ~= 181005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_181005(context, evt)
	-- 将configid为 181004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 181004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103181, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_181006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_181006(context, evt)
	-- 将configid为 181004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 181004, GadgetState.Default) then
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
function condition_EVENT_GADGET_CREATE_181007(context, evt)
	if 181004 ~= evt.param1 or GadgetState.ChestLocked ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_181007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103181, 2)
	
	return 0
end