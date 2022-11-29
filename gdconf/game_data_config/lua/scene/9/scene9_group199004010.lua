-- 基础信息
local base_info = {
	group_id = 199004010
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
	{ config_id = 10001, gadget_id = 70710090, pos = { x = -380.717, y = 193.896, z = -602.499 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, area_id = 400 },
	{ config_id = 10002, gadget_id = 70710090, pos = { x = -379.003, y = 175.434, z = -601.844 }, rot = { x = 43.464, y = 307.172, z = 359.217 }, level = 1, area_id = 400 },
	{ config_id = 10003, gadget_id = 70710090, pos = { x = -380.717, y = 183.571, z = -602.499 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, area_id = 400 },
	{ config_id = 10004, gadget_id = 70710761, pos = { x = -365.854, y = 205.894, z = -607.661 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 400 },
	{ config_id = 10005, gadget_id = 70360001, pos = { x = -365.941, y = 204.986, z = -608.191 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 64 } }, area_id = 400 },
	{ config_id = 10006, gadget_id = 70710090, pos = { x = -377.021, y = 200.315, z = -606.767 }, rot = { x = 37.216, y = 294.269, z = 312.311 }, level = 1, area_id = 400 },
	{ config_id = 10007, gadget_id = 70710090, pos = { x = -366.254, y = 206.382, z = -606.838 }, rot = { x = 17.469, y = 276.962, z = 304.194 }, level = 1, area_id = 400 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1010008, name = "SELECT_OPTION_10008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_10008", action = "action_EVENT_SELECT_OPTION_10008" }
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
		gadgets = { 10001, 10002, 10003, 10004, 10005, 10006, 10007 },
		regions = { },
		triggers = { "SELECT_OPTION_10008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
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
function condition_EVENT_SELECT_OPTION_10008(context, evt)
	-- 判断是gadgetid 10005 option_id 64
	if 10005 ~= evt.param1 then
		return false	
	end
	
	if 64 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_10008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7902503finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除指定group： 199004010 ；指定config：10005；物件身上指定option：64；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 199004010, 10005, 64) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end