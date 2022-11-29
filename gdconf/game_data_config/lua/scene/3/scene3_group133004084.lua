-- 基础信息
local base_info = {
	group_id = 133004084
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 237, monster_id = 21020201, pos = { x = 2374.602, y = 282.077, z = -340.605 }, rot = { x = 0.000, y = 289.973, z = 0.000 }, level = 22, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 3 },
	{ config_id = 239, monster_id = 21010301, pos = { x = 2368.242, y = 281.780, z = -333.881 }, rot = { x = 0.000, y = 305.964, z = 0.000 }, level = 18, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 3 },
	{ config_id = 240, monster_id = 21010101, pos = { x = 2365.137, y = 281.114, z = -332.998 }, rot = { x = 0.000, y = 86.112, z = 0.000 }, level = 18, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 3 },
	{ config_id = 241, monster_id = 21010701, pos = { x = 2365.594, y = 280.188, z = -339.614 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_tag = "丘丘人", area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 319, gadget_id = 70310006, pos = { x = 2367.077, y = 281.691, z = -332.377 }, rot = { x = 0.000, y = 163.662, z = 0.000 }, level = 15, state = GadgetState.GearStart, area_id = 3 },
	{ config_id = 322, gadget_id = 70220013, pos = { x = 2377.840, y = 282.853, z = -339.092 }, rot = { x = 342.440, y = 129.089, z = 351.957 }, level = 15, area_id = 3 },
	{ config_id = 323, gadget_id = 70220014, pos = { x = 2377.573, y = 283.222, z = -343.217 }, rot = { x = 21.962, y = 312.307, z = 0.000 }, level = 15, area_id = 3 },
	{ config_id = 324, gadget_id = 70220014, pos = { x = 2376.608, y = 282.699, z = -343.309 }, rot = { x = 13.279, y = 249.550, z = 0.000 }, level = 15, area_id = 3 },
	{ config_id = 325, gadget_id = 70310004, pos = { x = 2366.766, y = 280.040, z = -341.556 }, rot = { x = 348.114, y = 53.087, z = 0.000 }, level = 15, state = GadgetState.GearStart, area_id = 3 },
	{ config_id = 326, gadget_id = 70211022, pos = { x = 2377.750, y = 283.094, z = -341.669 }, rot = { x = 20.350, y = 276.001, z = 354.357 }, level = 11, drop_tag = "战斗高级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000076, name = "ANY_MONSTER_DIE_76", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_76", action = "action_EVENT_ANY_MONSTER_DIE_76", tlog_tag = "奔狼岭_84_怪物营地_结算" }
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
	rand_suite = true
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
		monsters = { 237, 239, 240, 241 },
		gadgets = { 319, 322, 323, 324, 325, 326 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_76" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_76(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_76(context, evt)
	-- 将configid为 326 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 326, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end