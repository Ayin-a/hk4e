-- 基础信息
local base_info = {
	group_id = 133106628
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 628001, monster_id = 25070101, pos = { x = -743.172, y = 129.247, z = 1623.073 }, rot = { x = 0.000, y = 178.574, z = 0.000 }, level = 36, drop_tag = "盗宝团", disableWander = true, pose_id = 9006, area_id = 19 },
	{ config_id = 628004, monster_id = 25030301, pos = { x = -745.571, y = 129.291, z = 1622.502 }, rot = { x = 0.000, y = 131.001, z = 0.000 }, level = 36, drop_tag = "盗宝团", pose_id = 9002, area_id = 19 },
	{ config_id = 628005, monster_id = 25010401, pos = { x = -743.283, y = 129.758, z = 1616.562 }, rot = { x = 0.000, y = 337.864, z = 0.000 }, level = 36, drop_tag = "盗宝团", pose_id = 9006, area_id = 19 },
	{ config_id = 628006, monster_id = 25010301, pos = { x = -744.223, y = 130.350, z = 1614.740 }, rot = { x = 0.000, y = 336.192, z = 0.000 }, level = 36, drop_tag = "盗宝团", pose_id = 9007, area_id = 19 },
	{ config_id = 628007, monster_id = 25010301, pos = { x = -741.988, y = 130.410, z = 1614.937 }, rot = { x = 0.000, y = 336.192, z = 0.000 }, level = 36, drop_tag = "盗宝团", pose_id = 9007, area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 628002, gadget_id = 70211002, pos = { x = -743.789, y = 129.307, z = 1619.104 }, rot = { x = 2.008, y = 36.408, z = 4.804 }, level = 26, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1628003, name = "ANY_MONSTER_DIE_628003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_628003", action = "action_EVENT_ANY_MONSTER_DIE_628003" }
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
		monsters = { 628001, 628004, 628005, 628006, 628007 },
		gadgets = { 628002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_628003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_628003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_628003(context, evt)
	-- 将configid为 628002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 628002, GadgetState.Default) then
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