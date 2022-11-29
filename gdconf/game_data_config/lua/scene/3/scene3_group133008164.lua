-- 基础信息
local base_info = {
	group_id = 133008164
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
	{ config_id = 164001, gadget_id = 70211111, pos = { x = 1101.879, y = 386.657, z = -1007.135 }, rot = { x = 6.260, y = 342.025, z = 342.360 }, level = 26, chest_drop_id = 1050110, drop_count = 1, isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 164004, gadget_id = 70210101, pos = { x = 1101.732, y = 387.248, z = -1005.689 }, rot = { x = 5.685, y = 131.035, z = 43.591 }, level = 26, drop_tag = "搜刮点解谜人文蒙德", isOneoff = true, persistent = true, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 164003, shape = RegionShape.SPHERE, radius = 10, pos = { x = 1111.085, y = 382.778, z = -1001.259 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1164002, name = "QUEST_FINISH_164002", event = EventType.EVENT_QUEST_FINISH, source = "7012106", condition = "", action = "action_EVENT_QUEST_FINISH_164002" },
	{ config_id = 1164003, name = "ENTER_REGION_164003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_164003", action = "action_EVENT_ENTER_REGION_164003" }
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
		gadgets = { 164001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 164001, 164004 },
		regions = { 164003 },
		triggers = { "QUEST_FINISH_164002", "ENTER_REGION_164003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_164002(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1100,y=387,z=-1007}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 300816402, pos, 15) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_164003(context, evt)
	if evt.param1 ~= 164003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_164003(context, evt)
	-- 调用提示id为 300816511 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 300816511) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end