-- 基础信息
local base_info = {
	group_id = 133309294
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
	{ config_id = 294001, gadget_id = 70330287, pos = { x = -2369.209, y = 202.288, z = 5593.619 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 294002, gadget_id = 70330287, pos = { x = -2409.833, y = 190.463, z = 5482.816 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 294003, gadget_id = 70330287, pos = { x = -2349.447, y = 190.491, z = 5493.150 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 294004, gadget_id = 70330287, pos = { x = -2309.435, y = 190.561, z = 5564.159 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 294006, gadget_id = 70330264, pos = { x = -2264.795, y = 195.550, z = 5549.200 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
	{ config_id = 294007, shape = RegionShape.CUBIC, size = { x = 20.000, y = 10.000, z = 20.000 }, pos = { x = -2349.374, y = 196.335, z = 5493.157 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1294005, name = "QUEST_START_294005", event = EventType.EVENT_QUEST_START, source = "7308310", condition = "", action = "action_EVENT_QUEST_START_294005", trigger_count = 0 },
	{ config_id = 1294007, name = "ENTER_REGION_294007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_294007", action = "action_EVENT_ENTER_REGION_294007" }
}

-- 变量
variables = {
	{ config_id = 1, name = "quest_finish", value = 0, no_refresh = true }
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
		gadgets = { 294001, 294002, 294003, 294004, 294006 },
		regions = { 294007 },
		triggers = { "QUEST_START_294005", "ENTER_REGION_294007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_294005(context, evt)
		-- 杀死Group内所有gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133309294, kill_policy = GroupKillPolicy.GROUP_KILL_GADGET }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_gadget_by_group")
			return -1
		end
	
	-- 将本组内变量名为 "quest_finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "quest_finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "quest" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "quest", 1, 133309673) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_294007(context, evt)
	if evt.param1 ~= 294007 then return false end
	
	-- 判断变量"quest_finish"为1
	if ScriptLib.GetGroupVariableValue(context, "quest_finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_294007(context, evt)
	-- 调用提示id为 1000070002 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000070002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end