-- 基础信息
local base_info = {
	group_id = 133309273
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	-- 关卡通知进战斗2
	{ config_id = 273001, monster_id = 24040301, pos = { x = -2737.042, y = 155.961, z = 5940.655 }, rot = { x = 0.000, y = 2.178, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, affix = { 5205 }, pose_id = 1004, area_id = 27 },
	{ config_id = 273002, monster_id = 24040201, pos = { x = -2733.013, y = 155.614, z = 5947.433 }, rot = { x = 0.000, y = 184.131, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 1, area_id = 27 },
	-- 关卡通知进战斗1
	{ config_id = 273003, monster_id = 24040301, pos = { x = -2736.646, y = 155.506, z = 5950.563 }, rot = { x = 0.000, y = 179.070, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, affix = { 5205 }, pose_id = 1004, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 替换成元能构装体缺陷版
	{ config_id = 273004, gadget_id = 70330432, pos = { x = -2727.002, y = 155.402, z = 5951.037 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, area_id = 27 },
	-- 替换成元能构装体缺陷版
	{ config_id = 273005, gadget_id = 70330432, pos = { x = -2717.055, y = 155.399, z = 5938.936 }, rot = { x = 2.166, y = 2.904, z = 8.729 }, level = 32, area_id = 27 },
	{ config_id = 273006, gadget_id = 70211022, pos = { x = -2706.800, y = 155.412, z = 5945.253 }, rot = { x = 0.000, y = 269.635, z = 0.000 }, level = 26, drop_tag = "战斗高级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 273007, gadget_id = 70330416, pos = { x = -2692.113, y = 155.589, z = 5945.188 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 273008, gadget_id = 70330432, pos = { x = -2726.381, y = 155.423, z = 5938.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 273010, gadget_id = 70330432, pos = { x = -2717.244, y = 155.516, z = 5950.221 }, rot = { x = 359.568, y = 175.071, z = 15.781 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 枪构死掉 激活第一个炮构
	{ config_id = 1273012, name = "ANY_MONSTER_DIE_273012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_273012", action = "action_EVENT_ANY_MONSTER_DIE_273012", trigger_count = 0 },
	-- 第一个炮构死掉 激活第二个炮构
	{ config_id = 1273013, name = "ANY_MONSTER_DIE_273013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_273013", action = "action_EVENT_ANY_MONSTER_DIE_273013", trigger_count = 0 },
	-- 怪物死光，打开机关
	{ config_id = 1273014, name = "ANY_MONSTER_DIE_273014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_273014", action = "action_EVENT_ANY_MONSTER_DIE_273014", trigger_count = 0 },
	-- 保底开门 开宝箱
	{ config_id = 1273015, name = "GROUP_LOAD_273015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_273015", action = "action_EVENT_GROUP_LOAD_273015", trigger_count = 0 },
	-- 怪物死了但没死完的保底
	{ config_id = 1273016, name = "GROUP_LOAD_273016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_273016", action = "action_EVENT_GROUP_LOAD_273016", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finished", value = 0, no_refresh = true },
	{ config_id = 2, name = "die", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 273011, gadget_id = 70330432, pos = { x = -2714.943, y = 155.063, z = 5932.847 }, rot = { x = 0.000, y = 279.561, z = 0.000 }, level = 32, area_id = 27 }
	},
	triggers = {
		{ config_id = 1273009, name = "GROUP_LOAD_273009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "" }
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
		monsters = { 273001, 273002, 273003 },
		gadgets = { 273004, 273005, 273006, 273007, 273008, 273010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_273012", "ANY_MONSTER_DIE_273013", "ANY_MONSTER_DIE_273014", "GROUP_LOAD_273015", "GROUP_LOAD_273016" },
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
function condition_EVENT_ANY_MONSTER_DIE_273012(context, evt)
	--判断死亡怪物的configid是否为 273002
	if evt.param1 ~= 273002 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_273012(context, evt)
	-- 将本组内变量名为 "die" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "die", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 通知groupid为133309273中,configid为：273003的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 273003, 133309273) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_273013(context, evt)
	--判断死亡怪物的configid是否为 273003
	if evt.param1 ~= 273003 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_273013(context, evt)
	-- 将本组内变量名为 "die" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "die", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 通知groupid为133309273中,configid为：273001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 273001, 133309273) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_273014(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_273014(context, evt)
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
	
	-- 将configid为 273006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 273006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 273007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 273007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_273015(context, evt)
	-- 判断变量"finished"为1
	if ScriptLib.GetGroupVariableValue(context, "finished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_273015(context, evt)
	-- 将configid为 273007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 273007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 273006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 273006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_273016(context, evt)
	-- 判断变量"die"为1
	if ScriptLib.GetGroupVariableValue(context, "die") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_273016(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 273001, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 273002, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 273003, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end