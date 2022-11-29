-- 基础信息
local base_info = {
	group_id = 177008004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4001, monster_id = 22010301, pos = { x = -98.398, y = 241.801, z = 356.923 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "深渊法师", disableWander = true, affix = { 5135, 1040 }, pose_id = 9013, area_id = 210 },
	{ config_id = 4004, monster_id = 21010501, pos = { x = -102.310, y = 243.031, z = 361.903 }, rot = { x = 0.000, y = 119.669, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", disableWander = true, affix = { 1040 }, area_id = 210 },
	{ config_id = 4005, monster_id = 21010501, pos = { x = -95.604, y = 241.828, z = 362.684 }, rot = { x = 0.000, y = 213.656, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", disableWander = true, affix = { 1040 }, area_id = 210 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4002, gadget_id = 70211156, pos = { x = -98.760, y = 241.791, z = 360.740 }, rot = { x = 0.000, y = 0.000, z = 356.562 }, level = 16, drop_tag = "渊下宫活动低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, area_id = 210 },
	{ config_id = 4006, gadget_id = 70300081, pos = { x = -105.964, y = 242.459, z = 355.490 }, rot = { x = 10.262, y = 155.805, z = 5.241 }, level = 36, area_id = 210 },
	{ config_id = 4007, gadget_id = 70300081, pos = { x = -92.336, y = 239.984, z = 358.227 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 4008, gadget_id = 70300091, pos = { x = -103.396, y = 242.689, z = 365.419 }, rot = { x = 0.000, y = 0.000, z = 351.294 }, level = 36, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1004003, name = "ANY_MONSTER_DIE_4003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4003", action = "action_EVENT_ANY_MONSTER_DIE_4003" }
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
		monsters = { 4001, 4004, 4005 },
		gadgets = { 4002, 4006, 4007, 4008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4003(context, evt)
	-- 将configid为 4002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4002, GadgetState.Default) then
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