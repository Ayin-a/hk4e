-- 基础信息
local base_info = {
	group_id = 220129010
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
	{ config_id = 10002, gadget_id = 70800205, pos = { x = 316.171, y = 200.603, z = 50.039 }, rot = { x = 351.825, y = 30.279, z = 359.367 }, level = 1 },
	{ config_id = 10003, gadget_id = 70800107, pos = { x = 335.071, y = 246.163, z = 73.227 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 10004, gadget_id = 70800111, pos = { x = 323.437, y = 209.922, z = 464.431 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 10005, gadget_id = 70800111, pos = { x = 325.442, y = 210.405, z = 244.200 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 10001, shape = RegionShape.SPHERE, radius = 35, pos = { x = 321.042, y = 199.981, z = 70.923 } }
}

-- 触发器
triggers = {
	{ config_id = 1010001, name = "ENTER_REGION_10001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10001", action = "action_EVENT_ENTER_REGION_10001", trigger_count = 0 }
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
		gadgets = { 10002, 10003, 10004, 10005 },
		regions = { 10001 },
		triggers = { "ENTER_REGION_10001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_10001(context, evt)
	if evt.param1 ~= 10001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10001(context, evt)
	-- 立刻切换天气
	ScriptLib.EnterWeatherArea(context, 10085)
	
	return 0
end