-- 基础信息
local base_info = {
	group_id = 133303104
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 104001, monster_id = 21011001, pos = { x = -1887.808, y = 395.121, z = 3635.248 }, rot = { x = 0.000, y = 12.082, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, area_id = 23 },
	{ config_id = 104004, monster_id = 21030601, pos = { x = -1899.063, y = 398.236, z = 3644.571 }, rot = { x = 0.000, y = 324.952, z = 0.000 }, level = 30, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 23 },
	{ config_id = 104005, monster_id = 21020701, pos = { x = -1900.930, y = 400.067, z = 3636.027 }, rot = { x = 0.000, y = 56.624, z = 0.000 }, level = 30, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 104002, gadget_id = 70211002, pos = { x = -1897.984, y = 401.924, z = 3629.047 }, rot = { x = 0.000, y = 20.076, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1104003, name = "ANY_MONSTER_DIE_104003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_104003", action = "action_EVENT_ANY_MONSTER_DIE_104003" }
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
		monsters = { 104001, 104004, 104005 },
		gadgets = { 104002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_104003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_104003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_104003(context, evt)
	-- 将configid为 104002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 104002, GadgetState.Default) then
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