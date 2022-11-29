-- 基础信息
local base_info = {
	group_id = 177006031
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 31001, monster_id = 21010401, pos = { x = 129.420, y = 217.729, z = -290.736 }, rot = { x = 0.000, y = 224.094, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", disableWander = true, affix = { 5135, 1006 }, pose_id = 9013, area_id = 210 },
	{ config_id = 31007, monster_id = 21010401, pos = { x = 130.865, y = 217.809, z = -294.016 }, rot = { x = 0.000, y = 259.053, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", disableWander = true, affix = { 5135, 1006 }, pose_id = 9013, area_id = 210 },
	{ config_id = 31012, monster_id = 21020701, pos = { x = 129.923, y = 216.982, z = -283.234 }, rot = { x = 0.000, y = 186.135, z = 0.000 }, level = 36, drop_tag = "丘丘暴徒", affix = { 5135, 1006 }, pose_id = 401, area_id = 210 },
	{ config_id = 31016, monster_id = 21030101, pos = { x = 127.981, y = 217.704, z = -286.306 }, rot = { x = 0.000, y = 125.459, z = 0.000 }, level = 36, drop_tag = "丘丘萨满", affix = { 5135, 1006 }, pose_id = 9012, area_id = 210 },
	{ config_id = 31019, monster_id = 20011201, pos = { x = 137.574, y = 217.208, z = -295.624 }, rot = { x = 0.000, y = 10.031, z = 0.000 }, level = 36, drop_tag = "史莱姆", affix = { 5135, 1006 }, area_id = 210 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 31002, gadget_id = 70211157, pos = { x = 125.658, y = 218.043, z = -287.333 }, rot = { x = 0.000, y = 83.748, z = 0.000 }, level = 16, drop_tag = "渊下宫活动中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, area_id = 210 },
	{ config_id = 31005, gadget_id = 70220013, pos = { x = 121.973, y = 218.681, z = -283.827 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 31008, gadget_id = 70220014, pos = { x = 122.650, y = 218.487, z = -285.879 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 31009, gadget_id = 70220014, pos = { x = 125.194, y = 218.369, z = -289.384 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 31010, gadget_id = 70300085, pos = { x = 137.584, y = 216.888, z = -295.784 }, rot = { x = 0.000, y = 10.031, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 31011, gadget_id = 70300087, pos = { x = 137.550, y = 217.347, z = -295.732 }, rot = { x = 0.000, y = 10.031, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 31013, gadget_id = 70300100, pos = { x = 133.284, y = 216.841, z = -289.636 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 31015, gadget_id = 70300088, pos = { x = 127.291, y = 217.948, z = -292.539 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 31017, gadget_id = 70300100, pos = { x = 133.349, y = 217.187, z = -293.013 }, rot = { x = 0.000, y = 182.462, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 31018, gadget_id = 70300088, pos = { x = 128.317, y = 218.089, z = -295.158 }, rot = { x = 0.000, y = 333.458, z = 0.000 }, level = 1, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1031003, name = "ANY_MONSTER_DIE_31003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_31003", action = "action_EVENT_ANY_MONSTER_DIE_31003", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 31014, monster_id = 22010101, pos = { x = 128.828, y = 217.726, z = -288.795 }, rot = { x = 0.000, y = 350.355, z = 0.000 }, level = 36, drop_tag = "深渊法师", affix = { 5135, 1006 }, pose_id = 9013, area_id = 210 }
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
		monsters = { 31001, 31007, 31012, 31016, 31019 },
		gadgets = { 31002, 31005, 31008, 31009, 31010, 31011, 31013, 31015, 31017, 31018 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_31003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_31003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_31003(context, evt)
	-- 将configid为 31002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 31002, GadgetState.Default) then
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