-- 基础信息
local base_info = {
	group_id = 240050010
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 10001, monster_id = 25080301, pos = { x = 24.894, y = 65.722, z = -88.117 }, rot = { x = 0.000, y = 27.183, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 1003 },
	{ config_id = 10002, monster_id = 25080201, pos = { x = 24.959, y = 65.719, z = -79.116 }, rot = { x = 0.000, y = 190.751, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 1004 },
	{ config_id = 10004, monster_id = 23010101, pos = { x = 26.774, y = 65.722, z = -85.989 }, rot = { x = 0.000, y = 240.209, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9011 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 10005, shape = RegionShape.CUBIC, size = { x = 20.000, y = 10.000, z = 20.000 }, pos = { x = 25.748, y = 66.394, z = -86.836 } }
}

-- 触发器
triggers = {
	{ config_id = 1010005, name = "ENTER_REGION_10005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10005", action = "action_EVENT_ENTER_REGION_10005", trigger_count = 0 },
	{ config_id = 1010009, name = "MONSTER_BATTLE_10009", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_10009", action = "action_EVENT_MONSTER_BATTLE_10009" }
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
		regions = { 10005 },
		triggers = { "ENTER_REGION_10005", "MONSTER_BATTLE_10009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 10001, 10002, 10004 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_10009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_10005(context, evt)
	if evt.param1 ~= 10005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10005(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240050010, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_10009(context, evt)
	if 10002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_10009(context, evt)
	-- 调用提示id为 500660224 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 500660224) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end