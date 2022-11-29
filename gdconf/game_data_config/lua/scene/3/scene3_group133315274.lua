-- 基础信息
local base_info = {
	group_id = 133315274
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 274001, monster_id = 28030313, pos = { x = 355.960, y = 185.558, z = 2268.849 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 20 },
	{ config_id = 274002, monster_id = 28030313, pos = { x = 342.851, y = 187.456, z = 2254.290 }, rot = { x = 0.000, y = 307.863, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 20 },
	{ config_id = 274003, monster_id = 28020313, pos = { x = 324.134, y = 183.898, z = 2258.648 }, rot = { x = 0.000, y = 353.237, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 20 },
	{ config_id = 274004, monster_id = 28020313, pos = { x = 367.397, y = 182.557, z = 2271.378 }, rot = { x = 0.000, y = 43.919, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 274011, gadget_id = 70220103, pos = { x = 294.172, y = 192.028, z = 2258.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 }
}

-- 区域
regions = {
	{ config_id = 274012, shape = RegionShape.SPHERE, radius = 40, pos = { x = 340.739, y = 182.530, z = 2271.029 }, area_id = 20 }
}

-- 触发器
triggers = {
	{ config_id = 1274012, name = "ENTER_REGION_274012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_274012", action = "action_EVENT_ENTER_REGION_274012" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 274005, monster_id = 28050106, pos = { x = 346.211, y = 185.814, z = 2260.956 }, rot = { x = 0.000, y = 287.032, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 20 },
		{ config_id = 274006, monster_id = 28050106, pos = { x = 352.869, y = 185.395, z = 2261.954 }, rot = { x = 0.000, y = 166.765, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 20 },
		{ config_id = 274007, monster_id = 28050106, pos = { x = 347.231, y = 186.360, z = 2266.248 }, rot = { x = 0.000, y = 228.522, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 20 },
		{ config_id = 274008, monster_id = 28010301, pos = { x = 328.734, y = 182.567, z = 2258.852 }, rot = { x = 0.000, y = 258.560, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 20 },
		{ config_id = 274009, monster_id = 28010301, pos = { x = 309.398, y = 182.500, z = 2271.199 }, rot = { x = 0.000, y = 227.098, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 20 },
		{ config_id = 274010, monster_id = 28010301, pos = { x = 359.902, y = 182.516, z = 2273.092 }, rot = { x = 0.000, y = 0.841, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 20 }
	}
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
		gadgets = { 274011 },
		regions = { 274012 },
		triggers = { "ENTER_REGION_274012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 274001, 274002, 274003, 274004 },
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
function condition_EVENT_ENTER_REGION_274012(context, evt)
	if evt.param1 ~= 274012 then return false end
	
	-- 判断是区域274012
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 274012 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_274012(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315274, 2)
	
	return 0
end