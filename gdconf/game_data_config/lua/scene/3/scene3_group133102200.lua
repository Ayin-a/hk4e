-- 基础信息
local base_info = {
	group_id = 133102200
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 361, monster_id = 20010801, pos = { x = 1675.978, y = 199.972, z = 179.411 }, rot = { x = 2.698, y = 349.780, z = 359.755 }, level = 16, drop_id = 1000100, area_id = 5 },
	{ config_id = 362, monster_id = 20010801, pos = { x = 1676.778, y = 200.023, z = 177.027 }, rot = { x = 2.698, y = 349.780, z = 359.755 }, level = 16, drop_id = 1000100, area_id = 5 },
	{ config_id = 363, monster_id = 20010801, pos = { x = 1677.166, y = 199.971, z = 178.894 }, rot = { x = 2.698, y = 349.780, z = 359.755 }, level = 16, drop_id = 1000100, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 723, gadget_id = 70211102, pos = { x = 1678.700, y = 200.259, z = 178.515 }, rot = { x = 0.222, y = 273.748, z = 0.227 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 }
}

-- 区域
regions = {
	{ config_id = 396, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1678.732, y = 200.307, z = 178.885 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1000396, name = "ENTER_REGION_396", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_396", action = "action_EVENT_ENTER_REGION_396" },
	{ config_id = 1000397, name = "ANY_MONSTER_DIE_397", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_397", action = "action_EVENT_ANY_MONSTER_DIE_397" },
	{ config_id = 1000398, name = "GADGET_CREATE_398", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_398", action = "action_EVENT_GADGET_CREATE_398", trigger_count = 0 }
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
		gadgets = { 723 },
		regions = { 396 },
		triggers = { "ENTER_REGION_396", "GADGET_CREATE_398" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 361, 362, 363 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_397" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_396(context, evt)
	if evt.param1 ~= 396 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_396(context, evt)
	-- 将configid为 723 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 723, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102200, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_397(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_397(context, evt)
	-- 将configid为 723 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 723, GadgetState.Default) then
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
function condition_EVENT_GADGET_CREATE_398(context, evt)
	if 723 ~= evt.param1 or GadgetState.ChestLocked ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_398(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102200, 2)
	
	return 0
end