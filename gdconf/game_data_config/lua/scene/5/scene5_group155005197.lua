-- 基础信息
local base_info = {
	group_id = 155005197
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 197001, monster_id = 21010201, pos = { x = 398.593, y = 305.954, z = 275.349 }, rot = { x = 0.000, y = 167.785, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 200 },
	{ config_id = 197008, monster_id = 21030101, pos = { x = 401.800, y = 308.132, z = 272.457 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 200 },
	{ config_id = 197010, monster_id = 21010201, pos = { x = 401.556, y = 305.952, z = 276.412 }, rot = { x = 0.000, y = 191.619, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 200 },
	{ config_id = 197011, monster_id = 21010201, pos = { x = 404.525, y = 305.929, z = 276.240 }, rot = { x = 0.000, y = 194.328, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 197002, gadget_id = 70211002, pos = { x = 404.592, y = 307.465, z = 272.941 }, rot = { x = 0.000, y = 330.152, z = 0.000 }, level = 16, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 197004, gadget_id = 70220013, pos = { x = 412.515, y = 306.034, z = 280.669 }, rot = { x = 0.000, y = 339.073, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 197005, gadget_id = 70220013, pos = { x = 413.879, y = 305.211, z = 278.336 }, rot = { x = 0.000, y = 321.591, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 197006, gadget_id = 70220013, pos = { x = 414.075, y = 305.749, z = 282.155 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 197007, gadget_id = 70220013, pos = { x = 415.513, y = 305.774, z = 280.282 }, rot = { x = 0.000, y = 334.504, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 197012, gadget_id = 70310001, pos = { x = 396.217, y = 306.154, z = 287.238 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 197013, gadget_id = 70310001, pos = { x = 413.458, y = 305.987, z = 288.637 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 197014, gadget_id = 70310001, pos = { x = 394.378, y = 306.000, z = 277.385 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1197003, name = "ANY_MONSTER_DIE_197003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_197003", action = "action_EVENT_ANY_MONSTER_DIE_197003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 197009, monster_id = 21010201, pos = { x = 398.624, y = 306.805, z = 278.671 }, rot = { x = 0.000, y = 187.016, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 200 }
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
		monsters = { 197001, 197008, 197010, 197011 },
		gadgets = { 197002, 197004, 197005, 197006, 197007, 197012, 197013, 197014 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_197003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_197003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_197003(context, evt)
	-- 将configid为 197002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 197002, GadgetState.Default) then
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