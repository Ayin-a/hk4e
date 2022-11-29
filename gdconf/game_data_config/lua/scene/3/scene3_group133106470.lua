-- 基础信息
local base_info = {
	group_id = 133106470
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 470004, monster_id = 21010101, pos = { x = -773.132, y = 137.396, z = 1983.856 }, rot = { x = 0.000, y = 48.595, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9011, area_id = 19 },
	{ config_id = 470005, monster_id = 20011201, pos = { x = -771.768, y = 137.343, z = 1984.945 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "史莱姆", disableWander = true, area_id = 19 },
	{ config_id = 470007, monster_id = 21020301, pos = { x = -763.508, y = 138.318, z = 1994.692 }, rot = { x = 0.000, y = 239.264, z = 0.000 }, level = 36, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 19 },
	{ config_id = 470008, monster_id = 21010101, pos = { x = -773.278, y = 137.708, z = 1972.674 }, rot = { x = 0.000, y = 157.729, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9017, area_id = 19 },
	{ config_id = 470009, monster_id = 21010101, pos = { x = -786.057, y = 138.179, z = 1981.490 }, rot = { x = 0.000, y = 283.781, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9017, area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 470002, gadget_id = 70211012, pos = { x = -780.727, y = 137.792, z = 1985.931 }, rot = { x = 0.000, y = 86.294, z = 0.000 }, level = 26, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	{ config_id = 470006, gadget_id = 70300087, pos = { x = -771.734, y = 137.291, z = 1984.853 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1470003, name = "ANY_MONSTER_DIE_470003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_470003", action = "action_EVENT_ANY_MONSTER_DIE_470003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 470001, monster_id = 21010101, pos = { x = -770.576, y = 137.411, z = 1983.159 }, rot = { x = 0.000, y = 327.844, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 19 }
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
		monsters = { 470004, 470005, 470007, 470008, 470009 },
		gadgets = { 470002, 470006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_470003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_470003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_470003(context, evt)
	-- 将configid为 470002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 470002, GadgetState.Default) then
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