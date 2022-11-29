-- 基础信息
local base_info = {
	group_id = 133301383
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 383003, monster_id = 21010401, pos = { x = -486.919, y = 224.685, z = 3163.074 }, rot = { x = 0.000, y = 39.629, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013, area_id = 22 },
	{ config_id = 383004, monster_id = 21010901, pos = { x = -491.590, y = 222.784, z = 3174.922 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 22 },
	{ config_id = 383005, monster_id = 21010501, pos = { x = -490.363, y = 219.988, z = 3193.563 }, rot = { x = 0.000, y = 332.114, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", area_id = 22 },
	{ config_id = 383009, monster_id = 28061402, pos = { x = -501.338, y = 227.067, z = 3173.159 }, rot = { x = 0.000, y = 86.144, z = 0.000 }, level = 33, drop_tag = "驮兽丘丘人", disableWander = true, pose_id = 1, area_id = 22 },
	{ config_id = 383010, monster_id = 21011001, pos = { x = -499.134, y = 223.369, z = 3181.158 }, rot = { x = 0.000, y = 254.781, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 383001, gadget_id = 70310006, pos = { x = -489.905, y = 221.121, z = 3177.579 }, rot = { x = 10.593, y = 8.255, z = 352.281 }, level = 33, area_id = 22 },
	{ config_id = 383002, gadget_id = 70220026, pos = { x = -492.532, y = 222.565, z = 3172.820 }, rot = { x = 13.357, y = 0.623, z = 344.828 }, level = 33, area_id = 22 },
	{ config_id = 383006, gadget_id = 70300086, pos = { x = -495.468, y = 221.459, z = 3183.519 }, rot = { x = 14.958, y = 0.001, z = 359.607 }, level = 33, area_id = 22 },
	{ config_id = 383007, gadget_id = 70300086, pos = { x = -490.254, y = 222.819, z = 3169.877 }, rot = { x = 354.795, y = 359.555, z = 357.570 }, level = 33, area_id = 22 },
	{ config_id = 383008, gadget_id = 70300086, pos = { x = -504.788, y = 224.152, z = 3185.441 }, rot = { x = 354.677, y = 358.108, z = 10.912 }, level = 33, area_id = 22 },
	{ config_id = 383011, gadget_id = 70220026, pos = { x = -490.740, y = 222.425, z = 3172.321 }, rot = { x = 349.003, y = 240.299, z = 348.299 }, level = 33, area_id = 22 },
	{ config_id = 383012, gadget_id = 70300088, pos = { x = -482.110, y = 222.834, z = 3167.304 }, rot = { x = 0.000, y = 133.318, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 383013, gadget_id = 70300088, pos = { x = -502.689, y = 225.179, z = 3180.205 }, rot = { x = 0.000, y = 351.932, z = 0.000 }, level = 33, area_id = 22 }
}

-- 区域
regions = {
	{ config_id = 383014, shape = RegionShape.SPHERE, radius = 50, pos = { x = -501.622, y = 224.641, z = 3180.711 }, area_id = 22 }
}

-- 触发器
triggers = {
	{ config_id = 1383014, name = "ENTER_REGION_383014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_383014", action = "action_EVENT_ENTER_REGION_383014" }
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
		monsters = { 383004, 383005, 383010 },
		gadgets = { 383001, 383002, 383006, 383007, 383008, 383011, 383012, 383013 },
		regions = { 383014 },
		triggers = { "ENTER_REGION_383014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 383003, 383009 },
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
function condition_EVENT_ENTER_REGION_383014(context, evt)
	if evt.param1 ~= 383014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_383014(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301383, 2)
	
	return 0
end