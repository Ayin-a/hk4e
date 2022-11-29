-- 基础信息
local base_info = {
	group_id = 144004118
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 118001, monster_id = 21010401, pos = { x = -43.048, y = 206.828, z = -645.583 }, rot = { x = 0.000, y = 23.912, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 101 },
	{ config_id = 118004, monster_id = 21010601, pos = { x = -51.793, y = 202.274, z = -651.489 }, rot = { x = 0.000, y = 86.010, z = 0.000 }, level = 22, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 101 },
	{ config_id = 118005, monster_id = 21010201, pos = { x = -49.760, y = 202.254, z = -653.502 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, area_id = 101 },
	{ config_id = 118018, monster_id = 21010401, pos = { x = -72.634, y = 203.822, z = -658.840 }, rot = { x = 0.000, y = 248.775, z = 0.000 }, level = 25, drop_tag = "远程丘丘人", disableWander = true, pose_id = 402, area_id = 100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 118002, gadget_id = 70211002, pos = { x = -49.605, y = 202.254, z = -651.588 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1002000, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 101 },
	{ config_id = 118013, gadget_id = 70220026, pos = { x = -57.487, y = 202.274, z = -648.274 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 118014, gadget_id = 70220026, pos = { x = -47.779, y = 202.235, z = -645.477 }, rot = { x = 0.000, y = 335.838, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 118015, gadget_id = 70310006, pos = { x = -58.473, y = 202.234, z = -651.306 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 118016, gadget_id = 70310006, pos = { x = -54.634, y = 202.178, z = -658.310 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 118017, gadget_id = 70950092, pos = { x = -71.934, y = 200.000, z = -659.009 }, rot = { x = 0.000, y = 323.525, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 118019, gadget_id = 70290057, pos = { x = -39.758, y = 200.000, z = -672.525 }, rot = { x = 0.000, y = 350.067, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 118020, gadget_id = 70290061, pos = { x = -53.959, y = 200.000, z = -635.004 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1118003, name = "ANY_MONSTER_DIE_118003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_118003", action = "action_EVENT_ANY_MONSTER_DIE_118003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 118007, monster_id = 21020201, pos = { x = -44.885, y = 202.202, z = -651.714 }, rot = { x = 0.000, y = 279.877, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 101 },
		{ config_id = 118008, monster_id = 21020201, pos = { x = -54.006, y = 202.275, z = -652.070 }, rot = { x = 0.000, y = 77.643, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 101 },
		{ config_id = 118009, monster_id = 21010201, pos = { x = -49.584, y = 202.234, z = -648.616 }, rot = { x = 0.000, y = 162.751, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 101 },
		{ config_id = 118010, monster_id = 21010201, pos = { x = -49.694, y = 202.224, z = -654.984 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 101 },
		{ config_id = 118011, monster_id = 21010901, pos = { x = -44.394, y = 206.828, z = -646.613 }, rot = { x = 0.000, y = 247.905, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", area_id = 101 },
		{ config_id = 118012, monster_id = 21010901, pos = { x = -51.238, y = 208.621, z = -657.830 }, rot = { x = 0.000, y = 327.792, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", area_id = 101 }
	},
	gadgets = {
		{ config_id = 118021, gadget_id = 70290061, pos = { x = -66.364, y = 200.000, z = -646.732 }, rot = { x = 0.000, y = 299.050, z = 0.000 }, level = 1, area_id = 101 },
		{ config_id = 118022, gadget_id = 70220025, pos = { x = -42.298, y = 206.828, z = -646.422 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 }
	},
	triggers = {
		{ config_id = 1118006, name = "ANY_MONSTER_DIE_118006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_118006", action = "action_EVENT_ANY_MONSTER_DIE_118006" }
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
		monsters = { 118001, 118004, 118005, 118018 },
		gadgets = { 118002, 118013, 118014, 118015, 118016, 118017, 118019, 118020 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_118003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
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
function condition_EVENT_ANY_MONSTER_DIE_118003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_118003(context, evt)
	-- 将configid为 118002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 118002, GadgetState.Default) then
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