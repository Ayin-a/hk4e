-- 基础信息
local base_info = {
	group_id = 166001514
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 514001, monster_id = 20011501, pos = { x = 380.082, y = 176.154, z = 992.019 }, rot = { x = 0.000, y = 177.852, z = 0.000 }, level = 36, drop_tag = "大史莱姆", area_id = 300 },
	{ config_id = 514002, monster_id = 20011401, pos = { x = 376.514, y = 174.912, z = 1000.294 }, rot = { x = 0.000, y = 177.852, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 300 },
	{ config_id = 514003, monster_id = 20011401, pos = { x = 383.138, y = 173.734, z = 997.107 }, rot = { x = 0.000, y = 177.852, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 514005, gadget_id = 70290324, pos = { x = 375.715, y = 174.761, z = 988.080 }, rot = { x = 342.329, y = 323.757, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 514006, gadget_id = 70290323, pos = { x = 385.564, y = 174.155, z = 997.933 }, rot = { x = 0.000, y = 0.000, z = 12.900 }, level = 36, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 514004, shape = RegionShape.SPHERE, radius = 20, pos = { x = 379.845, y = 173.590, z = 997.578 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1514004, name = "ENTER_REGION_514004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_514004", action = "action_EVENT_ENTER_REGION_514004" }
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
		gadgets = { 514005, 514006 },
		regions = { 514004 },
		triggers = { "ENTER_REGION_514004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 514001, 514002, 514003 },
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
function condition_EVENT_ENTER_REGION_514004(context, evt)
	if evt.param1 ~= 514004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_514004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001514, 2)
	
	return 0
end