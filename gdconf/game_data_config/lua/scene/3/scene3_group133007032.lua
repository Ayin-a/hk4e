-- 基础信息
local base_info = {
	group_id = 133007032
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 65, monster_id = 21020101, pos = { x = 2776.178, y = 206.836, z = 104.842 }, rot = { x = 0.000, y = 14.830, z = 0.000 }, level = 24, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 4 },
	{ config_id = 130, monster_id = 21010401, pos = { x = 2771.745, y = 210.466, z = 91.449 }, rot = { x = 0.000, y = 158.924, z = 0.000 }, level = 22, drop_tag = "远程丘丘人", disableWander = true, pose_id = 402, area_id = 4 },
	{ config_id = 131, monster_id = 21010401, pos = { x = 2766.148, y = 211.819, z = 104.358 }, rot = { x = 0.000, y = 164.922, z = 0.000 }, level = 22, drop_tag = "远程丘丘人", pose_id = 402, area_id = 4 },
	{ config_id = 137, monster_id = 21010401, pos = { x = 2776.385, y = 206.949, z = 110.026 }, rot = { x = 0.000, y = 161.554, z = 0.000 }, level = 22, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002, area_id = 4 },
	{ config_id = 447, monster_id = 21020101, pos = { x = 2776.125, y = 206.833, z = 104.809 }, rot = { x = 0.000, y = 14.830, z = 0.000 }, level = 24, drop_id = 1000100, disableWander = true, pose_id = 401, area_id = 4 },
	{ config_id = 448, monster_id = 21010401, pos = { x = 2771.692, y = 210.466, z = 91.418 }, rot = { x = 0.000, y = 158.924, z = 0.000 }, level = 24, drop_id = 1000100, disableWander = true, pose_id = 9002, area_id = 4 },
	{ config_id = 449, monster_id = 21010401, pos = { x = 2766.094, y = 211.819, z = 104.325 }, rot = { x = 0.000, y = 164.922, z = 0.000 }, level = 24, drop_id = 1000100, pose_id = 9002, area_id = 4 },
	{ config_id = 450, monster_id = 21010401, pos = { x = 2776.332, y = 206.939, z = 109.994 }, rot = { x = 0.000, y = 161.554, z = 0.000 }, level = 24, drop_id = 1000100, disableWander = true, area_id = 4 },
	{ config_id = 451, monster_id = 21010101, pos = { x = 2767.585, y = 207.059, z = 73.870 }, rot = { x = 0.000, y = 212.260, z = 0.000 }, level = 22, drop_tag = "丘丘人", area_id = 4 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 308, gadget_id = 70220013, pos = { x = 2767.248, y = 206.825, z = 113.714 }, rot = { x = 0.000, y = 82.751, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 309, gadget_id = 70220013, pos = { x = 2770.618, y = 207.158, z = 100.892 }, rot = { x = 0.000, y = 87.005, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 310, gadget_id = 70220013, pos = { x = 2784.891, y = 207.027, z = 89.768 }, rot = { x = 0.000, y = 312.098, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 311, gadget_id = 70220013, pos = { x = 2785.938, y = 207.066, z = 91.478 }, rot = { x = 0.000, y = 139.667, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 312, gadget_id = 70310004, pos = { x = 2782.536, y = 207.016, z = 97.489 }, rot = { x = 0.000, y = 102.037, z = 0.000 }, level = 23, state = GadgetState.GearStart, area_id = 4 },
	{ config_id = 989, gadget_id = 70220013, pos = { x = 2767.175, y = 206.825, z = 113.591 }, rot = { x = 0.000, y = 82.751, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 990, gadget_id = 70220013, pos = { x = 2770.545, y = 207.161, z = 100.769 }, rot = { x = 0.000, y = 87.005, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 991, gadget_id = 70220013, pos = { x = 2784.818, y = 207.025, z = 89.645 }, rot = { x = 0.000, y = 312.098, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 992, gadget_id = 70220013, pos = { x = 2785.865, y = 207.063, z = 91.354 }, rot = { x = 0.000, y = 139.667, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 993, gadget_id = 70310004, pos = { x = 2782.463, y = 207.058, z = 97.366 }, rot = { x = 0.000, y = 102.037, z = 0.000 }, level = 23, state = GadgetState.GearStart, area_id = 4 },
	{ config_id = 32001, gadget_id = 70211022, pos = { x = 2767.248, y = 212.071, z = 106.982 }, rot = { x = 0.000, y = 154.546, z = 0.000 }, level = 21, drop_tag = "战斗高级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000076, name = "ANY_MONSTER_DIE_76", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_76", action = "action_EVENT_ANY_MONSTER_DIE_76", tlog_tag = "风龙_32_大营��?1_成功" },
	{ config_id = 1000329, name = "ANY_MONSTER_DIE_329", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_329", action = "action_EVENT_ANY_MONSTER_DIE_329", trigger_count = 0 },
	{ config_id = 1000330, name = "QUEST_FINISH_330", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_330", action = "action_EVENT_QUEST_FINISH_330", trigger_count = 0 },
	{ config_id = 1000331, name = "QUEST_FINISH_331", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_331", action = "action_EVENT_QUEST_FINISH_331", trigger_count = 0 },
	{ config_id = 1000332, name = "MONSTER_BATTLE_332", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_332", trigger_count = 0 }
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
		monsters = { 65, 130, 131, 137 },
		gadgets = { 308, 309, 310, 311, 312, 32001 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_76" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 447, 448, 449, 450 },
		gadgets = { 989, 990, 991, 992, 993 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_329", "QUEST_FINISH_330", "QUEST_FINISH_331", "MONSTER_BATTLE_332" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
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
function condition_EVENT_ANY_MONSTER_DIE_76(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_76(context, evt)
	-- 将configid为 32001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 32001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_329(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_329(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330070321") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_330(context, evt)
	--检查ID为2001507的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 2001507 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_330(context, evt)
	-- 通知groupid为133007032中,configid为：448的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 448, 133007032) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为133007032中,configid为：449的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 449, 133007032) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为133007032中,configid为：450的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 450, 133007032) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为133007032中,configid为：447的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 447, 133007032) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 451, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_331(context, evt)
	--检查ID为2001510的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 2001510 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_331(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 451, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_332(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330070322") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end