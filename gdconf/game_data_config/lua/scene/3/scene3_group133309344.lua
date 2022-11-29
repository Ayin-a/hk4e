-- 基础信息
local base_info = {
	group_id = 133309344
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	-- 关卡通知进战斗2
	{ config_id = 344002, monster_id = 24040301, pos = { x = -2987.744, y = 195.858, z = 5498.229 }, rot = { x = 0.000, y = 277.752, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 5205 }, pose_id = 1004, title_id = 10139, area_id = 27 },
	{ config_id = 344003, monster_id = 24040201, pos = { x = -2994.822, y = 195.002, z = 5486.965 }, rot = { x = 0.000, y = 180.767, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 1, area_id = 27 },
	-- 关卡通知进战斗1
	{ config_id = 344004, monster_id = 24040301, pos = { x = -2998.222, y = 195.858, z = 5480.104 }, rot = { x = 0.000, y = 90.930, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 5205 }, pose_id = 1004, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 替换成元能构装体缺陷版
	{ config_id = 344001, gadget_id = 70330432, pos = { x = -2981.306, y = 196.992, z = 5479.108 }, rot = { x = 0.000, y = 248.409, z = 0.000 }, level = 32, area_id = 27 },
	-- 替换成元能构装体缺陷版
	{ config_id = 344007, gadget_id = 70330432, pos = { x = -3005.870, y = 196.972, z = 5499.485 }, rot = { x = 4.490, y = 129.680, z = 0.845 }, level = 32, area_id = 27 },
	{ config_id = 344009, gadget_id = 70211022, pos = { x = -2992.951, y = 195.002, z = 5506.548 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 26, drop_tag = "战斗高级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 344010, gadget_id = 70330416, pos = { x = -2992.880, y = 195.179, z = 5521.070 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 344011, gadget_id = 70330432, pos = { x = -3004.606, y = 197.012, z = 5507.734 }, rot = { x = 0.000, y = 41.004, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 344013, gadget_id = 70330432, pos = { x = -2977.716, y = 202.201, z = 5506.224 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 344014, gadget_id = 70330432, pos = { x = -2981.534, y = 196.992, z = 5483.050 }, rot = { x = 0.000, y = 237.562, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 344015, gadget_id = 70330432, pos = { x = -2980.159, y = 196.992, z = 5477.437 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 344016, gadget_id = 70330432, pos = { x = -2981.077, y = 196.992, z = 5472.638 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 344017, gadget_id = 70330432, pos = { x = -2977.913, y = 196.992, z = 5489.489 }, rot = { x = 0.000, y = 182.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 344018, gadget_id = 70330432, pos = { x = -2980.571, y = 196.992, z = 5490.307 }, rot = { x = 0.000, y = 235.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 344020, gadget_id = 70330432, pos = { x = -2980.030, y = 196.992, z = 5492.708 }, rot = { x = 0.000, y = 311.387, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 344021, gadget_id = 70330432, pos = { x = -2979.874, y = 196.992, z = 5503.476 }, rot = { x = 0.000, y = 251.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 344022, gadget_id = 70330432, pos = { x = -2981.552, y = 196.981, z = 5499.484 }, rot = { x = 358.751, y = 120.968, z = 357.794 }, level = 32, area_id = 27 },
	{ config_id = 344023, gadget_id = 70330432, pos = { x = -2980.190, y = 196.540, z = 5509.979 }, rot = { x = 0.000, y = 260.579, z = 17.209 }, level = 32, area_id = 27 },
	{ config_id = 344024, gadget_id = 70330432, pos = { x = -2980.325, y = 196.992, z = 5512.328 }, rot = { x = 0.000, y = 303.426, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 344026, gadget_id = 70330432, pos = { x = -3003.667, y = 196.992, z = 5512.824 }, rot = { x = 0.000, y = 263.315, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 344027, gadget_id = 70330432, pos = { x = -3005.185, y = 196.992, z = 5511.251 }, rot = { x = 0.000, y = 99.451, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 344028, gadget_id = 70330432, pos = { x = -3007.647, y = 197.012, z = 5508.861 }, rot = { x = 0.000, y = 134.968, z = 27.672 }, level = 32, area_id = 27 },
	{ config_id = 344030, gadget_id = 70330432, pos = { x = -3005.980, y = 197.012, z = 5502.908 }, rot = { x = 0.000, y = 61.200, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 344032, gadget_id = 70330432, pos = { x = -3005.877, y = 196.992, z = 5482.692 }, rot = { x = 0.000, y = 29.644, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 344033, gadget_id = 70330432, pos = { x = -3003.654, y = 197.069, z = 5473.130 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 344034, gadget_id = 70330432, pos = { x = -3005.432, y = 196.992, z = 5480.243 }, rot = { x = 0.000, y = 116.894, z = 0.000 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 枪构死掉 激活第一个炮构
	{ config_id = 1344005, name = "ANY_MONSTER_DIE_344005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_344005", action = "action_EVENT_ANY_MONSTER_DIE_344005", trigger_count = 0 },
	-- 第一个炮构死掉 激活第二个炮构
	{ config_id = 1344006, name = "ANY_MONSTER_DIE_344006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_344006", action = "action_EVENT_ANY_MONSTER_DIE_344006", trigger_count = 0 },
	-- 怪物死光，打开机关
	{ config_id = 1344008, name = "ANY_MONSTER_DIE_344008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_344008", action = "action_EVENT_ANY_MONSTER_DIE_344008", trigger_count = 0 },
	-- 保底开门和通知任务
	{ config_id = 1344012, name = "GROUP_LOAD_344012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_344012", action = "action_EVENT_GROUP_LOAD_344012", trigger_count = 0 },
	-- 保底 怪物死了但没死完的保底
	{ config_id = 1344019, name = "GROUP_LOAD_344019", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_344019", action = "action_EVENT_GROUP_LOAD_344019", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finished", value = 0, no_refresh = true },
	{ config_id = 2, name = "die", value = 0, no_refresh = true }
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
		monsters = { 344002, 344003, 344004 },
		gadgets = { 344001, 344007, 344009, 344010, 344011, 344013, 344014, 344015, 344016, 344017, 344018, 344020, 344021, 344022, 344023, 344024, 344026, 344027, 344028, 344030, 344032, 344033, 344034 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_344005", "ANY_MONSTER_DIE_344006", "ANY_MONSTER_DIE_344008", "GROUP_LOAD_344012", "GROUP_LOAD_344019" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_344005(context, evt)
	--判断死亡怪物的configid是否为 344003
	if evt.param1 ~= 344003 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_344005(context, evt)
	-- 将本组内变量名为 "die" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "die", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 通知groupid为133309344中,configid为：344004的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 344004, 133309344) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_344006(context, evt)
	--判断死亡怪物的configid是否为 344004
	if evt.param1 ~= 344004 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_344006(context, evt)
	-- 将本组内变量名为 "die" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "die", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 通知groupid为133309344中,configid为：344002的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 344002, 133309344) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_344008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_344008(context, evt)
	-- 将本组内变量名为 "finished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "die" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "die", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7329303") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 344009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 344009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 344010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 344010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_344012(context, evt)
	-- 判断变量"finished"为1
	if ScriptLib.GetGroupVariableValue(context, "finished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_344012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7329303") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 344009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 344009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
	
		end 
	
	-- 将configid为 344010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 344010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
	
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_344019(context, evt)
	-- 判断变量"die"为1
	if ScriptLib.GetGroupVariableValue(context, "die") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_344019(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 344002, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 344003, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 344004, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end