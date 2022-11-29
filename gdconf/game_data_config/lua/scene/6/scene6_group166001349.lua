-- 基础信息
local base_info = {
	group_id = 166001349
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 349002, monster_id = 25010201, pos = { x = 1065.103, y = 915.565, z = 523.146 }, rot = { x = 0.000, y = 269.245, z = 0.000 }, level = 36, drop_tag = "盗宝团", area_id = 300 },
	{ config_id = 349003, monster_id = 25070101, pos = { x = 1062.133, y = 915.565, z = 523.238 }, rot = { x = 0.000, y = 76.758, z = 0.000 }, level = 36, drop_tag = "盗宝团", area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 349004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1063.605, y = 915.565, z = 523.169 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1349004, name = "ENTER_REGION_349004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_349004", action = "action_EVENT_ENTER_REGION_349004" }
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
		regions = { 349004 },
		triggers = { "ENTER_REGION_349004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 349002, 349003 },
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
function condition_EVENT_ENTER_REGION_349004(context, evt)
	if evt.param1 ~= 349004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_349004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001349, 2)
	
	return 0
end