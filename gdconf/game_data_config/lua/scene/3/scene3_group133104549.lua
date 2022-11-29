-- 基础信息
local base_info = {
	group_id = 133104549
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 549001, monster_id = 26060101, pos = { x = 181.185, y = 240.862, z = 87.254 }, rot = { x = 0.000, y = 295.297, z = 0.000 }, level = 20, drop_id = 1000100, area_id = 9 },
	{ config_id = 549002, monster_id = 26060101, pos = { x = 183.189, y = 241.486, z = 85.589 }, rot = { x = 0.000, y = 259.729, z = 0.000 }, level = 20, drop_id = 1000100, area_id = 9 },
	{ config_id = 549003, monster_id = 26060101, pos = { x = 178.992, y = 241.104, z = 85.460 }, rot = { x = 0.000, y = 2.655, z = 0.000 }, level = 20, drop_id = 1000100, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 549004, gadget_id = 70211102, pos = { x = 181.114, y = 239.202, z = 84.676 }, rot = { x = 0.000, y = 2.655, z = 0.000 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 }
}

-- 区域
regions = {
	{ config_id = 549005, shape = RegionShape.SPHERE, radius = 4, pos = { x = 181.591, y = 239.202, z = 83.957 }, area_id = 9 }
}

-- 触发器
triggers = {
	{ config_id = 1549005, name = "ENTER_REGION_549005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_549005", action = "action_EVENT_ENTER_REGION_549005" },
	{ config_id = 1549006, name = "ANY_MONSTER_DIE_549006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_549006", action = "action_EVENT_ANY_MONSTER_DIE_549006" },
	{ config_id = 1549007, name = "GADGET_CREATE_549007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_549007", action = "action_EVENT_GADGET_CREATE_549007", trigger_count = 0 }
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
		gadgets = { 549004 },
		regions = { 549005 },
		triggers = { "ENTER_REGION_549005", "GADGET_CREATE_549007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 549001, 549002, 549003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_549006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_549005(context, evt)
	if evt.param1 ~= 549005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_549005(context, evt)
	-- 将configid为 549004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 549004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104549, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_549006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_549006(context, evt)
	-- 将configid为 549004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 549004, GadgetState.Default) then
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
function condition_EVENT_GADGET_CREATE_549007(context, evt)
	if 549004 ~= evt.param1 or GadgetState.ChestLocked ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_549007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104549, 2)
	
	return 0
end