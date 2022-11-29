-- 基础信息
local base_info = {
	group_id = 133303017
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 17001, monster_id = 24010301, pos = { x = -1790.823, y = 167.086, z = 3598.760 }, rot = { x = 0.000, y = 12.849, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 23 },
	{ config_id = 17003, monster_id = 24010301, pos = { x = -1762.020, y = 166.357, z = 3615.768 }, rot = { x = 0.000, y = 267.505, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 5009 }, pose_id = 101, area_id = 23 },
	{ config_id = 17004, monster_id = 24010301, pos = { x = -1790.823, y = 167.086, z = 3598.760 }, rot = { x = 0.000, y = 12.849, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 23 },
	{ config_id = 17005, monster_id = 24010301, pos = { x = -1762.020, y = 166.357, z = 3615.768 }, rot = { x = 0.000, y = 267.505, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 17008, gadget_id = 70290479, pos = { x = -1781.771, y = 165.500, z = 3610.869 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1017002, name = "ANY_MONSTER_DIE_17002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_17002", action = "action_EVENT_ANY_MONSTER_DIE_17002", trigger_count = 0 },
	-- 一号大宝入战初始化时间轴
	{ config_id = 1017006, name = "GROUP_REFRESH_17006", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_17006", trigger_count = 0 },
	-- 第一次尝试激活二号大宝
	{ config_id = 1017007, name = "SPECIFIC_MONSTER_HP_CHANGE_17007", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "17001", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_17007", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_17007", trigger_count = 0 },
	-- 激活冲击波
	{ config_id = 1017009, name = "TIME_AXIS_PASS_17009", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_17009", action = "action_EVENT_TIME_AXIS_PASS_17009", trigger_count = 0 },
	-- 第二次尝试激活二号大宝
	{ config_id = 1017010, name = "TIME_AXIS_PASS_17010", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_17010", action = "action_EVENT_TIME_AXIS_PASS_17010", trigger_count = 0 },
	-- 第三次尝试激活二号大宝
	{ config_id = 1017011, name = "ANY_MONSTER_DIE_17011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_17011", action = "action_EVENT_ANY_MONSTER_DIE_17011", trigger_count = 0 }
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
		monsters = { 17004, 17005 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 17001, 17003 },
		gadgets = { 17008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_17002", "GROUP_REFRESH_17006", "SPECIFIC_MONSTER_HP_CHANGE_17007", "TIME_AXIS_PASS_17009", "TIME_AXIS_PASS_17010", "ANY_MONSTER_DIE_17011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_17002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_17002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7301611_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 17008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 17008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_17006(context, evt)
	-- 通知groupid为133303017中,configid为：17001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 17001, 133303017) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 创建标识为"battle"，时间节点为{3,13}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "battle", {3,13}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_17007(context, evt)
	--[[判断指定configid的怪物的血量小于%51时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 51 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_17007(context, evt)
	-- 通知groupid为133303017中,configid为：17003的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 17003, 133303017) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_17009(context, evt)
	if "battle" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_17009(context, evt)
	-- 将configid为 17008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 17008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_17010(context, evt)
	if "battle" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_17010(context, evt)
	-- 通知groupid为133303017中,configid为：17003的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 17003, 133303017) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_17011(context, evt)
	if 17001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_17011(context, evt)
	-- 通知groupid为133303017中,configid为：17003的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 17003, 133303017) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end