-- 基础信息
local base_info = {
	group_id = 139999020
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 20001, monster_id = 25010201, pos = { x = 0.063, y = -0.066, z = -2.153 }, rot = { x = 0.000, y = 340.573, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, pose_id = 9003, area_id = 1 },
	{ config_id = 20002, monster_id = 25010201, pos = { x = 2.517, y = 0.287, z = 0.178 }, rot = { x = 0.000, y = 262.749, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, pose_id = 9003, area_id = 1 },
	{ config_id = 20003, monster_id = 25010201, pos = { x = 0.102, y = 0.326, z = 2.457 }, rot = { x = 0.000, y = 181.132, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, pose_id = 9003, area_id = 1 },
	{ config_id = 20004, monster_id = 25030301, pos = { x = 0.063, y = -0.066, z = -2.153 }, rot = { x = 0.000, y = 340.573, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, pose_id = 9003, area_id = 1 },
	{ config_id = 20005, monster_id = 25010701, pos = { x = 0.063, y = -0.066, z = -2.153 }, rot = { x = 0.000, y = 340.573, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, pose_id = 9003, area_id = 1 },
	{ config_id = 20006, monster_id = 25030301, pos = { x = 2.517, y = 0.287, z = 0.178 }, rot = { x = 0.000, y = 262.749, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, pose_id = 9003, area_id = 1 },
	{ config_id = 20007, monster_id = 25010501, pos = { x = -3.105, y = -0.069, z = -0.015 }, rot = { x = 0.000, y = 87.997, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, pose_id = 9002, area_id = 1 },
	{ config_id = 20008, monster_id = 25030301, pos = { x = 0.102, y = 0.326, z = 2.457 }, rot = { x = 0.000, y = 181.132, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, pose_id = 9003, area_id = 1 },
	{ config_id = 20009, monster_id = 25010701, pos = { x = 2.517, y = 0.287, z = 0.178 }, rot = { x = 0.000, y = 262.749, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, pose_id = 9003, area_id = 1 },
	{ config_id = 20010, monster_id = 25010701, pos = { x = 0.102, y = 0.326, z = 2.457 }, rot = { x = 0.000, y = 181.132, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, pose_id = 9003, area_id = 1 },
	{ config_id = 20013, monster_id = 25030201, pos = { x = 9.330, y = 1.721, z = 9.613 }, rot = { x = 0.000, y = 204.780, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, area_id = 1 },
	{ config_id = 20014, monster_id = 25030201, pos = { x = 6.094, y = 2.364, z = 10.320 }, rot = { x = 0.000, y = 218.853, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, area_id = 1 },
	{ config_id = 20015, monster_id = 25010501, pos = { x = 6.288, y = 1.795, z = 8.037 }, rot = { x = 0.000, y = 221.953, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 20012, gadget_id = 70210101, pos = { x = 0.115, y = 0.549, z = 0.244 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "搜刮点解谜武器蒙德", isOneoff = true, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 20017, shape = RegionShape.SPHERE, radius = 30, pos = { x = -3.584, y = 0.215, z = 4.606 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1020011, name = "ANY_MONSTER_DIE_20011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_20011", action = "action_EVENT_ANY_MONSTER_DIE_20011" },
	{ config_id = 1020016, name = "ANY_MONSTER_DIE_20016", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_20016", action = "action_EVENT_ANY_MONSTER_DIE_20016" },
	{ config_id = 1020017, name = "ENTER_REGION_20017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_20017", action = "action_EVENT_ENTER_REGION_20017" }
}

-- 变量
variables = {
	{ config_id = 1, name = "killmonster", value = 0, no_refresh = false }
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
	rand_suite = true
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
		monsters = { 20001, 20002, 20003, 20007 },
		gadgets = { 20012 },
		regions = { 20017 },
		triggers = { "ANY_MONSTER_DIE_20011", "ANY_MONSTER_DIE_20016", "ENTER_REGION_20017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 20004, 20006, 20007, 20008 },
		gadgets = { 20012 },
		regions = { 20017 },
		triggers = { "ANY_MONSTER_DIE_20011", "ANY_MONSTER_DIE_20016", "ENTER_REGION_20017" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 20005, 20007, 20009, 20010 },
		gadgets = { 20012 },
		regions = { 20017 },
		triggers = { "ANY_MONSTER_DIE_20011", "ANY_MONSTER_DIE_20016", "ENTER_REGION_20017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_20011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"killmonster"为1
	if ScriptLib.GetGroupVariableValue(context, "killmonster") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_20011(context, evt)
	-- 设置操作台选项
	
	    ScriptLib.FinishRandTask(context, 20, true)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_20016(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"killmonster"为0
	if ScriptLib.GetGroupVariableValue(context, "killmonster") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_20016(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 20013, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 20014, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 20015, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "killmonster" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "killmonster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_20017(context, evt)
	if evt.param1 ~= 20017 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_20017(context, evt)
	-- 调用提示id为 1110339 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110339) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end