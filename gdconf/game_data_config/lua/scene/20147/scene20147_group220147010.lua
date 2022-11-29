-- 基础信息
local base_info = {
	group_id = 220147010
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
	{ config_id = 10001, gadget_id = 70290508, pos = { x = 748.304, y = 90.701, z = 366.475 }, rot = { x = 0.000, y = 28.887, z = 0.000 }, level = 30, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 10002, gadget_id = 70290484, pos = { x = 748.304, y = 90.584, z = 366.475 }, rot = { x = 0.000, y = 28.887, z = 0.000 }, level = 30, isOneoff = true, persistent = true },
	{ config_id = 10003, gadget_id = 70900201, pos = { x = 748.304, y = 93.260, z = 366.475 }, rot = { x = 0.000, y = 246.934, z = 0.000 }, level = 30 },
	{ config_id = 10004, gadget_id = 70360001, pos = { x = 748.304, y = 90.701, z = 366.475 }, rot = { x = 0.000, y = 28.887, z = 0.000 }, level = 30, isOneoff = true, persistent = true, worktop_config = { init_options = { 220 } } }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1010005, name = "SELECT_OPTION_10005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_10005", action = "action_EVENT_SELECT_OPTION_10005" }
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
		gadgets = { 10001, 10002, 10003 },
		regions = { },
		triggers = { "SELECT_OPTION_10005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 10004 },
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
function condition_EVENT_SELECT_OPTION_10005(context, evt)
	-- 判断是gadgetid 10004 option_id 220
	if 10004 ~= evt.param1 then
		return false	
	end
	
	if 220 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_10005(context, evt)
	-- 删除指定group： 220147010 ；指定config：10004；物件身上指定option：220；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220147010, 10004, 220) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 10001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 10001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "KeyNum" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "KeyNum", 1, 220147002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 10003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end