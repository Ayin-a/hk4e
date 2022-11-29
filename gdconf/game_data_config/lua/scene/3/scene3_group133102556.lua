-- 基础信息
local base_info = {
	group_id = 133102556
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 556001, monster_id = 20011001, pos = { x = 1264.651, y = 200.000, z = 827.608 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, drop_id = 1000100, area_id = 6 },
	{ config_id = 556002, monster_id = 20011001, pos = { x = 1266.151, y = 200.000, z = 825.809 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, drop_id = 1000100, area_id = 5 },
	{ config_id = 556003, monster_id = 20011101, pos = { x = 1263.051, y = 200.000, z = 824.407 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, drop_id = 1000100, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 556004, gadget_id = 70211102, pos = { x = 1264.497, y = 199.469, z = 825.726 }, rot = { x = 337.962, y = 7.641, z = 340.333 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 556005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1264.776, y = 200.695, z = 825.627 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1556005, name = "ENTER_REGION_556005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_556005", action = "action_EVENT_ENTER_REGION_556005" },
	{ config_id = 1556006, name = "ANY_MONSTER_DIE_556006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_556006", action = "action_EVENT_ANY_MONSTER_DIE_556006" },
	{ config_id = 1556007, name = "GADGET_CREATE_556007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_556007", action = "action_EVENT_GADGET_CREATE_556007", trigger_count = 0 }
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
		gadgets = { 556004 },
		regions = { 556005 },
		triggers = { "ENTER_REGION_556005", "GADGET_CREATE_556007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 556001, 556002, 556003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_556006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_556005(context, evt)
	if evt.param1 ~= 556005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_556005(context, evt)
	-- 将configid为 556004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 556004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102556, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_556006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_556006(context, evt)
	-- 将configid为 556004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 556004, GadgetState.Default) then
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
function condition_EVENT_GADGET_CREATE_556007(context, evt)
	if 556004 ~= evt.param1 or GadgetState.ChestLocked ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_556007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102556, 2)
	
	return 0
end