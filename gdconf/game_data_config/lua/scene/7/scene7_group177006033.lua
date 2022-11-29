-- 基础信息
local base_info = {
	group_id = 177006033
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 33001, monster_id = 21010301, pos = { x = 237.172, y = 207.078, z = -336.093 }, rot = { x = 0.000, y = 308.774, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, affix = { 1006 }, pose_id = 9003, area_id = 210 },
	{ config_id = 33005, monster_id = 21010301, pos = { x = 233.747, y = 208.084, z = -335.491 }, rot = { x = 0.000, y = 53.060, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, affix = { 1006 }, pose_id = 9003, area_id = 210 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 33002, gadget_id = 70211152, pos = { x = 232.164, y = 208.268, z = -332.623 }, rot = { x = 2.807, y = 71.520, z = 356.526 }, level = 26, drop_tag = "渊下宫活动低级稻妻", state = GadgetState.ChestBramble, isOneoff = true, persistent = true, area_id = 210 },
	{ config_id = 33004, gadget_id = 70310006, pos = { x = 235.530, y = 207.408, z = -333.437 }, rot = { x = 0.000, y = 50.145, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 210 },
	{ config_id = 33007, gadget_id = 70220013, pos = { x = 247.671, y = 205.073, z = -339.357 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 33008, gadget_id = 70220014, pos = { x = 246.005, y = 205.719, z = -339.723 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1033003, name = "ANY_MONSTER_DIE_33003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_33003", action = "action_EVENT_ANY_MONSTER_DIE_33003", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 33006, monster_id = 22010401, pos = { x = 238.315, y = 205.920, z = -331.699 }, rot = { x = 0.000, y = 84.541, z = 0.000 }, level = 36, drop_tag = "深渊法师", affix = { 1006 }, area_id = 210 }
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
		monsters = { 33001, 33005 },
		gadgets = { 33002, 33004, 33007, 33008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_33003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_33003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_33003(context, evt)
	-- 将configid为 33002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 33002, GadgetState.Default) then
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