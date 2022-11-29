-- 基础信息
local base_info = {
	group_id = 220000036
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
	{ config_id = 91, gadget_id = 70800001, pos = { x = 143.245, y = 1.133, z = -2.377 }, rot = { x = 0.000, y = 214.952, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000056, name = "GADGET_CREATE_56", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_56", action = "action_EVENT_GADGET_CREATE_56", trigger_count = 0 },
	{ config_id = 1000057, name = "SELECT_OPTION_57", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_57", action = "action_EVENT_SELECT_OPTION_57", trigger_count = 0, forbid_guest = false }
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
		gadgets = { 91 },
		regions = { },
		triggers = { "GADGET_CREATE_56", "SELECT_OPTION_57" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_56(context, evt)
	if 91 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_56(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {24}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_57(context, evt)
	-- 判断是gadgetid 91 option_id 24
	if 91 ~= evt.param1 then
		return false	
	end
	
	if 24 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_57(context, evt)
	-- 激活gadget_id为91的封印战斗，战斗区域半径为10，圈内进度每秒增长1，圈外进度每秒衰减2，进度达到60时判定为战斗成功（填0则取默认值100），进度衰减到0后5秒判定为战斗失败
	    if 24 == evt.param2 then
	        local ret = ScriptLib.StartSealBattle(context, 91, {radius = 10, in_add = 1, out_sub = 2, fail_time = 5, max_progress = 60})
	        --ScriptLib.PrintLog("StartSealBattle ret: " ..ret)
	    end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220000037, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 删除指定group： 220000036 ；指定config：91；物件身上指定option：24；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220000036, 91, 24) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 91 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end