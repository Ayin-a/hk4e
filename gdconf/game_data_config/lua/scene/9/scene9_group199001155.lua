-- 基础信息
local base_info = {
	group_id = 199001155
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
	{ config_id = 155001, gadget_id = 70211111, pos = { x = 849.247, y = 117.842, z = 346.314 }, rot = { x = 4.675, y = 358.096, z = 349.674 }, level = 16, drop_tag = "解谜中级群岛", isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 1 }, area_id = 402 },
	{ config_id = 155002, gadget_id = 70360024, pos = { x = 805.199, y = 226.718, z = 305.052 }, rot = { x = 0.000, y = 46.074, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 155004, gadget_id = 70690001, pos = { x = 849.253, y = 200.000, z = 346.511 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 155005, gadget_id = 70690001, pos = { x = 849.253, y = 188.000, z = 346.511 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 155006, gadget_id = 70690001, pos = { x = 849.253, y = 176.000, z = 346.511 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 155007, gadget_id = 70690001, pos = { x = 849.253, y = 164.000, z = 346.511 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 155008, gadget_id = 70690001, pos = { x = 849.253, y = 152.000, z = 346.511 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 155009, gadget_id = 70690001, pos = { x = 849.253, y = 140.000, z = 346.511 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 155010, gadget_id = 70690001, pos = { x = 849.253, y = 128.000, z = 346.511 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 155011, gadget_id = 70350277, pos = { x = 808.012, y = 226.730, z = 307.557 }, rot = { x = 0.000, y = 46.949, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 155013, gadget_id = 70690001, pos = { x = 849.253, y = 212.000, z = 346.511 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 }
}

-- 区域
regions = {
	{ config_id = 155003, shape = RegionShape.SPHERE, radius = 3, pos = { x = 805.199, y = 227.718, z = 305.052 }, area_id = 402 }
}

-- 触发器
triggers = {
	{ config_id = 1155003, name = "ENTER_REGION_155003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_155003", action = "action_EVENT_ENTER_REGION_155003", trigger_count = 0 },
	{ config_id = 1155012, name = "GADGET_STATE_CHANGE_155012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_155012", action = "action_EVENT_GADGET_STATE_CHANGE_155012" }
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
	end_suite = 3,
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
		gadgets = { 155001, 155002, 155011 },
		regions = { 155003 },
		triggers = { "ENTER_REGION_155003", "GADGET_STATE_CHANGE_155012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 155004, 155005, 155006, 155007, 155008, 155009, 155010, 155013 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
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

-- 触发条件
function condition_EVENT_ENTER_REGION_155003(context, evt)
	if evt.param1 ~= 155003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_155003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001155, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_155012(context, evt)
	if 155001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_155012(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 199001155, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end