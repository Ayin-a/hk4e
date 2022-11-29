-- 基础信息
local base_info = {
	group_id = 133310101
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 101003, monster_id = 24040301, pos = { x = -2364.352, y = 118.982, z = 5039.549 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, drop_tag = "元能构装体", disableWander = true, affix = { 5205 }, pose_id = 1004, area_id = 27 },
	{ config_id = 101005, monster_id = 24040301, pos = { x = -2337.816, y = 118.982, z = 5058.056 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 32, drop_tag = "元能构装体", disableWander = true, affix = { 5205 }, pose_id = 1004, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 101001, gadget_id = 70330432, pos = { x = -2336.264, y = 118.510, z = 5035.366 }, rot = { x = 352.683, y = 294.798, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 101002, gadget_id = 70330432, pos = { x = -2366.594, y = 118.806, z = 5062.151 }, rot = { x = 0.000, y = 210.502, z = 343.055 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1101007, name = "VARIABLE_CHANGE_101007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_101007", action = "action_EVENT_VARIABLE_CHANGE_101007" }
}

-- 变量
variables = {
	{ config_id = 1, name = "created", value = 0, no_refresh = true }
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
		monsters = { 101003, 101005 },
		gadgets = { 101001, 101002 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_101007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_101007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"created"为1
	if ScriptLib.GetGroupVariableValue(context, "created") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_101007(context, evt)
	-- 通知groupid为133310101中,configid为：101003的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 101003, 133310101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为133310101中,configid为：101005的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 101005, 133310101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end