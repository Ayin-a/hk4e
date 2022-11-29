-- 基础信息
local base_info = {
	group_id = 247007026
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
	{ config_id = 26001, gadget_id = 70211101, pos = { x = 52.874, y = 0.082, z = 231.927 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 21600008, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 26002, gadget_id = 70211101, pos = { x = 116.855, y = 0.124, z = 228.419 }, rot = { x = 0.000, y = 315.000, z = 0.000 }, level = 1, chest_drop_id = 21600008, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 26003, gadget_id = 70211101, pos = { x = 282.011, y = -9.954, z = 321.136 }, rot = { x = 0.000, y = 225.000, z = 0.000 }, level = 1, chest_drop_id = 21600008, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 26004, gadget_id = 70211101, pos = { x = 267.097, y = 3.760, z = 328.441 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, chest_drop_id = 21600008, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 26005, gadget_id = 70360283, pos = { x = 267.747, y = 7.643, z = 327.129 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 26006, gadget_id = 70360283, pos = { x = 272.617, y = 7.713, z = 327.159 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 26009, gadget_id = 70310154, pos = { x = 287.050, y = -8.433, z = 319.096 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 26010, gadget_id = 70360291, pos = { x = 270.317, y = -8.433, z = 319.096 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	-- 悬吊陷阱
	{ config_id = 26007, shape = RegionShape.CUBIC, size = { x = 5.000, y = 10.000, z = 5.000 }, pos = { x = 267.747, y = 7.643, z = 327.129 } },
	-- 悬吊陷阱
	{ config_id = 26008, shape = RegionShape.CUBIC, size = { x = 5.000, y = 10.000, z = 5.000 }, pos = { x = 272.617, y = 7.713, z = 327.159 } },
	-- 雷矢
	{ config_id = 26011, shape = RegionShape.CUBIC, size = { x = 20.000, y = 10.000, z = 4.500 }, pos = { x = 280.487, y = -7.917, z = 318.926 } }
}

-- 触发器
triggers = {
	-- 悬吊陷阱
	{ config_id = 1026007, name = "ENTER_REGION_26007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_26007", action = "action_EVENT_ENTER_REGION_26007" },
	-- 悬吊陷阱
	{ config_id = 1026008, name = "ENTER_REGION_26008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_26008", action = "action_EVENT_ENTER_REGION_26008" },
	-- 雷矢
	{ config_id = 1026011, name = "ENTER_REGION_26011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_26011", action = "action_EVENT_ENTER_REGION_26011", trigger_count = 0 }
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
		gadgets = { 26001, 26002, 26003, 26004, 26005, 26006, 26009, 26010 },
		regions = { 26007, 26008, 26011 },
		triggers = { "ENTER_REGION_26007", "ENTER_REGION_26008", "ENTER_REGION_26011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_26007(context, evt)
	if evt.param1 ~= 26007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_26007(context, evt)
	-- 将configid为 26005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 26005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_26008(context, evt)
	if evt.param1 ~= 26008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_26008(context, evt)
	-- 将configid为 26006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 26006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_26011(context, evt)
	if evt.param1 ~= 26011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_26011(context, evt)
	-- 将configid为 26009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 26009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end