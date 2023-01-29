-- 基础信息
local base_info = {
	group_id = 133307369
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 369004, monster_id = 28060401, pos = { x = -1684.654, y = 6.732, z = 5644.881 }, rot = { x = 0.000, y = 285.199, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 32 },
	{ config_id = 369005, monster_id = 28060401, pos = { x = -1696.302, y = 7.131, z = 5643.877 }, rot = { x = 0.000, y = 54.866, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 32 },
	{ config_id = 369006, monster_id = 28060401, pos = { x = -1692.800, y = 7.379, z = 5648.913 }, rot = { x = 0.000, y = 147.660, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 369001, gadget_id = 70330256, pos = { x = -1684.867, y = 15.428, z = 5624.167 }, rot = { x = 0.000, y = 15.081, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 },
	{ config_id = 369002, gadget_id = 70330333, pos = { x = -1690.927, y = 6.763, z = 5644.751 }, rot = { x = 342.056, y = 309.412, z = 0.000 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
	{ config_id = 369003, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1684.234, y = 9.917, z = 5633.585 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1369003, name = "ENTER_REGION_369003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_369003", action = "action_EVENT_ENTER_REGION_369003" },
	{ config_id = 1369007, name = "GADGET_CREATE_369007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_369007", action = "action_EVENT_GADGET_CREATE_369007", trigger_count = 0 },
	{ config_id = 1369008, name = "SELECT_OPTION_369008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_369008", action = "action_EVENT_SELECT_OPTION_369008", trigger_count = 0 }
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
		gadgets = { 369001, 369002 },
		regions = { 369003 },
		triggers = { "ENTER_REGION_369003", "GADGET_CREATE_369007", "SELECT_OPTION_369008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 369004, 369005, 369006 },
		gadgets = { },
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

-- 设置指定gadget的state
function TLA_set_gadget_state_by_configid(context, evt, config_id, state)
	-- 将configid为 config_id 的物件更改为状态 state
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, config_id, state) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_369003(context, evt)
	if evt.param1 ~= 369003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_369003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133307369, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_369007(context, evt)
	if 369002 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_369007(context, evt)
	ScriptLib.SetWorktopOptionsByGroupId(context, 133307369, 369002, {439})
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_369008(context, evt)
	-- 判断是gadgetid 369002 option_id 439
	if 369002 ~= evt.param1 then
		return false	
	end
	
	if 439 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_369008(context, evt)
	TLA_set_gadget_state_by_configid(context, evt, 369001, GadgetState.Default)
	
	TLA_set_gadget_state_by_configid(context, evt, 369002, GadgetState.GearStart)
	
	ScriptLib.DelWorktopOptionByGroupId(context, 133307369, 369002, 439)
	
	return 0
end