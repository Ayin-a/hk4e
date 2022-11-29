-- 基础信息
local base_info = {
	group_id = 133304335
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 335001, monster_id = 26090201, pos = { x = -1608.154, y = 119.774, z = 2104.489 }, rot = { x = 0.000, y = 127.668, z = 0.000 }, level = 30, drop_tag = "蕈兽", disableWander = true, pose_id = 104, area_id = 21 },
	{ config_id = 335007, monster_id = 26090401, pos = { x = -1584.417, y = 120.342, z = 2106.106 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 104, area_id = 21 },
	{ config_id = 335010, monster_id = 26090401, pos = { x = -1582.675, y = 120.403, z = 2106.663 }, rot = { x = 0.000, y = 212.984, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 104, area_id = 21 },
	{ config_id = 335011, monster_id = 26090901, pos = { x = -1590.978, y = 120.508, z = 2097.632 }, rot = { x = 0.000, y = 144.819, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 104, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 335002, gadget_id = 70211002, pos = { x = -1599.410, y = 120.275, z = 2104.312 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1335003, name = "ANY_MONSTER_DIE_335003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_335003", action = "action_EVENT_ANY_MONSTER_DIE_335003", trigger_count = 0 }
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
		monsters = { 335001, 335007, 335010, 335011 },
		gadgets = { 335002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_335003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_335003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_335003(context, evt)
	-- 将configid为 335002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 335002, GadgetState.Default) then
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