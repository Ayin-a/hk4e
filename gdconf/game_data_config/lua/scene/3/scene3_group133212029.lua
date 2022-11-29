-- 基础信息
local base_info = {
	group_id = 133212029
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
	{ config_id = 29002, npc_id = 20236, pos = { x = -4026.342, y = 199.898, z = -2363.533 }, rot = { x = 0.934, y = 345.114, z = 356.258 }, area_id = 13 },
	{ config_id = 29005, npc_id = 20257, pos = { x = -4026.342, y = 199.898, z = -2363.533 }, rot = { x = 0.934, y = 345.114, z = 356.258 }, area_id = 13 },
	{ config_id = 29006, npc_id = 20254, pos = { x = -4026.342, y = 199.898, z = -2363.533 }, rot = { x = 0.934, y = 345.114, z = 356.258 }, area_id = 13 }
}

-- 装置
gadgets = {
	{ config_id = 29001, gadget_id = 70290122, pos = { x = -4026.401, y = 198.607, z = -2363.445 }, rot = { x = 356.185, y = 232.616, z = 0.570 }, level = 35, persistent = true, area_id = 13 },
	{ config_id = 29003, gadget_id = 70290135, pos = { x = -4030.616, y = 200.313, z = -2352.850 }, rot = { x = 0.000, y = 9.442, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 29004, gadget_id = 70290135, pos = { x = -4022.917, y = 199.871, z = -2373.466 }, rot = { x = 0.000, y = 141.047, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 29009, gadget_id = 70950113, pos = { x = -4024.911, y = 198.845, z = -2361.646 }, rot = { x = 273.989, y = 157.392, z = 341.188 }, level = 27, area_id = 13 },
	{ config_id = 29010, gadget_id = 70290135, pos = { x = -4024.677, y = 207.426, z = -2339.757 }, rot = { x = 342.204, y = 20.708, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 29011, gadget_id = 70290135, pos = { x = -4016.222, y = 215.267, z = -2327.478 }, rot = { x = 325.763, y = 20.708, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 29012, gadget_id = 70290135, pos = { x = -4006.227, y = 223.107, z = -2310.422 }, rot = { x = 3.758, y = 42.339, z = 0.247 }, level = 27, area_id = 13 },
	{ config_id = 29013, gadget_id = 70290135, pos = { x = -3990.087, y = 222.557, z = -2293.168 }, rot = { x = 3.758, y = 42.339, z = 0.247 }, level = 27, area_id = 13 },
	{ config_id = 29014, gadget_id = 70290135, pos = { x = -3979.068, y = 221.921, z = -2280.821 }, rot = { x = 328.207, y = 42.171, z = 0.290 }, level = 27, area_id = 13 },
	{ config_id = 29015, gadget_id = 70290135, pos = { x = -3966.684, y = 230.257, z = -2270.949 }, rot = { x = 309.230, y = 71.849, z = 347.601 }, level = 27, area_id = 13 },
	{ config_id = 29016, gadget_id = 70290135, pos = { x = -3948.161, y = 241.127, z = -2268.224 }, rot = { x = 0.000, y = 85.453, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 29017, gadget_id = 70290135, pos = { x = -4009.688, y = 200.844, z = -2392.438 }, rot = { x = 0.000, y = 141.047, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 29018, gadget_id = 70290135, pos = { x = -3985.871, y = 200.772, z = -2425.932 }, rot = { x = 0.000, y = 150.143, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 29019, gadget_id = 70290135, pos = { x = -3955.583, y = 200.743, z = -2451.670 }, rot = { x = 0.000, y = 91.501, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 29020, gadget_id = 70290135, pos = { x = -3918.530, y = 201.354, z = -2452.683 }, rot = { x = 0.000, y = 91.501, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 29021, gadget_id = 70290135, pos = { x = -3884.602, y = 200.964, z = -2486.536 }, rot = { x = 0.000, y = 160.916, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 29022, gadget_id = 70290135, pos = { x = -3877.463, y = 200.000, z = -2507.025 }, rot = { x = 0.000, y = 160.916, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 29023, gadget_id = 70290135, pos = { x = -3872.769, y = 200.000, z = -2517.264 }, rot = { x = 342.649, y = 160.916, z = 0.000 }, level = 27, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1029007, name = "QUEST_FINISH_29007", event = EventType.EVENT_QUEST_FINISH, source = "7213109", condition = "", action = "action_EVENT_QUEST_FINISH_29007", trigger_count = 0 },
	{ config_id = 1029008, name = "QUEST_FINISH_29008", event = EventType.EVENT_QUEST_FINISH, source = "7212905", condition = "", action = "action_EVENT_QUEST_FINISH_29008", trigger_count = 0 },
	{ config_id = 1029024, name = "QUEST_FINISH_29024", event = EventType.EVENT_QUEST_FINISH, source = "7213106", condition = "", action = "action_EVENT_QUEST_FINISH_29024", trigger_count = 0 }
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
		gadgets = { 29001, 29003, 29004, 29009, 29010, 29011, 29012, 29013, 29014, 29015, 29016, 29017, 29018, 29019, 29020, 29021, 29022, 29023 },
		regions = { },
		triggers = { "QUEST_FINISH_29007", "QUEST_FINISH_29008", "QUEST_FINISH_29024" },
		npcs = { 29002, 29005, 29006 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_29007(context, evt)
	-- 调用提示id为 321231061 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 321231061) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_29008(context, evt)
	-- 将configid为 29001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 29001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_29024(context, evt)
	-- 将configid为 29001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 29001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end