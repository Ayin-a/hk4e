-- 基础信息
local base_info = {
	group_id = 133303257
}

-- DEFS_MISCS
local optionPlay ={
    gadgetCid = 257001, --只确认该物件的GadgetState
    optionCid = 257002, --只修改此物件的操作台
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
	-- 201为晴，202为雨，203为流转
	[257001] = { config_id = 257001, gadget_id = 70330239, pos = { x = -1847.025, y = 0.574, z = 3300.208 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[257002] = { config_id = 257002, gadget_id = 70360001, pos = { x = -1846.035, y = -1.072, z = 3299.534 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 转音乐状态添加成就trigger
	{ config_id = 1257003, name = "GADGET_STATE_CHANGE_257003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_257003" },
	-- 任务完成改天气模式为自定义
	{ config_id = 1257004, name = "GROUP_REFRESH_257004", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_257004" },
	-- 保底改天气模式为自定义
	{ config_id = 1257007, name = "GROUP_LOAD_257007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_257007", trigger_count = 0 },
	-- 给成就一次性
	{ config_id = 1257011, name = "GADGET_STATE_CHANGE_257011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_257011" }
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
	end_suite = 2,
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
		gadgets = { 257002 },
		regions = { },
		triggers = { "GROUP_REFRESH_257004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 257001, 257002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_257003", "GROUP_REFRESH_257004", "GROUP_LOAD_257007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_257011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_257003(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303257, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_257004(context, evt)
	-- 将本组内变量名为 "questStatus" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "questStatus", 1, 133303126) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_257007(context, evt)
	-- 将本组内变量名为 "questStatus" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "questStatus", 1, 133303126) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_257011(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6086, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V3_0/VarunaWorkOption"