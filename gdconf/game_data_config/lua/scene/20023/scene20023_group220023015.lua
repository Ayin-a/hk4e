-- 基础信息
local base_info = {
	group_id = 220023015
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 18, monster_id = 23030101, pos = { x = 187.993, y = 18.767, z = -36.124 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 65, gadget_id = 70350003, pos = { x = 188.158, y = 18.537, z = -14.345 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 73, gadget_id = 70310002, pos = { x = 190.968, y = 22.522, z = -13.745 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 74, gadget_id = 70310002, pos = { x = 185.327, y = 22.628, z = -13.823 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000027, name = "ANY_MONSTER_DIE_27", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_27", action = "action_EVENT_ANY_MONSTER_DIE_27" },
	{ config_id = 1000050, name = "ANY_MONSTER_LIVE_50", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_50", action = "action_EVENT_ANY_MONSTER_LIVE_50" },
	{ config_id = 1000055, name = "QUEST_FINISH_55", event = EventType.EVENT_QUEST_FINISH, source = "2010119", condition = "condition_EVENT_QUEST_FINISH_55", action = "action_EVENT_QUEST_FINISH_55" }
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
		gadgets = { 65, 73, 74 },
		regions = { },
		triggers = { "QUEST_FINISH_55" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 18 },
		gadgets = { 65, 73, 74 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_27", "ANY_MONSTER_LIVE_50", "QUEST_FINISH_55" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_27(context, evt)
	if 18 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_27(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "220023015") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 65 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 65, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 73 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 73, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 74 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 74, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220023012, monsters = {}, gadgets = {12002} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_50(context, evt)
	if 18 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_50(context, evt)
	-- 将configid为 65 的物件更改为状态 GadgetState.Default
	ScriptLib.SetGadgetStateByConfigId(context, 65, GadgetState.Default)
		
	
	ScriptLib.KillGroupEntity(context, { group_id = 220023012, monsters = {}, gadgets = {12002} }) 
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_55(context, evt)
	--检查ID为2010119的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 2010119 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_55(context, evt)
	-- 将configid为 73 的物件更改为状态 GadgetState.Default
	ScriptLib.SetGadgetStateByConfigId(context, 73, GadgetState.Default) 
	
	-- 将configid为 74 的物件更改为状态 GadgetState.Default
	 ScriptLib.SetGadgetStateByConfigId(context, 74, GadgetState.Default) 
	
	ScriptLib.KillGroupEntity(context, { group_id = 220023012, monsters = {}, gadgets = {12002} }) 
	
	return 0
end