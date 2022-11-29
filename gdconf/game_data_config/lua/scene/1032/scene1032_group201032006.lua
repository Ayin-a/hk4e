-- 基础信息
local base_info = {
	group_id = 201032006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6001, monster_id = 21020201, pos = { x = -66.260, y = 279.688, z = -181.093 }, rot = { x = 0.000, y = 223.177, z = 0.000 }, level = 1, affix = { 1101 } },
	{ config_id = 6002, monster_id = 21010501, pos = { x = -68.620, y = 279.604, z = -195.472 }, rot = { x = 0.000, y = 21.789, z = 0.000 }, level = 1, disableWander = true, affix = { 1101 } },
	{ config_id = 6003, monster_id = 21011001, pos = { x = -81.528, y = 279.688, z = -183.963 }, rot = { x = 0.000, y = 96.529, z = 0.000 }, level = 1, disableWander = true, affix = { 1101 } },
	{ config_id = 6004, monster_id = 21010701, pos = { x = -61.793, y = 279.579, z = -188.255 }, rot = { x = 0.000, y = 257.466, z = 0.000 }, level = 1, affix = { 1101 } },
	{ config_id = 6005, monster_id = 21010701, pos = { x = -73.452, y = 279.579, z = -177.348 }, rot = { x = 0.000, y = 201.716, z = 0.000 }, level = 1, affix = { 1101 } },
	{ config_id = 6007, monster_id = 21030201, pos = { x = -73.859, y = 279.579, z = -190.188 }, rot = { x = 0.000, y = 28.508, z = 0.000 }, level = 1, disableWander = true, affix = { 1101 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1006006, name = "ANY_MONSTER_DIE_6006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6006", action = "action_EVENT_ANY_MONSTER_DIE_6006" }
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
		monsters = { 6001, 6002, 6003, 6004, 6005, 6007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_6006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6006(context, evt)
	-- 调用提示id为 400003 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201032007, 2)
	
	return 0
end