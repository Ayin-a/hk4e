-- 基础信息
local base_info = {
	group_id = 250079004
}

-- DEFS_MISCS
local        defs = {

        --连线形态
        patterns = 
        {
                --形态1
                [1] = 
                {
                       	[4001] = 4002,
                        	[4002] = 4003,
		[4003] = 4001,
                                [4004] = 4002,
                                [4005] = 4004,
                                [4006] = 4005,
                },
                --形态2
                [2] = 
                {
                       	[4001] = 4003,
                        	[4002] = 4004,
		[4003] = 4004,
                                [4004] = 4006,
                                [4005] = 4001,
                                [4006] = 4001,
                },
        }

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
	[4001] = { config_id = 4001, gadget_id = 70310179, pos = { x = 471.014, y = 643.701, z = -1610.373 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4002] = { config_id = 4002, gadget_id = 70310179, pos = { x = 470.098, y = 641.464, z = -1608.871 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4003] = { config_id = 4003, gadget_id = 70310179, pos = { x = 469.475, y = 643.521, z = -1607.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4004] = { config_id = 4004, gadget_id = 70310179, pos = { x = 471.118, y = 638.483, z = -1610.350 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4005] = { config_id = 4005, gadget_id = 70310179, pos = { x = 469.934, y = 636.900, z = -1608.435 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4006] = { config_id = 4006, gadget_id = 70310179, pos = { x = 468.139, y = 636.904, z = -1605.849 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4007] = { config_id = 4007, gadget_id = 70360002, pos = { x = 489.670, y = 612.303, z = -1600.035 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { is_persistent = true, init_options = { 35 } } }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1004009, name = "SELECT_OPTION_4009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_4009", action = "action_EVENT_SELECT_OPTION_4009", trigger_count = 0 }
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
		gadgets = { 4001, 4002, 4003, 4004, 4005, 4006, 4007 },
		regions = { },
		triggers = { "SELECT_OPTION_4009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_4009(context, evt)
	-- 判断是gadgetid 4007 option_id 35
	if 4007 ~= evt.param1 then
		return false	
	end
	
	if 35 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_4009(context, evt)
	-- 将本组内变量名为 "pattern" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "pattern", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 杀死Group内所有gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 250079005, kill_policy = GroupKillPolicy.GROUP_KILL_GADGET }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_gadget_by_group")
			return -1
		end
	
	return 0
end

require "V2_8/ConstellationPattern"