-- 基础信息
local base_info = {
	group_id = 133212488
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 488001, monster_id = 25080201, pos = { x = -4115.189, y = 201.192, z = -2350.128 }, rot = { x = 0.000, y = 260.407, z = 0.000 }, level = 27, drop_tag = "浪人武士", disableWander = true, affix = { 1101 }, pose_id = 1001, area_id = 13 },
	{ config_id = 488004, monster_id = 25080201, pos = { x = -4133.294, y = 201.552, z = -2352.908 }, rot = { x = 0.000, y = 290.309, z = 0.000 }, level = 27, drop_tag = "浪人武士", disableWander = true, affix = { 1101 }, pose_id = 1006, area_id = 13 },
	{ config_id = 488005, monster_id = 25080201, pos = { x = -4119.332, y = 201.340, z = -2348.169 }, rot = { x = 0.000, y = 208.801, z = 0.000 }, level = 27, drop_tag = "浪人武士", disableWander = true, affix = { 1101 }, pose_id = 1, area_id = 13 },
	{ config_id = 488006, monster_id = 25080201, pos = { x = -4125.332, y = 201.695, z = -2357.015 }, rot = { x = 0.000, y = 234.914, z = 0.000 }, level = 27, drop_tag = "浪人武士", disableWander = true, affix = { 1101 }, pose_id = 1004, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 488002, gadget_id = 70211002, pos = { x = -4127.523, y = 201.733, z = -2349.879 }, rot = { x = 11.942, y = 162.762, z = 2.739 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 },
	{ config_id = 488007, gadget_id = 70310006, pos = { x = -4111.597, y = 201.229, z = -2345.473 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1488003, name = "ANY_MONSTER_DIE_488003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_488003", action = "action_EVENT_ANY_MONSTER_DIE_488003" }
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
		monsters = { 488001, 488004, 488005, 488006 },
		gadgets = { 488002, 488007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_488003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_488003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_488003(context, evt)
	-- 将configid为 488002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 488002, GadgetState.Default) then
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