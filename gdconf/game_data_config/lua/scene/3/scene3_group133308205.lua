-- 基础信息
local base_info = {
	group_id = 133308205
}

-- DEFS_MISCS
local markList = {205001}

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
	{ config_id = 205001, gadget_id = 70330264, pos = { x = -1435.313, y = 18.243, z = 4717.077 }, rot = { x = 0.000, y = 10.752, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 26 },
	{ config_id = 205002, gadget_id = 70330314, pos = { x = -1441.120, y = 13.424, z = 4714.127 }, rot = { x = 0.000, y = 10.411, z = 0.000 }, level = 32, state = GadgetState.GearAction2, persistent = true, area_id = 26 },
	{ config_id = 205003, gadget_id = 70330225, pos = { x = -1433.946, y = 14.874, z = 4714.526 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 运营埋点
	{ config_id = 1205005, name = "GADGET_STATE_CHANGE_205005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_205005", action = "action_EVENT_GADGET_STATE_CHANGE_205005" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 205004, gadget_id = 70330430, pos = { x = -1433.846, y = 14.140, z = 4714.296 }, rot = { x = 347.816, y = 14.019, z = 10.030 }, level = 32, area_id = 26 }
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
		monsters = { },
		gadgets = { 205001, 205002, 205003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_205005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_205005(context, evt)
	-- 检测config_id为205002的gadget是否从GadgetState.GearAction2变为GadgetState.Default
	if 205002 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearAction2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_205005(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31001, 3, 70330314) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V3_1/Engineer_Mark"
require "V3_1/Transparent_Mark"