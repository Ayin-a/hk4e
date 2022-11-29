-- 基础信息
local base_info = {
	group_id = 220031003
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
	{ config_id = 3001, gadget_id = 70350020, pos = { x = 83.944, y = 42.581, z = 111.953 }, rot = { x = 288.786, y = 30.737, z = 133.819 }, level = 1 },
	{ config_id = 3002, gadget_id = 70350020, pos = { x = 83.147, y = 39.751, z = 127.657 }, rot = { x = 281.208, y = 10.626, z = 17.825 }, level = 1 },
	{ config_id = 3003, gadget_id = 70350030, pos = { x = 136.945, y = 40.156, z = 126.390 }, rot = { x = 19.174, y = 280.648, z = 4.466 }, level = 1 },
	{ config_id = 3004, gadget_id = 70220013, pos = { x = 52.452, y = 42.016, z = 113.414 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3005, gadget_id = 70220013, pos = { x = 51.244, y = 42.016, z = 111.065 }, rot = { x = 0.000, y = 329.318, z = 0.000 }, level = 1 },
	{ config_id = 3006, gadget_id = 70350029, pos = { x = 83.601, y = 39.517, z = 111.899 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3007, gadget_id = 70350030, pos = { x = 136.764, y = 40.027, z = 120.736 }, rot = { x = 271.417, y = 41.018, z = 359.657 }, level = 1 },
	{ config_id = 3008, gadget_id = 70350030, pos = { x = 138.177, y = 39.776, z = 123.384 }, rot = { x = 292.247, y = 98.717, z = 45.862 }, level = 1 },
	{ config_id = 3009, gadget_id = 70220025, pos = { x = 51.436, y = 42.138, z = 111.385 }, rot = { x = 273.716, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3010, gadget_id = 70310001, pos = { x = 148.270, y = 39.590, z = 121.226 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3011, gadget_id = 70350002, pos = { x = 174.144, y = 42.016, z = 120.935 }, rot = { x = 0.000, y = 269.149, z = 0.000 }, level = 1 },
	{ config_id = 3013, gadget_id = 70900201, pos = { x = 178.420, y = 39.517, z = 121.972 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 3012, shape = RegionShape.CUBIC, size = { x = 5.000, y = 30.000, z = 30.000 }, pos = { x = 154.709, y = 41.505, z = 120.023 } }
}

-- 触发器
triggers = {
	{ config_id = 1003012, name = "ENTER_REGION_3012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3012", action = "action_EVENT_ENTER_REGION_3012", trigger_count = 0 }
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
		gadgets = { 3001, 3002, 3003, 3004, 3005, 3006, 3007, 3008, 3009, 3010, 3011 },
		regions = { 3012 },
		triggers = { "ENTER_REGION_3012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 3013 },
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
function condition_EVENT_ENTER_REGION_3012(context, evt)
	if evt.param1 ~= 3012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3012(context, evt)
	-- 将configid为 3011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end