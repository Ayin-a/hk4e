-- 基础信息
local base_info = {
	group_id = 155005086
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
	{ config_id = 86001, gadget_id = 70290264, pos = { x = 584.260, y = 210.644, z = 624.891 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 86002, gadget_id = 70290236, pos = { x = 584.000, y = 210.600, z = 625.000 }, rot = { x = 346.686, y = 131.965, z = 356.712 }, level = 36, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 86003, gadget_id = 70290259, pos = { x = 583.929, y = 1936.930, z = 625.038 }, rot = { x = 346.686, y = 131.965, z = 356.712 }, level = 36, state = GadgetState.GearStart, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 86004, gadget_id = 70290264, pos = { x = 584.210, y = 1936.635, z = 624.819 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 刷新的时候切传送门状态
	{ config_id = 1086005, name = "GROUP_REFRESH_86005", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_86005", trigger_count = 0 },
	-- 加载的时候切传送门状态
	{ config_id = 1086006, name = "GROUP_LOAD_86006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_86006", trigger_count = 0 }
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
		gadgets = { 86002, 86003 },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 86001, 86002, 86003, 86004 },
		regions = { },
		triggers = { "GROUP_REFRESH_86005", "GROUP_LOAD_86006" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_REFRESH_86005(context, evt)
	-- 将configid为 86002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 86002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_86006(context, evt)
	-- 将configid为 86002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 86002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end