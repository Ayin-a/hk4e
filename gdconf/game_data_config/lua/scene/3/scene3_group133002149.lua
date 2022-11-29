-- 基础信息
local base_info = {
	group_id = 133002149
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
	{ config_id = 149001, gadget_id = 70800252, pos = { x = 2022.671, y = 204.013, z = -874.948 }, rot = { x = 358.425, y = 339.858, z = 0.079 }, level = 1, persistent = true, area_id = 3 },
	-- 无法交互
	{ config_id = 149002, gadget_id = 70800253, pos = { x = 2022.657, y = 204.014, z = -875.518 }, rot = { x = 359.192, y = 303.046, z = 359.707 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 3 },
	-- 可交互
	{ config_id = 149003, gadget_id = 70800253, pos = { x = 2022.657, y = 204.014, z = -875.518 }, rot = { x = 359.192, y = 303.046, z = 359.707 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1149004, name = "QUEST_FINISH_149004", event = EventType.EVENT_QUEST_FINISH, source = "7368101", condition = "condition_EVENT_QUEST_FINISH_149004", action = "action_EVENT_QUEST_FINISH_149004" }
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
		gadgets = { 149001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 149002 },
		regions = { },
		triggers = { "QUEST_FINISH_149004" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 149003 },
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
function condition_EVENT_QUEST_FINISH_149004(context, evt)
	--检查ID为7368101的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 7368101 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_149004(context, evt)
	-- 将configid为 149002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 149002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end