-- 基础信息
local base_info = {
	group_id = 133107117
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 117001, monster_id = 21020301, pos = { x = -958.146, y = 278.899, z = 340.697 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 7 },
	{ config_id = 117002, monster_id = 21030401, pos = { x = -958.976, y = 279.736, z = 349.798 }, rot = { x = 0.000, y = 340.170, z = 0.000 }, level = 24, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 7 },
	{ config_id = 117003, monster_id = 21010501, pos = { x = -959.012, y = 284.104, z = 329.281 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "远程丘丘人", pose_id = 32, area_id = 7 },
	{ config_id = 117004, monster_id = 21011201, pos = { x = -955.086, y = 279.269, z = 344.285 }, rot = { x = 0.000, y = 282.324, z = 0.000 }, level = 24, drop_tag = "丘丘人", pose_id = 9002, area_id = 7 },
	{ config_id = 117005, monster_id = 21030401, pos = { x = -960.767, y = 279.736, z = 350.247 }, rot = { x = 0.000, y = 62.361, z = 0.000 }, level = 24, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 7 },
	{ config_id = 117006, monster_id = 21020301, pos = { x = -962.226, y = 279.317, z = 343.387 }, rot = { x = 0.000, y = 48.111, z = 0.000 }, level = 24, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 117007, gadget_id = 70211022, pos = { x = -953.263, y = 279.404, z = 345.695 }, rot = { x = 0.000, y = 238.311, z = 0.000 }, level = 21, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 117008, gadget_id = 70310006, pos = { x = -958.478, y = 279.454, z = 345.142 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 7 },
	{ config_id = 117009, gadget_id = 70220013, pos = { x = -963.868, y = 279.750, z = 349.207 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 7 },
	{ config_id = 117010, gadget_id = 70220013, pos = { x = -964.567, y = 279.669, z = 346.517 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 7 },
	{ config_id = 117011, gadget_id = 70220026, pos = { x = -961.975, y = 279.658, z = 347.006 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 7 },
	{ config_id = 117012, gadget_id = 70220026, pos = { x = -952.720, y = 279.484, z = 347.570 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 7 },
	{ config_id = 117013, gadget_id = 70220026, pos = { x = -951.239, y = 279.335, z = 345.846 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 7 },
	{ config_id = 117014, gadget_id = 70300086, pos = { x = -959.412, y = 279.698, z = 350.811 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1117015, name = "ANY_MONSTER_DIE_117015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_117015", action = "action_EVENT_ANY_MONSTER_DIE_117015" }
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
function condition_EVENT_ANY_MONSTER_DIE_117015(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_117015(context, evt)
	-- 将configid为 117007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 117007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end