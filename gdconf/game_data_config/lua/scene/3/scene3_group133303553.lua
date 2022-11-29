-- 基础信息
local base_info = {
	group_id = 133303553
}

-- DEFS_MISCS
local optionPlay ={
    gadgetCid = 553001, --只确认该物件的GadgetState
    optionCid = 553002, --只修改此物件的操作台
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
	[553001] = { config_id = 553001, gadget_id = 70330243, pos = { x = -1334.809, y = 157.266, z = 3409.562 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[553002] = { config_id = 553002, gadget_id = 70360001, pos = { x = -1334.809, y = 157.266, z = 3409.562 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1553003, name = "GADGET_STATE_CHANGE_553003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_553003" },
	-- 保底改天气模式为自定义
	{ config_id = 1553007, name = "GROUP_LOAD_553007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_553007", trigger_count = 0 },
	{ config_id = 1553011, name = "GADGET_STATE_CHANGE_553011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_553011" }
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
		gadgets = { 553002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 553001, 553002 },
		regions = { },
		triggers = { "GROUP_LOAD_553007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 未生效,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_553003", "GADGET_STATE_CHANGE_553011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_553003(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303553, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_553007(context, evt)
	-- 将本组内变量名为 "questStatus" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "questStatus", 1, 133303126) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_553011(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6086, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V3_0/VarunaWorkOption"