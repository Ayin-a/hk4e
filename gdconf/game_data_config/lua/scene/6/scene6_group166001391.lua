-- 基础信息
local base_info = {
	group_id = 166001391
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 391001, gadget_id = 70290212, pos = { x = 901.476, y = 717.108, z = 179.153 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, interact_id = 87, area_id = 300 },
	{ config_id = 391002, gadget_id = 70290218, pos = { x = 904.402, y = 716.808, z = 188.177 }, rot = { x = 0.000, y = 52.307, z = 0.000 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 300 },
	{ config_id = 391003, gadget_id = 70290218, pos = { x = 904.495, y = 716.479, z = 168.818 }, rot = { x = 0.000, y = 359.492, z = 0.000 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 300 },
	{ config_id = 391004, gadget_id = 70290218, pos = { x = 889.166, y = 717.318, z = 174.610 }, rot = { x = 354.795, y = 278.923, z = 352.903 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 300 },
	{ config_id = 391005, gadget_id = 70211101, pos = { x = 901.850, y = 717.002, z = 174.733 }, rot = { x = 352.174, y = 2.259, z = 355.265 }, level = 26, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1391006, name = "ANY_GADGET_DIE_391006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_391006", action = "action_EVENT_ANY_GADGET_DIE_391006" },
	{ config_id = 1391007, name = "GADGET_STATE_CHANGE_391007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_391007", action = "action_EVENT_GADGET_STATE_CHANGE_391007" }
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
		-- description = ,
		monsters = { },
		gadgets = { 391001 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_391006", "GADGET_STATE_CHANGE_391007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 391002, 391003, 391004 },
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
function condition_EVENT_ANY_GADGET_DIE_391006(context, evt)
	-- 判断指定group组剩余gadget数量是否是1 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 166001391}) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_391006(context, evt)
	-- 创建id为391005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 391005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_391007(context, evt)
	if 391001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_391007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001391, 2)
	
	return 0
end