-- 基础信息
local base_info = {
	group_id = 133220066
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 66001, monster_id = 25080201, pos = { x = -2766.747, y = 217.342, z = -4232.760 }, rot = { x = 0.000, y = 37.855, z = 0.000 }, level = 27, drop_tag = "浪人武士", disableWander = true, pose_id = 1004, area_id = 11 },
	{ config_id = 66005, monster_id = 25080101, pos = { x = -2767.304, y = 217.335, z = -4237.821 }, rot = { x = 5.440, y = 231.388, z = 353.914 }, level = 27, drop_tag = "浪人武士", pose_id = 1, area_id = 11 },
	{ config_id = 66007, monster_id = 25080301, pos = { x = -2763.940, y = 217.694, z = -4231.750 }, rot = { x = 5.033, y = 266.548, z = 3.734 }, level = 27, drop_tag = "浪人武士", disableWander = true, pose_id = 1004, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 66002, gadget_id = 70211002, pos = { x = -2770.977, y = 216.550, z = -4230.761 }, rot = { x = 0.000, y = 125.889, z = 0.000 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 66004, gadget_id = 70310004, pos = { x = -2765.375, y = 217.542, z = -4231.787 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1066003, name = "ANY_MONSTER_DIE_66003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_66003", action = "action_EVENT_ANY_MONSTER_DIE_66003" }
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
		monsters = { 66001, 66005, 66007 },
		gadgets = { 66002, 66004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_66003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_66003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_66003(context, evt)
	-- 将configid为 66002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 66002, GadgetState.Default) then
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