-- 基础信息
local base_info = {
	group_id = 133103100
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
}

-- 装置
gadgets = {
	{ config_id = 100001, gadget_id = 70310089, pos = { x = 931.982, y = 379.956, z = 1591.212 }, rot = { x = 5.900, y = 174.912, z = 359.476 }, level = 24, area_id = 6 },
	{ config_id = 100002, gadget_id = 70310082, pos = { x = 915.387, y = 313.072, z = 1718.478 }, rot = { x = 0.000, y = 271.702, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 100003, gadget_id = 70310082, pos = { x = 928.858, y = 379.030, z = 1611.196 }, rot = { x = 0.000, y = 187.139, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 100004, gadget_id = 70310089, pos = { x = 930.113, y = 366.087, z = 1617.501 }, rot = { x = 274.821, y = 282.196, z = 296.990 }, level = 24, area_id = 6 },
	{ config_id = 100005, gadget_id = 70310082, pos = { x = 929.551, y = 378.760, z = 1577.523 }, rot = { x = 0.000, y = 200.819, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 100006, gadget_id = 70310089, pos = { x = 945.285, y = 350.933, z = 1621.862 }, rot = { x = 0.000, y = 245.757, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 100007, gadget_id = 70310089, pos = { x = 963.653, y = 349.568, z = 1631.852 }, rot = { x = 0.000, y = 237.616, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 100009, gadget_id = 70310089, pos = { x = 976.898, y = 347.907, z = 1647.866 }, rot = { x = 359.148, y = 188.823, z = 359.870 }, level = 24, area_id = 6 },
	{ config_id = 100010, gadget_id = 70310089, pos = { x = 975.109, y = 342.643, z = 1670.743 }, rot = { x = 0.000, y = 151.240, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 100011, gadget_id = 70310089, pos = { x = 966.522, y = 332.110, z = 1684.872 }, rot = { x = 271.156, y = 215.291, z = 326.266 }, level = 24, area_id = 6 },
	{ config_id = 100012, gadget_id = 70310089, pos = { x = 954.711, y = 314.810, z = 1695.940 }, rot = { x = 0.000, y = 123.939, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 100014, gadget_id = 70310089, pos = { x = 931.573, y = 312.940, z = 1710.109 }, rot = { x = 0.000, y = 130.004, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 100015, gadget_id = 70690011, pos = { x = 930.162, y = 343.017, z = 1618.264 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 100016, gadget_id = 70690012, pos = { x = 966.014, y = 308.210, z = 1684.880 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 100017, gadget_id = 70380002, pos = { x = 907.799, y = 305.008, z = 1717.820 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 100019, gadget_id = 70380002, pos = { x = 905.966, y = 305.247, z = 1719.761 }, rot = { x = 325.059, y = 105.353, z = 0.000 }, level = 24, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1100020, name = "QUEST_START_100020", event = EventType.EVENT_QUEST_START, source = "7150002", condition = "", action = "action_EVENT_QUEST_START_100020" },
	{ config_id = 1100021, name = "QUEST_FINISH_100021", event = EventType.EVENT_QUEST_FINISH, source = "7150001", condition = "", action = "action_EVENT_QUEST_FINISH_100021", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "killwindslamu", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1100022, name = "ANY_GADGET_DIE_100022", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_100022", action = "action_EVENT_ANY_GADGET_DIE_100022" },
		{ config_id = 1100023, name = "ANY_GADGET_DIE_100023", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_100023", action = "action_EVENT_ANY_GADGET_DIE_100023" },
		{ config_id = 1100024, name = "ANY_GADGET_DIE_100024", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_100024", action = "action_EVENT_ANY_GADGET_DIE_100024" },
		{ config_id = 1100025, name = "VARIABLE_CHANGE_100025", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_100025", action = "action_EVENT_VARIABLE_CHANGE_100025" },
		{ config_id = 1100027, name = "QUEST_START_100027", event = EventType.EVENT_QUEST_START, source = "7150005", condition = "", action = "action_EVENT_QUEST_START_100027", trigger_count = 0 }
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
		gadgets = { 100001, 100002, 100003, 100004, 100005, 100006, 100007, 100009, 100010, 100011, 100012, 100014, 100015, 100016, 100017, 100019 },
		regions = { },
		triggers = { "QUEST_START_100020", "QUEST_FINISH_100021" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
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

-- 触发操作
function action_EVENT_QUEST_START_100020(context, evt)
	-- 调用提示id为 1110361 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110361) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_100021(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103100, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103100, 3)
	
	return 0
end