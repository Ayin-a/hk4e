-- 基础信息
local base_info = {
	group_id = 199001119
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
	{ config_id = 119002, npc_id = 12721, pos = { x = 747.622, y = 202.266, z = 203.145 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 402 }
}

-- 装置
gadgets = {
	{ config_id = 119001, gadget_id = 70310305, pos = { x = 747.622, y = 202.266, z = 203.145 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, area_id = 402 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1119003, name = "QUEST_FINISH_119003", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_119003", action = "action_EVENT_QUEST_FINISH_119003" }
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
		gadgets = { 119001 },
		regions = { },
		triggers = { "QUEST_FINISH_119003" },
		npcs = { 119002 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_QUEST_FINISH_119003(context, evt)
	--检查ID为4007706的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 4007706 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_119003(context, evt)
	-- 将configid为 119001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 119001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end