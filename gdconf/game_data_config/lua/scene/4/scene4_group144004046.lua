-- 基础信息
local base_info = {
	group_id = 144004046
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 46001, monster_id = 21020101, pos = { x = -650.579, y = 120.075, z = -217.559 }, rot = { x = 0.000, y = 180.038, z = 0.000 }, level = 20, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 103 },
	{ config_id = 46004, monster_id = 21010201, pos = { x = -655.955, y = 120.135, z = -231.515 }, rot = { x = 0.000, y = 48.011, z = 0.000 }, level = 20, drop_tag = "丘丘人", area_id = 103 },
	{ config_id = 46005, monster_id = 21010201, pos = { x = -658.549, y = 120.129, z = -233.999 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "丘丘人", area_id = 103 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 46002, gadget_id = 70211002, pos = { x = -649.119, y = 120.343, z = -229.028 }, rot = { x = 0.000, y = 333.599, z = 0.000 }, level = 16, drop_tag = "战斗低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 103 }
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
		monsters = { 46001, 46004, 46005 },
		gadgets = { 46002 },
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