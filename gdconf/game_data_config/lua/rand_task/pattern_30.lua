-- 基础信息
local base_info = {
	group_id = 139999030
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 30002, monster_id = 21010201, pos = { x = 8.991, y = 0.919, z = 3.795 }, rot = { x = 0.000, y = 231.080, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 3 },
	{ config_id = 30003, monster_id = 21010201, pos = { x = 3.177, y = 0.919, z = 2.221 }, rot = { x = 0.000, y = 113.100, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 3 },
	{ config_id = 30004, monster_id = 21010201, pos = { x = 7.522, y = 0.919, z = -2.684 }, rot = { x = 0.000, y = 287.500, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 30001, gadget_id = 70380004, pos = { x = 5.257, y = 0.419, z = -0.679 }, rot = { x = 0.000, y = 332.900, z = 0.000 }, level = 1, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1030005, name = "SPECIFIC_GADGET_HP_CHANGE_30005", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "30001", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_30005", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_30005" },
	{ config_id = 1030006, name = "GADGET_CREATE_30006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_30006", action = "action_EVENT_GADGET_CREATE_30006", trigger_count = 0 },
	{ config_id = 1030007, name = "ANY_MONSTER_DIE_30007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_30007", action = "action_EVENT_ANY_MONSTER_DIE_30007" }
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
		monsters = { 30002, 30003, 30004 },
		gadgets = { 30001 },
		regions = { },
		triggers = { "SPECIFIC_GADGET_HP_CHANGE_30005", "GADGET_CREATE_30006", "ANY_MONSTER_DIE_30007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_30005(context, evt)
	--[[判断指定configid的gadget的血量小于%20时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE or evt.param3 > 20 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_30005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "30033_fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_30006(context, evt)
	if 30001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_30006(context, evt)
	-- 将group 139999030 中config id为 30001 的物件血量设为 50 %（血量百分比不能填0，如果掉血，则走通用的掉血流程，如果加血，直接设置新的血量）。
	if 0 ~= ScriptLib.SetGadgetHp(context, 0, 30001, 50) then
			    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_hp_by_group")
	    return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_30007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_30007(context, evt)
	-- 设置操作台选项
	
	    ScriptLib.FinishRandTask(context, 30, true)
	
	
	return 0
end