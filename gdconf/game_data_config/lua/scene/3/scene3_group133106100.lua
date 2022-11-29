-- 基础信息
local base_info = {
	group_id = 133106100
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 100001, monster_id = 20011001, pos = { x = -750.300, y = 194.951, z = 767.321 }, rot = { x = 0.000, y = 170.817, z = 0.000 }, level = 28, drop_id = 1000100, area_id = 8 },
	{ config_id = 100002, monster_id = 20011001, pos = { x = -748.800, y = 194.951, z = 765.521 }, rot = { x = 0.000, y = 170.817, z = 0.000 }, level = 28, drop_id = 1000100, area_id = 8 },
	{ config_id = 100003, monster_id = 20011001, pos = { x = -751.900, y = 194.951, z = 764.120 }, rot = { x = 0.000, y = 170.817, z = 0.000 }, level = 28, drop_id = 1000100, area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 100004, gadget_id = 70211102, pos = { x = -750.280, y = 191.840, z = 765.198 }, rot = { x = 358.831, y = 170.833, z = 358.376 }, level = 26, drop_tag = "解谜低级璃月", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 }
}

-- 区域
regions = {
	{ config_id = 100005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -750.177, y = 192.520, z = 765.340 }, area_id = 8 }
}

-- 触发器
triggers = {
	{ config_id = 1100005, name = "ENTER_REGION_100005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_100005", action = "action_EVENT_ENTER_REGION_100005" },
	{ config_id = 1100006, name = "ANY_MONSTER_DIE_100006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_100006", action = "action_EVENT_ANY_MONSTER_DIE_100006" },
	{ config_id = 1100007, name = "GADGET_CREATE_100007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_100007", action = "action_EVENT_GADGET_CREATE_100007", trigger_count = 0 }
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
		gadgets = { 100004 },
		regions = { 100005 },
		triggers = { "ENTER_REGION_100005", "GADGET_CREATE_100007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 100001, 100002, 100003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_100006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_100005(context, evt)
	if evt.param1 ~= 100005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_100005(context, evt)
	-- 将configid为 100004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 100004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106100, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_100006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_100006(context, evt)
	-- 将configid为 100004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 100004, GadgetState.Default) then
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
function condition_EVENT_GADGET_CREATE_100007(context, evt)
	if 100004 ~= evt.param1 or GadgetState.ChestLocked ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_100007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106100, 2)
	
	return 0
end