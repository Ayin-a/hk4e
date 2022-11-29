-- 基础信息
local base_info = {
	group_id = 133301725
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
}

-- 区域
regions = {
	-- 最终战期间边界横幅
	{ config_id = 725001, shape = RegionShape.POLYGON, pos = { x = -705.760, y = -100.000, z = 3977.171 }, height = 200.000, point_array = { { x = -717.475, y = 3822.981 }, { x = -619.768, y = 3949.357 }, { x = -575.915, y = 4067.744 }, { x = -613.890, y = 4086.948 }, { x = -666.053, y = 4084.214 }, { x = -690.379, y = 4091.059 }, { x = -752.257, y = 4090.050 }, { x = -802.025, y = 3996.382 }, { x = -830.380, y = 3934.551 }, { x = -816.251, y = 3858.946 }, { x = -764.330, y = 3816.486 }, { x = -891.465, y = 3823.850 }, { x = -867.926, y = 4118.526 }, { x = -520.056, y = 4137.855 }, { x = -607.640, y = 3846.724 } }, area_id = 25 },
	-- 最终战期间出圈失败
	{ config_id = 725002, shape = RegionShape.POLYGON, pos = { x = -702.739, y = -100.000, z = 3940.914 }, height = 200.000, point_array = { { x = -669.324, y = 3819.034 }, { x = -641.777, y = 3735.627 }, { x = -721.988, y = 3731.405 }, { x = -775.645, y = 3796.982 }, { x = -874.586, y = 3854.691 }, { x = -839.009, y = 4020.535 }, { x = -787.676, y = 4150.424 }, { x = -624.553, y = 4133.266 }, { x = -530.892, y = 4054.491 }, { x = -618.156, y = 3852.988 } }, area_id = 25 }
}

-- 触发器
triggers = {
	-- 最终战期间边界横幅
	{ config_id = 1725001, name = "ENTER_REGION_725001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_725001", action = "action_EVENT_ENTER_REGION_725001", trigger_count = 0 },
	-- 最终战期间出圈失败
	{ config_id = 1725002, name = "LEAVE_REGION_725002", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_EVENT_LEAVE_REGION_725002", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 725003, shape = RegionShape.CUBIC, size = { x = 300.000, y = 10.000, z = 300.000 }, pos = { x = -713.903, y = -100.000, z = 3971.188 }, area_id = 25 },
		{ config_id = 725004, shape = RegionShape.CUBIC, size = { x = 300.000, y = 10.000, z = 300.000 }, pos = { x = -713.903, y = -100.000, z = 3971.188 }, area_id = 25 }
	},
	triggers = {
		{ config_id = 1725003, name = "ENTER_REGION_725003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_725003", action = "action_EVENT_ENTER_REGION_725003", trigger_count = 0, forbid_guest = false },
		{ config_id = 1725004, name = "ENTER_REGION_725004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_725004", action = "action_EVENT_ENTER_REGION_725004", trigger_count = 0, forbid_guest = false }
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
		regions = { 725001, 725002 },
		triggers = { "ENTER_REGION_725001", "LEAVE_REGION_725002" },
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_725001(context, evt)
	if evt.param1 ~= 725001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_725001(context, evt)
	-- 调用提示id为 33010247 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010247) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LEAVE_REGION_725002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "73037_OUT") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

require "V3_0/DeathFieldStandard"