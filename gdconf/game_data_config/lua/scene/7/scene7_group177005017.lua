-- 基础信息
local base_info = {
	group_id = 177005017
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 17001, monster_id = 21020101, pos = { x = 392.221, y = 140.412, z = 881.750 }, rot = { x = 0.000, y = 182.744, z = 0.000 }, level = 36, drop_tag = "丘丘暴徒", affix = { 5135 }, area_id = 210 },
	{ config_id = 17004, monster_id = 21010501, pos = { x = 362.079, y = 146.167, z = 908.447 }, rot = { x = 0.000, y = 135.891, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 210 },
	{ config_id = 17005, monster_id = 21010501, pos = { x = 360.407, y = 142.190, z = 878.164 }, rot = { x = 0.000, y = 20.479, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 210 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 17002, gadget_id = 70211156, pos = { x = 368.023, y = 143.643, z = 906.408 }, rot = { x = 3.823, y = 294.782, z = 359.542 }, level = 16, drop_tag = "渊下宫活动低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, area_id = 210 },
	{ config_id = 17006, gadget_id = 70310001, pos = { x = 366.371, y = 144.320, z = 911.650 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 210 },
	{ config_id = 17007, gadget_id = 70310001, pos = { x = 356.133, y = 141.472, z = 875.640 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1017003, name = "ANY_MONSTER_DIE_17003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_17003", action = "action_EVENT_ANY_MONSTER_DIE_17003" }
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
		monsters = { 17001, 17004, 17005 },
		gadgets = { 17002, 17006, 17007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_17003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_17003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_17003(context, evt)
	-- 将configid为 17002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 17002, GadgetState.Default) then
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