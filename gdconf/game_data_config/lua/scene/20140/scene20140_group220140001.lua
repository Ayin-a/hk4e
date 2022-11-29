-- 基础信息
local base_info = {
	group_id = 220140001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1002, monster_id = 25080401, pos = { x = 45.128, y = 53.677, z = 335.385 }, rot = { x = 0.000, y = 236.274, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 1003, monster_id = 25050301, pos = { x = 40.898, y = 52.981, z = 336.286 }, rot = { x = 0.000, y = 218.074, z = 0.000 }, level = 1 },
	{ config_id = 1004, monster_id = 25050301, pos = { x = 42.383, y = 52.730, z = 331.133 }, rot = { x = 0.000, y = 298.427, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 1001, shape = RegionShape.CUBIC, size = { x = 30.000, y = 10.000, z = 30.000 }, pos = { x = 42.823, y = 54.048, z = 337.595 } }
}

-- 触发器
triggers = {
	{ config_id = 1001001, name = "ENTER_REGION_1001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1001", action = "action_EVENT_ENTER_REGION_1001" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1001005, name = "ANY_MONSTER_DIE_1005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1005", action = "action_EVENT_ANY_MONSTER_DIE_1005" }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 1001 },
		triggers = { "ENTER_REGION_1001" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 1002, 1003, 1004 },
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
function condition_EVENT_ENTER_REGION_1001(context, evt)
	if evt.param1 ~= 1001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1001(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220140001, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 调用提示id为 60010363 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010363) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end