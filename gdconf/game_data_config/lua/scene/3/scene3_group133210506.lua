-- 基础信息
local base_info = {
	group_id = 133210506
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
	{ config_id = 506001, gadget_id = 70290096, pos = { x = -3695.556, y = 200.880, z = -1382.865 }, rot = { x = 358.056, y = 30.391, z = 5.070 }, level = 30, persistent = true, area_id = 17 },
	{ config_id = 506002, gadget_id = 70290158, pos = { x = -3688.811, y = 201.378, z = -1380.293 }, rot = { x = 5.076, y = 278.503, z = 356.255 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 17 },
	{ config_id = 506003, gadget_id = 70290158, pos = { x = -3697.544, y = 200.497, z = -1388.648 }, rot = { x = 3.066, y = 163.993, z = 354.488 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 17 },
	{ config_id = 506006, gadget_id = 70211102, pos = { x = -3690.229, y = 203.111, z = -1385.590 }, rot = { x = 4.179, y = 322.652, z = 346.449 }, level = 26, drop_tag = "解谜低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 }
}

-- 区域
regions = {
	{ config_id = 506004, shape = RegionShape.SPHERE, radius = 8, pos = { x = -3692.896, y = 201.418, z = -1383.483 }, area_id = 17 }
}

-- 触发器
triggers = {
	{ config_id = 1506004, name = "ENTER_REGION_506004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_506004", action = "action_EVENT_ENTER_REGION_506004", trigger_count = 0 },
	{ config_id = 1506005, name = "GADGET_STATE_CHANGE_506005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_506005", action = "action_EVENT_GADGET_STATE_CHANGE_506005" }
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
		gadgets = { 506001, 506002, 506003, 506006 },
		regions = { 506004 },
		triggers = { "ENTER_REGION_506004", "GADGET_STATE_CHANGE_506005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_506004(context, evt)
	if evt.param1 ~= 506004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_506004(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7006, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_506005(context, evt)
	if 506001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_506005(context, evt)
	-- 将configid为 506006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 506006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end