-- 基础信息
local base_info = {
	group_id = 133107181
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
	{ config_id = 181001, gadget_id = 70710499, pos = { x = -620.170, y = 253.030, z = 395.422 }, rot = { x = 0.000, y = 71.182, z = 0.000 }, level = 1, persistent = true, area_id = 7 },
	{ config_id = 181002, gadget_id = 70710500, pos = { x = -620.170, y = 253.030, z = 395.422 }, rot = { x = 0.000, y = 71.182, z = 0.000 }, level = 1, persistent = true, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 4001517完成的时候切雕像状态
	{ config_id = 1181003, name = "QUEST_FINISH_181003", event = EventType.EVENT_QUEST_FINISH, source = "4001517", condition = "condition_EVENT_QUEST_FINISH_181003", action = "action_EVENT_QUEST_FINISH_181003" }
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
	suite = 3,
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
		-- description = 雕像1,
		monsters = { },
		gadgets = { 181001 },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = 雕像2,
		monsters = { },
		gadgets = { 181002 },
		regions = { },
		triggers = { "QUEST_FINISH_181003" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = 空,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_QUEST_FINISH_181003(context, evt)
	--检查ID为4001517的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 4001517 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_181003(context, evt)
	-- 将configid为 181002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 181002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end