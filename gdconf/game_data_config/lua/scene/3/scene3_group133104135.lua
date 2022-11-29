-- 基础信息
local base_info = {
	group_id = 133104135
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 135001, monster_id = 21011201, pos = { x = 316.053, y = 215.871, z = 318.408 }, rot = { x = 359.542, y = 350.174, z = 357.356 }, level = 19, drop_id = 1000100, disableWander = true, area_id = 9 },
	{ config_id = 135002, monster_id = 21011201, pos = { x = 323.078, y = 216.488, z = 320.493 }, rot = { x = 351.067, y = 241.929, z = 7.705 }, level = 19, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 9 },
	{ config_id = 135003, monster_id = 21011001, pos = { x = 312.876, y = 215.950, z = 322.412 }, rot = { x = 0.000, y = 82.933, z = 0.000 }, level = 19, drop_id = 1000100, disableWander = true, area_id = 9 },
	{ config_id = 135004, monster_id = 21030401, pos = { x = 314.399, y = 216.072, z = 326.918 }, rot = { x = 0.000, y = 166.178, z = 0.000 }, level = 19, drop_id = 1000100, pose_id = 9012, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 135007, gadget_id = 70220013, pos = { x = 319.192, y = 216.320, z = 322.622 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1135010, name = "ANY_GADGET_DIE_135010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_135010", action = "action_EVENT_ANY_GADGET_DIE_135010" }
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
		monsters = { 135001, 135002, 135003, 135004 },
		gadgets = { 135007 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_135010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_135010(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133104135}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_135010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133104135") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end