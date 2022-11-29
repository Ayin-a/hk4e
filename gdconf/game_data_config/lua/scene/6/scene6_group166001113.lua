-- 基础信息
local base_info = {
	group_id = 166001113
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 113001, monster_id = 22080101, pos = { x = 138.910, y = 306.874, z = 312.645 }, rot = { x = 0.000, y = 313.923, z = 0.000 }, level = 36, drop_tag = "黑蛇剑士", disableWander = true, pose_id = 9002, title_id = 10072, special_name_id = 10105, area_id = 300 },
	{ config_id = 113004, monster_id = 22070301, pos = { x = 142.484, y = 306.428, z = 318.071 }, rot = { x = 0.000, y = 196.408, z = 0.000 }, level = 36, drop_tag = "黑蛇剑士", pose_id = 9002, area_id = 300 },
	{ config_id = 113005, monster_id = 22070102, pos = { x = 139.705, y = 307.524, z = 307.315 }, rot = { x = 0.000, y = 329.307, z = 0.000 }, level = 36, drop_tag = "黑蛇剑士", disableWander = true, pose_id = 101, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 113006, gadget_id = 70300107, pos = { x = 136.235, y = 306.979, z = 311.053 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 113007, gadget_id = 70300107, pos = { x = 130.404, y = 306.726, z = 314.518 }, rot = { x = 0.000, y = 56.998, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 113008, gadget_id = 70300107, pos = { x = 124.726, y = 306.753, z = 318.421 }, rot = { x = 0.000, y = 334.240, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 113009, gadget_id = 70300107, pos = { x = 143.627, y = 306.895, z = 314.835 }, rot = { x = 0.000, y = 317.676, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 113010, gadget_id = 70300107, pos = { x = 139.022, y = 305.542, z = 322.832 }, rot = { x = 3.628, y = 250.699, z = 356.840 }, level = 36, area_id = 300 },
	{ config_id = 113011, gadget_id = 70300107, pos = { x = 134.699, y = 304.797, z = 328.347 }, rot = { x = 0.000, y = 42.653, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 113012, gadget_id = 70220100, pos = { x = 120.169, y = 309.191, z = 330.405 }, rot = { x = 0.000, y = 318.132, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 113013, gadget_id = 70220100, pos = { x = 118.029, y = 311.494, z = 328.843 }, rot = { x = 0.000, y = 318.132, z = 175.363 }, level = 36, area_id = 300 },
	{ config_id = 113015, gadget_id = 70211021, pos = { x = 136.832, y = 306.412, z = 315.462 }, rot = { x = 6.315, y = 324.334, z = 356.576 }, level = 26, drop_tag = "战斗高级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 113014, shape = RegionShape.SPHERE, radius = 5, pos = { x = 123.599, y = 306.337, z = 324.605 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1113002, name = "MONSTER_BATTLE_113002", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_113002", action = "action_EVENT_MONSTER_BATTLE_113002" },
	{ config_id = 1113003, name = "ANY_MONSTER_DIE_113003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_113003", action = "action_EVENT_ANY_MONSTER_DIE_113003" },
	{ config_id = 1113014, name = "ENTER_REGION_113014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_113014" },
	{ config_id = 1113016, name = "ANY_MONSTER_DIE_113016", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_113016", action = "action_EVENT_ANY_MONSTER_DIE_113016" }
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
		monsters = { 113001, 113004, 113005 },
		gadgets = { 113006, 113007, 113008, 113009, 113010, 113011, 113012, 113013 },
		regions = { 113014 },
		triggers = { "MONSTER_BATTLE_113002", "ANY_MONSTER_DIE_113003", "ENTER_REGION_113014", "ANY_MONSTER_DIE_113016" },
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
function condition_EVENT_MONSTER_BATTLE_113002(context, evt)
	if 113001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_113002(context, evt)
	-- 调用提示id为 60010294 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010294) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将configid为 113006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 113006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 113007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 113007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 113008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 113008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 113009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 113009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 113010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 113010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 113011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 113011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_113003(context, evt)
	if 113001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_113003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001113") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 60010295 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010295) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_113014(context, evt)
	-- 通知groupid为166001113中,configid为：113001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 113001, 166001113) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_113016(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_113016(context, evt)
	-- 创建id为113015的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 113015 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end