-- 基础信息
local base_info = {
	group_id = 133315040
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 40001, monster_id = 25210303, pos = { x = -20.381, y = 247.997, z = 2911.105 }, rot = { x = 0.000, y = 52.980, z = 0.000 }, level = 27, drop_tag = "镀金旅团", disableWander = true, area_id = 20 },
	{ config_id = 40002, monster_id = 25210302, pos = { x = -22.347, y = 247.678, z = 2908.236 }, rot = { x = 0.000, y = 347.414, z = 0.000 }, level = 27, drop_tag = "镀金旅团", disableWander = true, pose_id = 9003, area_id = 20 },
	{ config_id = 40006, monster_id = 25210102, pos = { x = -93.430, y = 217.698, z = 2929.588 }, rot = { x = 0.000, y = 231.133, z = 0.000 }, level = 27, drop_tag = "镀金旅团", area_id = 20 },
	{ config_id = 40007, monster_id = 25210401, pos = { x = -99.446, y = 216.529, z = 2918.647 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "镀金旅团", area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 40005, shape = RegionShape.SPHERE, radius = 10, pos = { x = -104.617, y = 214.646, z = 2927.684 }, area_id = 20 }
}

-- 触发器
triggers = {
	{ config_id = 1040003, name = "MONSTER_BATTLE_40003", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_40003" },
	{ config_id = 1040004, name = "ANY_MONSTER_DIE_40004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_40004", action = "action_EVENT_ANY_MONSTER_DIE_40004" },
	{ config_id = 1040005, name = "ENTER_REGION_40005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_40005" }
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
		monsters = { 40001, 40002 },
		gadgets = { },
		regions = { 40005 },
		triggers = { "MONSTER_BATTLE_40003", "ENTER_REGION_40005" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 40006, 40007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_40004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_MONSTER_BATTLE_40003(context, evt)
	-- 调用提示id为 33150013 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33150013) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_40004(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133315040) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_40004(context, evt)
	-- 调用提示id为 33150015 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33150015) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_40005(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315040, 3)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133315039, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end