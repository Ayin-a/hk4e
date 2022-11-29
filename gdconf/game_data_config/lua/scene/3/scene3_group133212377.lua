-- 基础信息
local base_info = {
	group_id = 133212377
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 377001, monster_id = 25080101, pos = { x = -3572.023, y = 200.354, z = -2482.516 }, rot = { x = 0.000, y = 154.157, z = 0.000 }, level = 27, drop_tag = "浪人武士", affix = { 1101 }, pose_id = 1, area_id = 13 },
	{ config_id = 377002, monster_id = 25080301, pos = { x = -3574.833, y = 200.059, z = -2479.559 }, rot = { x = 356.112, y = 133.540, z = 356.313 }, level = 27, drop_tag = "浪人武士", affix = { 1101 }, pose_id = 1, area_id = 13 },
	{ config_id = 377003, monster_id = 25080301, pos = { x = -3573.251, y = 200.221, z = -2477.153 }, rot = { x = 0.000, y = 153.019, z = 0.000 }, level = 27, drop_tag = "浪人武士", affix = { 1101 }, pose_id = 1, area_id = 13 },
	{ config_id = 377004, monster_id = 20011101, pos = { x = -3579.562, y = 200.000, z = -2522.089 }, rot = { x = 0.000, y = 53.521, z = 0.000 }, level = 27, drop_tag = "大史莱姆", area_id = 13 },
	{ config_id = 377005, monster_id = 20011001, pos = { x = -3578.459, y = 200.155, z = -2517.526 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 13 },
	{ config_id = 377006, monster_id = 20011001, pos = { x = -3575.707, y = 199.841, z = -2523.575 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 13 },
	{ config_id = 377007, monster_id = 20011001, pos = { x = -3576.440, y = 200.004, z = -2519.890 }, rot = { x = 0.000, y = 52.191, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 377008, shape = RegionShape.SPHERE, radius = 10, pos = { x = -3576.461, y = 200.000, z = -2520.929 }, area_id = 13 }
}

-- 触发器
triggers = {
	{ config_id = 1377008, name = "ENTER_REGION_377008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_377008", action = "action_EVENT_ENTER_REGION_377008" }
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
		monsters = { 377001, 377002, 377003 },
		gadgets = { },
		regions = { 377008 },
		triggers = { "ENTER_REGION_377008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 377004, 377005, 377006, 377007 },
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
function condition_EVENT_ENTER_REGION_377008(context, evt)
	if evt.param1 ~= 377008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_377008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212377, 2)
	
	return 0
end