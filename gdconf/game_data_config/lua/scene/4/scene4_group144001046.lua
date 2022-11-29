-- 基础信息
local base_info = {
	group_id = 144001046
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 46001, monster_id = 22010301, pos = { x = 308.694, y = 122.953, z = 168.907 }, rot = { x = 0.000, y = 270.991, z = 0.000 }, level = 20, drop_tag = "深渊法师", disableWander = true, area_id = 102 },
	{ config_id = 46004, monster_id = 21010901, pos = { x = 304.682, y = 122.396, z = 169.568 }, rot = { x = 0.000, y = 241.035, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 9003, area_id = 102 },
	{ config_id = 46006, monster_id = 21010201, pos = { x = 295.461, y = 121.390, z = 164.137 }, rot = { x = 0.000, y = 229.487, z = 0.000 }, level = 20, drop_tag = "丘丘人", area_id = 102 },
	{ config_id = 46007, monster_id = 21010301, pos = { x = 298.756, y = 121.200, z = 157.410 }, rot = { x = 0.000, y = 222.996, z = 0.000 }, level = 20, drop_tag = "丘丘人", area_id = 102 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 46002, gadget_id = 70211012, pos = { x = 306.842, y = 122.463, z = 172.231 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "战斗中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 102 },
	{ config_id = 46005, gadget_id = 70220013, pos = { x = 293.943, y = 121.383, z = 165.607 }, rot = { x = 345.666, y = 0.000, z = 4.336 }, level = 1, area_id = 102 },
	{ config_id = 46008, gadget_id = 70310001, pos = { x = 300.719, y = 121.515, z = 157.104 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 46009, gadget_id = 70220026, pos = { x = 300.641, y = 121.590, z = 159.658 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1046003, name = "ANY_MONSTER_DIE_46003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_46003", action = "action_EVENT_ANY_MONSTER_DIE_46003" }
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
		monsters = { 46001, 46004, 46006, 46007 },
		gadgets = { 46002, 46005, 46008, 46009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_46003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_46003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_46003(context, evt)
	-- 将configid为 46002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 46002, GadgetState.Default) then
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