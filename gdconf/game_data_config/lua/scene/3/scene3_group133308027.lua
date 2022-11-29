-- 基础信息
local base_info = {
	group_id = 133308027
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 27001, monster_id = 25310301, pos = { x = -1540.544, y = 80.252, z = 4723.959 }, rot = { x = 0.000, y = 111.815, z = 0.000 }, level = 30, drop_tag = "中级镀金旅团", disableWander = true, area_id = 26 },
	{ config_id = 27004, monster_id = 25310201, pos = { x = -1587.870, y = 83.106, z = 4732.767 }, rot = { x = 0.000, y = 119.226, z = 0.000 }, level = 30, drop_tag = "中级镀金旅团", pose_id = 1, area_id = 26 },
	{ config_id = 27005, monster_id = 25210503, pos = { x = -1552.427, y = 80.283, z = 4740.594 }, rot = { x = 0.000, y = 136.232, z = 0.000 }, level = 30, drop_tag = "镀金旅团", pose_id = 9001, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 27002, gadget_id = 70211012, pos = { x = -1549.284, y = 80.423, z = 4742.745 }, rot = { x = 1.251, y = 159.556, z = 3.351 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1027003, name = "ANY_MONSTER_DIE_27003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_27003", action = "action_EVENT_ANY_MONSTER_DIE_27003" }
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
	end_suite = 2,
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 27001, 27004, 27005 },
		gadgets = { 27002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_27003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_27003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_27003(context, evt)
	-- 将configid为 27002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 27002, GadgetState.Default) then
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