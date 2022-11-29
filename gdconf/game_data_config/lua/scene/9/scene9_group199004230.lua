-- 基础信息
local base_info = {
	group_id = 199004230
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 230001, monster_id = 20010801, pos = { x = -427.382, y = 120.064, z = -538.248 }, rot = { x = 0.000, y = 131.766, z = 0.000 }, level = 20, drop_tag = "史莱姆", area_id = 400 },
	{ config_id = 230002, monster_id = 20010801, pos = { x = -430.045, y = 120.064, z = -538.596 }, rot = { x = 0.000, y = 127.338, z = 0.000 }, level = 20, drop_tag = "史莱姆", area_id = 400 },
	{ config_id = 230003, monster_id = 20010801, pos = { x = -427.551, y = 120.064, z = -535.600 }, rot = { x = 0.000, y = 131.178, z = 0.000 }, level = 20, drop_tag = "史莱姆", area_id = 400 },
	{ config_id = 230005, monster_id = 20010901, pos = { x = -429.419, y = 120.000, z = -536.092 }, rot = { x = 0.000, y = 132.219, z = 0.000 }, level = 20, drop_tag = "大史莱姆", area_id = 400 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 230004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -424.913, y = 120.064, z = -539.396 }, area_id = 400 }
}

-- 触发器
triggers = {
	{ config_id = 1230004, name = "ENTER_REGION_230004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_230004", action = "action_EVENT_ENTER_REGION_230004" }
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
		regions = { 230004 },
		triggers = { "ENTER_REGION_230004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 230001, 230002, 230003, 230005 },
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
function condition_EVENT_ENTER_REGION_230004(context, evt)
	if evt.param1 ~= 230004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_230004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199004230, 2)
	
	return 0
end