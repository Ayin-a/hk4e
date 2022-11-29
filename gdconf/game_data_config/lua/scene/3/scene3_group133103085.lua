-- 基础信息
local base_info = {
	group_id = 133103085
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 85001, monster_id = 20011201, pos = { x = 740.146, y = 229.009, z = 1350.029 }, rot = { x = 0.000, y = 265.078, z = 0.000 }, level = 24, drop_tag = "史莱姆", area_id = 6 },
	{ config_id = 85002, monster_id = 20011201, pos = { x = 738.920, y = 228.660, z = 1347.560 }, rot = { x = 0.000, y = 265.078, z = 0.000 }, level = 24, drop_tag = "史莱姆", area_id = 6 },
	{ config_id = 85003, monster_id = 20011301, pos = { x = 742.575, y = 228.043, z = 1345.446 }, rot = { x = 0.000, y = 265.078, z = 0.000 }, level = 24, drop_tag = "大史莱姆", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 85004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 740.464, y = 228.456, z = 1346.739 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1085004, name = "ENTER_REGION_85004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_85004", action = "action_EVENT_ENTER_REGION_85004" }
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
		regions = { 85004 },
		triggers = { "ENTER_REGION_85004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 85001, 85002, 85003 },
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
function condition_EVENT_ENTER_REGION_85004(context, evt)
	if evt.param1 ~= 85004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_85004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103085, 2)
	
	return 0
end