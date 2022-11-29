-- 基础信息
local base_info = {
	group_id = 133102279
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 279001, monster_id = 20011401, pos = { x = 1766.249, y = 204.570, z = 17.595 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_id = 1000100, area_id = 5 },
	{ config_id = 279002, monster_id = 20011401, pos = { x = 1768.872, y = 203.564, z = 15.879 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_id = 1000100, area_id = 5 },
	{ config_id = 279003, monster_id = 20011401, pos = { x = 1764.203, y = 204.902, z = 15.401 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 279004, gadget_id = 70211102, pos = { x = 1766.554, y = 204.270, z = 14.769 }, rot = { x = 356.303, y = 1.272, z = 345.054 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 }
}

-- 区域
regions = {
	{ config_id = 279005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1766.544, y = 204.311, z = 15.306 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1279005, name = "ENTER_REGION_279005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_279005", action = "action_EVENT_ENTER_REGION_279005" },
	{ config_id = 1279006, name = "ANY_MONSTER_DIE_279006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_279006", action = "action_EVENT_ANY_MONSTER_DIE_279006" },
	{ config_id = 1279007, name = "GADGET_CREATE_279007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_279007", action = "action_EVENT_GADGET_CREATE_279007", trigger_count = 0 }
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
		gadgets = { 279004 },
		regions = { 279005 },
		triggers = { "ENTER_REGION_279005", "GADGET_CREATE_279007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 279001, 279002, 279003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_279006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_279005(context, evt)
	if evt.param1 ~= 279005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_279005(context, evt)
	-- 将configid为 279004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 279004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102279, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_279006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_279006(context, evt)
	-- 将configid为 279004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 279004, GadgetState.Default) then
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
function condition_EVENT_GADGET_CREATE_279007(context, evt)
	if 279004 ~= evt.param1 or GadgetState.ChestLocked ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_279007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102279, 2)
	
	return 0
end