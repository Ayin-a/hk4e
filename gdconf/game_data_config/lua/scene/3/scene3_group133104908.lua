-- 基础信息
local base_info = {
	group_id = 133104908
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 908004, monster_id = 21020201, pos = { x = 439.659, y = 207.929, z = 349.532 }, rot = { x = 0.000, y = 321.991, z = 0.000 }, level = 19, drop_id = 1000210, affix = { 1008, 1901 }, isElite = true, pose_id = 401, area_id = 9 },
	{ config_id = 908005, monster_id = 21010601, pos = { x = 432.984, y = 208.237, z = 353.846 }, rot = { x = 0.000, y = 294.214, z = 0.000 }, level = 19, drop_id = 1000210, disableWander = true, affix = { 1901 }, pose_id = 9016, area_id = 9 },
	{ config_id = 908006, monster_id = 21010601, pos = { x = 431.729, y = 208.465, z = 356.854 }, rot = { x = 0.000, y = 213.760, z = 0.000 }, level = 19, drop_id = 1000210, disableWander = true, affix = { 1901 }, pose_id = 9016, area_id = 9 },
	{ config_id = 908007, monster_id = 21011201, pos = { x = 437.355, y = 207.792, z = 352.576 }, rot = { x = 0.000, y = 358.784, z = 0.000 }, level = 19, drop_id = 1000100, area_id = 9 },
	{ config_id = 908008, monster_id = 21011201, pos = { x = 430.144, y = 208.944, z = 350.159 }, rot = { x = 0.000, y = 56.322, z = 0.000 }, level = 19, drop_id = 1000100, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 908001, gadget_id = 70300093, pos = { x = 431.265, y = 208.644, z = 354.300 }, rot = { x = 352.195, y = 323.049, z = 347.774 }, level = 19, area_id = 9 },
	{ config_id = 908002, gadget_id = 70210102, pos = { x = 431.444, y = 208.522, z = 356.239 }, rot = { x = 0.000, y = 358.784, z = 0.000 }, level = 16, chest_drop_id = 1000210, drop_count = 1, area_id = 9 },
	{ config_id = 908003, gadget_id = 70210102, pos = { x = 430.983, y = 208.789, z = 352.718 }, rot = { x = 0.000, y = 358.784, z = 0.000 }, level = 16, chest_drop_id = 1000210, drop_count = 1, area_id = 9 },
	{ config_id = 908009, gadget_id = 70300083, pos = { x = 434.935, y = 207.918, z = 349.760 }, rot = { x = 0.000, y = 34.723, z = 0.000 }, level = 19, area_id = 9 }
}

-- 区域
regions = {
	{ config_id = 908010, shape = RegionShape.SPHERE, radius = 30, pos = { x = 435.036, y = 207.935, z = 351.645 }, area_id = 9 }
}

-- 触发器
triggers = {
	{ config_id = 1908010, name = "ENTER_REGION_908010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_908010", action = "action_EVENT_ENTER_REGION_908010" }
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
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 908004, 908005, 908006, 908007, 908008 },
		gadgets = { 908001, 908002, 908003, 908009 },
		regions = { 908010 },
		triggers = { "ENTER_REGION_908010" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_908010(context, evt)
	if evt.param1 ~= 908010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_908010(context, evt)
	-- 调用提示id为 1110092 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110092) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end