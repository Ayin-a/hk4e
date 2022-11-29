-- 基础信息
local base_info = {
	group_id = 166001370
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 370001, monster_id = 20011401, pos = { x = 973.135, y = 750.217, z = 425.659 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 300 },
	{ config_id = 370002, monster_id = 20011401, pos = { x = 974.625, y = 750.131, z = 423.154 }, rot = { x = 0.000, y = 106.704, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 300 },
	{ config_id = 370003, monster_id = 20011401, pos = { x = 971.654, y = 750.105, z = 423.246 }, rot = { x = 0.000, y = 155.095, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 370005, gadget_id = 70290324, pos = { x = 969.984, y = 750.051, z = 425.546 }, rot = { x = 0.000, y = 0.000, z = 348.198 }, level = 36, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 370004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 973.127, y = 750.131, z = 423.177 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1370004, name = "ENTER_REGION_370004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_370004", action = "action_EVENT_ENTER_REGION_370004" }
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
		gadgets = { 370005 },
		regions = { 370004 },
		triggers = { "ENTER_REGION_370004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 370001, 370002, 370003 },
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
function condition_EVENT_ENTER_REGION_370004(context, evt)
	if evt.param1 ~= 370004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_370004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001370, 2)
	
	return 0
end