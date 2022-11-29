-- 基础信息
local base_info = {
	group_id = 166001081
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
	{ config_id = 81001, npc_id = 2156, pos = { x = 980.988, y = 775.578, z = 320.769 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 300 }
}

-- 装置
gadgets = {
	{ config_id = 81003, gadget_id = 70360089, pos = { x = 980.947, y = 775.578, z = 320.660 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 81002, shape = RegionShape.CUBIC, size = { x = 50.000, y = 10.000, z = 50.000 }, pos = { x = 981.008, y = 775.671, z = 320.869 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1081002, name = "ENTER_REGION_81002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_81002" }
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
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 81003 },
		regions = { 81002 },
		triggers = { "ENTER_REGION_81002" },
		npcs = { 81001 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_81002(context, evt)
	-- 调用提示id为 60010190 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010190) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end