-- 基础信息
local base_info = {
	group_id = 111101043
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 43001, monster_id = 20010401, pos = { x = 2302.727, y = 253.159, z = -1436.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 43002, monster_id = 20010301, pos = { x = 2298.455, y = 252.302, z = -1436.995 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 43003, monster_id = 20010301, pos = { x = 2300.845, y = 252.395, z = -1433.541 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 43004, gadget_id = 70211102, pos = { x = 2300.908, y = 252.688, z = -1435.605 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 6, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 43008, gadget_id = 70290009, pos = { x = 2300.755, y = 252.802, z = -1437.300 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43009, gadget_id = 70500000, pos = { x = 2300.755, y = 252.802, z = -1437.300 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3005, owner = 43008 },
	{ config_id = 43010, gadget_id = 70290009, pos = { x = 2303.259, y = 252.966, z = -1434.320 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43011, gadget_id = 70500000, pos = { x = 2303.259, y = 252.966, z = -1434.320 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3005, owner = 43010 },
	{ config_id = 43012, gadget_id = 70290009, pos = { x = 2298.255, y = 251.966, z = -1434.214 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 43013, gadget_id = 70500000, pos = { x = 2298.255, y = 251.966, z = -1434.214 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3005, owner = 43012 }
}

-- 区域
regions = {
	{ config_id = 43005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2301.012, y = 253.269, z = -1435.463 } }
}

-- 触发器
triggers = {
	{ config_id = 1043005, name = "ENTER_REGION_43005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_43005", action = "action_EVENT_ENTER_REGION_43005" },
	{ config_id = 1043006, name = "ANY_MONSTER_DIE_43006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_43006", action = "action_EVENT_ANY_MONSTER_DIE_43006" },
	{ config_id = 1043007, name = "GADGET_CREATE_43007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_43007", action = "action_EVENT_GADGET_CREATE_43007", trigger_count = 0 }
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
		gadgets = { 43004, 43008, 43009, 43010, 43011, 43012, 43013 },
		regions = { 43005 },
		triggers = { "ENTER_REGION_43005", "GADGET_CREATE_43007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 43001, 43002, 43003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_43006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_43005(context, evt)
	if evt.param1 ~= 43005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_43005(context, evt)
	-- 将configid为 43004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 43004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101043, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_43006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_43006(context, evt)
	-- 将configid为 43004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 43004, GadgetState.Default) then
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
function condition_EVENT_GADGET_CREATE_43007(context, evt)
	if 43004 ~= evt.param1 or GadgetState.ChestLocked ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_43007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101043, 2)
	
	return 0
end