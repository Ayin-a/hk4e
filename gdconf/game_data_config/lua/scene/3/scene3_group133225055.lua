-- 基础信息
local base_info = {
	group_id = 133225055
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
	{ config_id = 55001, gadget_id = 70217010, pos = { x = -6338.592, y = 259.669, z = -2583.750 }, rot = { x = 336.389, y = 33.638, z = 356.917 }, level = 26, chest_drop_id = 1050153, drop_count = 1, isOneoff = true, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 找到石头，设置对应底座可提交
	{ config_id = 1055002, name = "GADGET_STATE_CHANGE_55002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_55002", action = "action_EVENT_GADGET_STATE_CHANGE_55002" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 55003, shape = RegionShape.SPHERE, radius = 10, pos = { x = -6338.712, y = 260.034, z = -2583.680 }, area_id = 18 }
	},
	triggers = {
		{ config_id = 1055003, name = "ENTER_REGION_55003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_55003", action = "action_EVENT_ENTER_REGION_55003" }
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
		gadgets = { 55001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_55002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_55002(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 133225055, 55001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_55002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "D2_AreaC_StoneFind_1") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "stone_progress" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stone_progress", 1, 133225128) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "StoneCanPlace_C" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "StoneCanPlace_C", 1, 133225033) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "monster_start" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "monster_start", 1, 133225118) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end