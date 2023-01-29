-- 基础信息
local base_info = {
	group_id = 133314224
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 224002, monster_id = 20011501, pos = { x = -826.968, y = -137.236, z = 4906.695 }, rot = { x = 0.000, y = 225.070, z = 0.000 }, level = 32, drop_tag = "大史莱姆", area_id = 32 },
	{ config_id = 224003, monster_id = 20011401, pos = { x = -835.962, y = -137.965, z = 4902.241 }, rot = { x = 0.000, y = 39.480, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 32 },
	{ config_id = 224004, monster_id = 20011401, pos = { x = -837.326, y = -137.430, z = 4904.515 }, rot = { x = 0.000, y = 129.776, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 224001, shape = RegionShape.SPHERE, radius = 4, pos = { x = -833.818, y = -136.521, z = 4904.897 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1224001, name = "ENTER_REGION_224001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_224001", action = "action_EVENT_ENTER_REGION_224001" }
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
		gadgets = { },
		regions = { 224001 },
		triggers = { "ENTER_REGION_224001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 224002, 224003, 224004 },
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
function condition_EVENT_ENTER_REGION_224001(context, evt)
	if evt.param1 ~= 224001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_224001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133314224, 2)
	
	return 0
end