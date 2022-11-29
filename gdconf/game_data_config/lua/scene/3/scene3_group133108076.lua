-- 基础信息
local base_info = {
	group_id = 133108076
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 76001, monster_id = 28020102, pos = { x = -113.118, y = 256.020, z = -144.074 }, rot = { x = 0.000, y = 189.005, z = 0.000 }, level = 19, drop_tag = "走兽", area_id = 7 },
	{ config_id = 76002, monster_id = 28020102, pos = { x = -128.141, y = 255.039, z = -138.209 }, rot = { x = 0.000, y = 153.405, z = 0.000 }, level = 18, drop_tag = "走兽", area_id = 7 },
	{ config_id = 76003, monster_id = 28020102, pos = { x = -110.090, y = 254.736, z = -124.599 }, rot = { x = 0.000, y = 199.884, z = 0.000 }, level = 19, drop_tag = "走兽", area_id = 7 },
	{ config_id = 76005, monster_id = 28030101, pos = { x = -128.773, y = 255.684, z = -166.094 }, rot = { x = 0.000, y = 106.507, z = 0.000 }, level = 18, drop_tag = "鸟类", pose_id = 901, area_id = 7 },
	{ config_id = 76006, monster_id = 28030101, pos = { x = -122.666, y = 256.194, z = -178.155 }, rot = { x = 0.000, y = 225.731, z = 0.000 }, level = 18, drop_tag = "鸟类", pose_id = 901, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 76004, shape = RegionShape.SPHERE, radius = 17.1, pos = { x = -117.325, y = 254.281, z = -128.902 }, area_id = 7 }
}

-- 触发器
triggers = {
	{ config_id = 1076004, name = "ENTER_REGION_76004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_76004", action = "action_EVENT_ENTER_REGION_76004" }
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
		regions = { 76004 },
		triggers = { "ENTER_REGION_76004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 76001, 76002, 76003, 76005, 76006 },
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
function condition_EVENT_ENTER_REGION_76004(context, evt)
	if evt.param1 ~= 76004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_76004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108076, 2)
	
	return 0
end