-- 基础信息
local base_info = {
	group_id = 133210062
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 62001, monster_id = 23050101, pos = { x = -3531.307, y = 202.542, z = -796.603 }, rot = { x = 0.000, y = 109.364, z = 0.000 }, level = 32, drop_tag = "藏镜侍女", disableWander = true, area_id = 17 },
	{ config_id = 62008, monster_id = 23030101, pos = { x = -3534.297, y = 202.647, z = -789.270 }, rot = { x = 0.000, y = 273.063, z = 0.000 }, level = 30, drop_tag = "召唤师", area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 62002, gadget_id = 70211002, pos = { x = -3535.851, y = 202.657, z = -793.666 }, rot = { x = 6.667, y = 268.471, z = 0.820 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
	{ config_id = 62004, gadget_id = 70710414, pos = { x = -3540.576, y = 201.919, z = -789.619 }, rot = { x = 0.000, y = 173.948, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 62006, gadget_id = 70220048, pos = { x = -3540.257, y = 202.142, z = -794.132 }, rot = { x = 6.000, y = 232.385, z = 358.065 }, level = 30, area_id = 17 },
	{ config_id = 62007, gadget_id = 70220048, pos = { x = -3539.808, y = 202.129, z = -796.342 }, rot = { x = 1.949, y = 198.951, z = 355.490 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1062003, name = "ANY_MONSTER_DIE_62003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_62003", action = "action_EVENT_ANY_MONSTER_DIE_62003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 62005, gadget_id = 70310004, pos = { x = -3530.458, y = 201.666, z = -797.695 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 }
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
		monsters = { 62001, 62008 },
		gadgets = { 62002, 62004, 62006, 62007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_62003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_62003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_62003(context, evt)
	-- 将configid为 62002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 62002, GadgetState.Default) then
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