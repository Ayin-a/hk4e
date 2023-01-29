-- 基础信息
local base_info = {
	group_id = 251019003
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
	{ config_id = 3001, gadget_id = 70350004, pos = { x = 45.204, y = 26.606, z = 16.155 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3002, gadget_id = 70310108, pos = { x = 46.245, y = 33.864, z = -0.544 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3004, gadget_id = 70350004, pos = { x = 31.523, y = 41.292, z = 28.141 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3005, gadget_id = 70350004, pos = { x = 62.072, y = 41.178, z = 17.548 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3006, gadget_id = 70350004, pos = { x = 56.556, y = 41.306, z = 33.408 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3007, gadget_id = 70290141, pos = { x = 61.517, y = 47.135, z = 23.874 }, rot = { x = 0.000, y = 180.000, z = 180.000 }, level = 1 },
	{ config_id = 3008, gadget_id = 70360002, pos = { x = 29.807, y = 34.565, z = 13.183 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 3003, shape = RegionShape.CUBIC, size = { x = 5.000, y = 10.000, z = 10.000 }, pos = { x = 46.118, y = 33.864, z = -3.986 } }
}

-- 触发器
triggers = {
	{ config_id = 1003003, name = "ENTER_REGION_3003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3003", action = "action_EVENT_ENTER_REGION_3003", trigger_count = 0 },
	{ config_id = 1003009, name = "GADGET_CREATE_3009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_3009", action = "action_EVENT_GADGET_CREATE_3009" },
	{ config_id = 1003010, name = "SELECT_OPTION_3010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3010", action = "action_EVENT_SELECT_OPTION_3010" }
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
		gadgets = { 3001, 3004, 3005, 3006, 3007, 3008 },
		regions = { 3003 },
		triggers = { "ENTER_REGION_3003", "GADGET_CREATE_3009", "SELECT_OPTION_3010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_3003(context, evt)
	if evt.param1 ~= 3003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3003(context, evt)
	ScriptLib.TransPlayerToPos(context, {uid_list = {evt.uid}, pos = {x=-43.67, y= 20.71, z=68.10}, radius = 0.1, rot = {x=0, y=180, z=0}}) 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_3009(context, evt)
	if 3008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_3009(context, evt)
	ScriptLib.SetWorktopOptionsByGroupId(context, 251019003, 3008, {1})
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_3010(context, evt)
	-- 判断是gadgetid 3008 option_id 1
	if 3008 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3010(context, evt)
	ScriptLib.SetGroupGadgetStateByConfigId(context, 251019003, 3004, GadgetState.GearStart)
	
	ScriptLib.DelWorktopOptionByGroupId(context, 251019003, 3008, 1)
	
	ScriptLib.SetGroupGadgetStateByConfigId(context, 251019002, 2010, GadgetState.GearStart)
	
	return 0
end