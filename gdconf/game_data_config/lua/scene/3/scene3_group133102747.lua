-- 基础信息
local base_info = {
	group_id = 133102747
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 747002, monster_id = 25030201, pos = { x = 2013.881, y = 187.790, z = 821.593 }, rot = { x = 0.000, y = 97.717, z = 0.000 }, level = 18, drop_tag = "盗宝团", area_id = 5 },
	{ config_id = 747003, monster_id = 25020201, pos = { x = 2013.546, y = 187.790, z = 830.481 }, rot = { x = 0.000, y = 151.981, z = 0.000 }, level = 18, drop_tag = "盗宝团", area_id = 5 },
	{ config_id = 747004, monster_id = 25020201, pos = { x = 2012.844, y = 187.798, z = 813.098 }, rot = { x = 358.622, y = 54.801, z = 4.250 }, level = 18, drop_tag = "盗宝团", area_id = 5 },
	{ config_id = 747005, monster_id = 25010501, pos = { x = 2032.703, y = 188.621, z = 825.094 }, rot = { x = 0.000, y = 279.351, z = 0.000 }, level = 18, drop_tag = "盗宝团", area_id = 5 },
	{ config_id = 747006, monster_id = 25010201, pos = { x = 2022.967, y = 187.790, z = 827.026 }, rot = { x = 0.000, y = 206.308, z = 0.000 }, level = 18, drop_tag = "盗宝团", area_id = 5 },
	{ config_id = 747007, monster_id = 25010201, pos = { x = 2023.272, y = 188.318, z = 816.498 }, rot = { x = 4.990, y = 323.966, z = 0.786 }, level = 18, drop_tag = "盗宝团", area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 747001, shape = RegionShape.SPHERE, radius = 15, pos = { x = 2029.872, y = 189.281, z = 822.798 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1747001, name = "ENTER_REGION_747001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_747001", action = "action_EVENT_ENTER_REGION_747001" }
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
		regions = { 747001 },
		triggers = { "ENTER_REGION_747001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 747002, 747003, 747004, 747005, 747006, 747007 },
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
function condition_EVENT_ENTER_REGION_747001(context, evt)
	if evt.param1 ~= 747001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_747001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102747, 2)
	
	-- 调用提示id为 31050214 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31050214) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end