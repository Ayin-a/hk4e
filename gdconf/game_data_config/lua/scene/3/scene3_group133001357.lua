-- 基础信息
local base_info = {
	group_id = 133001357
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 357001, monster_id = 21010201, pos = { x = 1413.366, y = 317.684, z = -1967.256 }, rot = { x = 0.000, y = 62.587, z = 0.000 }, level = 22, drop_tag = "丘丘人", pose_id = 9002, area_id = 2 },
	{ config_id = 357004, monster_id = 21010201, pos = { x = 1416.602, y = 317.902, z = -1964.940 }, rot = { x = 0.000, y = 244.424, z = 0.000 }, level = 22, drop_tag = "丘丘人", pose_id = 9002, area_id = 2 },
	{ config_id = 357005, monster_id = 21020101, pos = { x = 1402.269, y = 315.807, z = -1970.371 }, rot = { x = 0.000, y = 9.160, z = 0.000 }, level = 22, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 357002, gadget_id = 70211012, pos = { x = 1417.578, y = 317.918, z = -1968.956 }, rot = { x = 0.000, y = 330.333, z = 0.000 }, level = 11, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 2 },
	{ config_id = 357006, gadget_id = 70310001, pos = { x = 1415.088, y = 317.785, z = -1965.948 }, rot = { x = 0.000, y = 325.648, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 357007, gadget_id = 70220002, pos = { x = 1413.734, y = 317.754, z = -1966.968 }, rot = { x = 354.255, y = 74.908, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 357008, gadget_id = 70220002, pos = { x = 1416.486, y = 317.880, z = -1964.838 }, rot = { x = 0.000, y = 162.597, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 357009, gadget_id = 70220015, pos = { x = 1424.345, y = 319.108, z = -1966.871 }, rot = { x = 90.000, y = 138.749, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 357010, gadget_id = 70220015, pos = { x = 1424.036, y = 319.241, z = -1968.295 }, rot = { x = 90.000, y = 143.840, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 357011, gadget_id = 70220016, pos = { x = 1423.031, y = 319.319, z = -1969.527 }, rot = { x = 90.000, y = 17.422, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 357012, gadget_id = 70220016, pos = { x = 1421.931, y = 319.199, z = -1970.598 }, rot = { x = 83.344, y = 237.471, z = 258.312 }, level = 15, area_id = 2 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1357003, name = "ANY_MONSTER_DIE_357003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_357003", action = "action_EVENT_ANY_MONSTER_DIE_357003" }
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
		monsters = { 357001, 357004, 357005 },
		gadgets = { 357002, 357006, 357007, 357008, 357009, 357010, 357011, 357012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_357003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_357003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_357003(context, evt)
	-- 将configid为 357002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 357002, GadgetState.Default) then
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