-- 基础信息
local base_info = {
	group_id = 133108065
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 65006, monster_id = 26060101, pos = { x = 163.326, y = 201.079, z = -688.421 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "雷萤", area_id = 7 },
	{ config_id = 65007, monster_id = 26060101, pos = { x = 161.730, y = 201.079, z = -689.305 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "雷萤", area_id = 7 },
	{ config_id = 65008, monster_id = 26060101, pos = { x = 161.672, y = 201.079, z = -687.198 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "雷萤", area_id = 7 },
	{ config_id = 65009, monster_id = 26060201, pos = { x = 163.600, y = 201.079, z = -687.203 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "雷萤", area_id = 7 },
	{ config_id = 65010, monster_id = 26060201, pos = { x = 161.255, y = 201.079, z = -688.360 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "雷萤", area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 65002, gadget_id = 70360001, pos = { x = 162.143, y = 201.324, z = -688.260 }, rot = { x = 0.000, y = 175.400, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 7 },
	{ config_id = 65003, gadget_id = 70360040, pos = { x = 162.188, y = 201.281, z = -688.477 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1065004, name = "GADGET_CREATE_65004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_65004", action = "action_EVENT_GADGET_CREATE_65004", trigger_count = 0 },
	{ config_id = 1065005, name = "SELECT_OPTION_65005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_65005", action = "action_EVENT_SELECT_OPTION_65005" }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 65002, 65003 },
		regions = { },
		triggers = { "GADGET_CREATE_65004", "SELECT_OPTION_65005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 65006, 65007, 65008, 65009, 65010 },
		gadgets = { },
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
function condition_EVENT_GADGET_CREATE_65004(context, evt)
	-- 判断是gadgetid 65002
	if 65002 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_65004(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {169}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_65005(context, evt)
	if 65002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_65005(context, evt)
	-- 删除指定group： 133108065 ；指定config：65002；物件身上指定option：169；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133108065, 65002, 169) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2011, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133108065, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end