-- 基础信息
local base_info = {
	group_id = 199002179
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
	{ config_id = 179002, gadget_id = 70690011, pos = { x = 604.530, y = 190.144, z = -389.286 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 179003, gadget_id = 70690011, pos = { x = 604.530, y = 199.441, z = -367.442 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 179004, gadget_id = 70690011, pos = { x = 604.530, y = 206.590, z = -351.186 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 179005, gadget_id = 70690011, pos = { x = 604.530, y = 216.206, z = -341.490 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 179006, gadget_id = 70360001, pos = { x = 604.676, y = 196.601, z = -403.529 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 }
}

-- 区域
regions = {
	{ config_id = 179001, shape = RegionShape.SPHERE, radius = 5, pos = { x = 604.777, y = 200.611, z = -389.862 }, area_id = 401 }
}

-- 触发器
triggers = {
	{ config_id = 1179001, name = "ENTER_REGION_179001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_179001", action = "action_EVENT_ENTER_REGION_179001", trigger_count = 0 }
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
		gadgets = { 179006 },
		regions = { 179001 },
		triggers = { "ENTER_REGION_179001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 179002, 179003, 179004, 179005 },
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
function condition_EVENT_ENTER_REGION_179001(context, evt)
	if evt.param1 ~= 179001 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_179001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199002179, 2)
	
	return 0
end