-- 基础信息
local base_info = {
	group_id = 133107177
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
	{ config_id = 177001, gadget_id = 70310014, pos = { x = -553.462, y = 248.212, z = 444.524 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 177003, gadget_id = 70710509, pos = { x = -559.771, y = 248.250, z = 448.030 }, rot = { x = 0.000, y = 51.280, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 177004, gadget_id = 70710510, pos = { x = -559.771, y = 248.250, z = 448.030 }, rot = { x = 0.000, y = 51.280, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 177005, gadget_id = 70710511, pos = { x = -559.771, y = 248.250, z = 448.030 }, rot = { x = 0.000, y = 51.280, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 177006, gadget_id = 70710512, pos = { x = -557.233, y = 248.977, z = 445.053 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 177007, gadget_id = 70710512, pos = { x = -557.761, y = 248.956, z = 443.489 }, rot = { x = 0.000, y = 83.363, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 177008, gadget_id = 70710512, pos = { x = -559.997, y = 248.550, z = 440.726 }, rot = { x = 0.000, y = 134.194, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 177009, gadget_id = 70310014, pos = { x = -561.993, y = 248.212, z = 454.951 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 判断点火
	{ config_id = 1177002, name = "GADGET_STATE_CHANGE_177002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_177002", action = "action_EVENT_GADGET_STATE_CHANGE_177002" },
	-- 刷新group的时候把香菱锅的火灭了
	{ config_id = 1177010, name = "GROUP_REFRESH_177010", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_177010" }
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
		gadgets = { 177001, 177003, 177004, 177005, 177006, 177007, 177008, 177009 },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = 有trigger,
		monsters = { },
		gadgets = { 177001, 177003, 177004, 177005, 177006, 177007, 177008, 177009 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_177002", "GROUP_REFRESH_177010" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = 无评委席,
		monsters = { },
		gadgets = { 177001, 177004, 177005, 177006, 177007, 177008, 177009 },
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
function condition_EVENT_GADGET_STATE_CHANGE_177002(context, evt)
	-- 检测config_id为177001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 177001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_177002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133107177") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_177010(context, evt)
	-- 将configid为 177001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 177001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end