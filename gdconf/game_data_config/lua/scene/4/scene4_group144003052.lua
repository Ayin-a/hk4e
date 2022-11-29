-- 基础信息
local base_info = {
	group_id = 144003052
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
	{ config_id = 52001, gadget_id = 70350261, pos = { x = -246.500, y = 120.000, z = 493.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 52002, gadget_id = 70350208, pos = { x = -255.150, y = 120.000, z = 480.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 52005, gadget_id = 70350271, pos = { x = -260.924, y = 120.056, z = 488.905 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 52006, gadget_id = 70350271, pos = { x = -257.160, y = 120.053, z = 488.924 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 52007, gadget_id = 70350271, pos = { x = -253.365, y = 120.146, z = 488.951 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 52008, gadget_id = 70350271, pos = { x = -249.621, y = 120.088, z = 488.991 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 52011, gadget_id = 70350271, pos = { x = -247.756, y = 119.991, z = 490.871 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 52012, gadget_id = 70350271, pos = { x = -247.766, y = 119.905, z = 494.597 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 52015, gadget_id = 70350271, pos = { x = -262.838, y = 119.976, z = 490.694 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, area_id = 103 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1052003, name = "QUEST_START_52003", event = EventType.EVENT_QUEST_START, source = "7900702", condition = "", action = "action_EVENT_QUEST_START_52003", trigger_count = 0 },
	{ config_id = 1052004, name = "QUEST_FINISH_52004", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_52004", action = "action_EVENT_QUEST_FINISH_52004", trigger_count = 0 }
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
		gadgets = { 52001, 52005, 52006, 52007, 52008, 52011, 52012, 52015 },
		regions = { },
		triggers = { "QUEST_START_52003", "QUEST_FINISH_52004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 52002 },
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

-- 触发操作
function action_EVENT_QUEST_START_52003(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 144003052, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_52004(context, evt)
	--检查ID为7900705的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 7900705 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_52004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144003052, 2)
	
	return 0
end