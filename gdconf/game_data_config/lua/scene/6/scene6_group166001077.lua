-- 基础信息
local base_info = {
	group_id = 166001077
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
	{ config_id = 77001, gadget_id = 70360089, pos = { x = 390.102, y = 85.011, z = 1101.843 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 77003, gadget_id = 70300203, pos = { x = 390.046, y = 84.980, z = 1102.035 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 77002, shape = RegionShape.SPHERE, radius = 5, pos = { x = 388.206, y = 84.789, z = 1100.582 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1077002, name = "ENTER_REGION_77002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_77002", action = "action_EVENT_ENTER_REGION_77002" }
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
		gadgets = { 77001, 77003 },
		regions = { 77002 },
		triggers = { "ENTER_REGION_77002" },
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
function condition_EVENT_ENTER_REGION_77002(context, evt)
	if evt.param1 ~= 77002 then return false end
	
	-- 判断变量"enter"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "enter", 166001073) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_77002(context, evt)
	-- 调用提示id为 60010209 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010209) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 针对当前group内变量名为 "enter" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "enter", 1, 166001073) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end