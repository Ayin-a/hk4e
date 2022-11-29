-- 基础信息
local base_info = {
	group_id = 166001383
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 383001, monster_id = 26060201, pos = { x = 1120.439, y = 713.000, z = 371.638 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "雷萤", area_id = 300 },
	{ config_id = 383002, monster_id = 26060201, pos = { x = 1121.927, y = 713.000, z = 370.413 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "雷萤", area_id = 300 },
	{ config_id = 383003, monster_id = 26060201, pos = { x = 1118.957, y = 713.000, z = 370.505 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "雷萤", area_id = 300 },
	{ config_id = 383012, monster_id = 28010302, pos = { x = 1117.083, y = 722.803, z = 337.206 }, rot = { x = 0.000, y = 313.008, z = 0.000 }, level = 36, drop_tag = "采集动物", disableWander = true, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 383005, gadget_id = 70310004, pos = { x = 1113.508, y = 715.026, z = 357.992 }, rot = { x = 3.130, y = 1.114, z = 345.930 }, level = 36, area_id = 300 },
	{ config_id = 383006, gadget_id = 70710037, pos = { x = 1112.134, y = 715.356, z = 358.512 }, rot = { x = 352.898, y = 326.866, z = 359.048 }, level = 36, area_id = 300 },
	{ config_id = 383007, gadget_id = 70710347, pos = { x = 1113.759, y = 715.327, z = 355.870 }, rot = { x = 34.732, y = 240.908, z = 0.001 }, level = 36, area_id = 300 },
	{ config_id = 383008, gadget_id = 70290001, pos = { x = 1124.435, y = 712.906, z = 367.590 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 383009, gadget_id = 70500000, pos = { x = 1124.452, y = 713.475, z = 367.991 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 3002, owner = 383008, area_id = 300 },
	{ config_id = 383010, gadget_id = 70500000, pos = { x = 1124.370, y = 713.761, z = 367.194 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 3002, owner = 383008, area_id = 300 },
	{ config_id = 383011, gadget_id = 70500000, pos = { x = 1124.703, y = 714.173, z = 367.487 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 3002, owner = 383008, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 383004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1120.430, y = 713.000, z = 370.436 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1383004, name = "ENTER_REGION_383004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_383004", action = "action_EVENT_ENTER_REGION_383004" }
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
		monsters = { 383012 },
		gadgets = { 383005, 383006, 383007, 383008, 383009, 383010, 383011 },
		regions = { 383004 },
		triggers = { "ENTER_REGION_383004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 383001, 383002, 383003 },
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
function condition_EVENT_ENTER_REGION_383004(context, evt)
	if evt.param1 ~= 383004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_383004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001383, 2)
	
	return 0
end