-- 基础信息
local base_info = {
	group_id = 133104690
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 690001, monster_id = 22010201, pos = { x = 765.102, y = 202.356, z = 191.033 }, rot = { x = 357.824, y = 266.699, z = 352.766 }, level = 20, drop_id = 1000100, pose_id = 9013, area_id = 9 },
	{ config_id = 690002, monster_id = 21010601, pos = { x = 759.301, y = 201.840, z = 188.269 }, rot = { x = 2.187, y = 307.174, z = 352.715 }, level = 20, drop_id = 1000100, pose_id = 9012, area_id = 9 },
	{ config_id = 690003, monster_id = 21010201, pos = { x = 750.940, y = 202.996, z = 195.504 }, rot = { x = 350.095, y = 138.718, z = 359.681 }, level = 20, drop_id = 1000100, pose_id = 9012, area_id = 9 },
	{ config_id = 690004, monster_id = 21010201, pos = { x = 750.923, y = 202.494, z = 190.057 }, rot = { x = 1.467, y = 19.129, z = 355.780 }, level = 20, drop_id = 1000100, pose_id = 9012, area_id = 9 },
	{ config_id = 690005, monster_id = 21010601, pos = { x = 759.029, y = 203.788, z = 197.469 }, rot = { x = 350.521, y = 219.250, z = 358.807 }, level = 20, drop_id = 1000100, pose_id = 9012, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 690006, gadget_id = 70300107, pos = { x = 755.246, y = 202.989, z = 193.614 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 9 },
	{ config_id = 690008, gadget_id = 70710226, pos = { x = 755.888, y = 203.568, z = 195.499 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1690007, name = "ANY_MONSTER_DIE_690007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_690007", action = "action_EVENT_ANY_MONSTER_DIE_690007" },
	{ config_id = 1690009, name = "GADGET_CREATE_690009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_690009", action = "action_EVENT_GADGET_CREATE_690009", trigger_count = 0 },
	{ config_id = 1690010, name = "SELECT_OPTION_690010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_690010", action = "action_EVENT_SELECT_OPTION_690010" }
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
		-- description = suite_1,
		monsters = { 690001, 690002, 690003, 690004, 690005 },
		gadgets = { 690006, 690008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_690007", "GADGET_CREATE_690009", "SELECT_OPTION_690010" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_ANY_MONSTER_DIE_690007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_690007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133104690") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_690009(context, evt)
	if 690008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_690009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133104690, 690008, {36}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_690010(context, evt)
	if 690008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_690010(context, evt)
	-- 删除指定group： 133104690 ；指定config：690008；物件身上指定option：36；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133104690, 690008, 36) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 690008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end