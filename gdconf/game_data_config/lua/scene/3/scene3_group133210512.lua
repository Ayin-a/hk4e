-- 基础信息
local base_info = {
	group_id = 133210512
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 512001, monster_id = 25080201, pos = { x = -4011.422, y = 225.663, z = -645.696 }, rot = { x = 0.000, y = 191.963, z = 0.000 }, level = 32, drop_tag = "浪人武士", disableWander = true, pose_id = 1006, area_id = 17 },
	{ config_id = 512004, monster_id = 25080201, pos = { x = -4012.048, y = 225.670, z = -650.901 }, rot = { x = 0.000, y = 350.789, z = 0.000 }, level = 30, drop_tag = "浪人武士", pose_id = 1006, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 512002, gadget_id = 70211002, pos = { x = -4009.171, y = 226.686, z = -649.316 }, rot = { x = 19.144, y = 256.155, z = 356.465 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
	{ config_id = 512006, gadget_id = 70220048, pos = { x = -4009.844, y = 226.000, z = -641.575 }, rot = { x = 356.560, y = 19.318, z = 21.404 }, level = 30, area_id = 17 },
	{ config_id = 512007, gadget_id = 70220048, pos = { x = -4011.312, y = 225.297, z = -639.631 }, rot = { x = 350.349, y = 163.248, z = 341.211 }, level = 30, area_id = 17 },
	{ config_id = 512008, gadget_id = 70300104, pos = { x = -4014.875, y = 224.067, z = -641.539 }, rot = { x = 6.037, y = 353.493, z = 20.043 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1512003, name = "ANY_MONSTER_DIE_512003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_512003", action = "action_EVENT_ANY_MONSTER_DIE_512003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 512005, monster_id = 25100201, pos = { x = -4014.432, y = 224.351, z = -643.371 }, rot = { x = 0.000, y = 143.877, z = 0.000 }, level = 30, drop_tag = "高阶武士", pose_id = 1002, area_id = 17 }
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
		monsters = { 512001, 512004 },
		gadgets = { 512002, 512006, 512007, 512008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_512003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_512003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_512003(context, evt)
	-- 将configid为 512002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 512002, GadgetState.Default) then
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