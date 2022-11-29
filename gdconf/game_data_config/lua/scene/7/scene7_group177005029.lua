-- 基础信息
local base_info = {
	group_id = 177005029
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 29001, monster_id = 21010201, pos = { x = 661.539, y = 261.206, z = 627.107 }, rot = { x = 0.000, y = 41.441, z = 0.000 }, level = 36, drop_tag = "丘丘人", pose_id = 9012, area_id = 210 },
	{ config_id = 29004, monster_id = 21010201, pos = { x = 659.420, y = 260.745, z = 632.185 }, rot = { x = 0.000, y = 70.706, z = 0.000 }, level = 36, drop_tag = "丘丘人", pose_id = 9012, area_id = 210 },
	{ config_id = 29005, monster_id = 21010201, pos = { x = 665.357, y = 262.327, z = 624.529 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "丘丘人", pose_id = 9012, area_id = 210 },
	{ config_id = 29014, monster_id = 22010101, pos = { x = 664.893, y = 262.373, z = 632.461 }, rot = { x = 0.000, y = 13.407, z = 0.000 }, level = 36, drop_tag = "深渊法师", pose_id = 9013, area_id = 210 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 29002, gadget_id = 70211156, pos = { x = 664.877, y = 262.484, z = 638.862 }, rot = { x = 0.542, y = 1.656, z = 17.321 }, level = 16, drop_tag = "渊下宫活动低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, area_id = 210 },
	{ config_id = 29010, gadget_id = 70300107, pos = { x = 667.496, y = 263.117, z = 634.867 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1029003, name = "ANY_MONSTER_DIE_29003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_29003", action = "action_EVENT_ANY_MONSTER_DIE_29003" }
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
		monsters = { 29001, 29004, 29005, 29014 },
		gadgets = { 29002, 29010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_29003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_29003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_29003(context, evt)
	-- 将configid为 29002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 29002, GadgetState.Default) then
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