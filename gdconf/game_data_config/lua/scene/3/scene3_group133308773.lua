-- 基础信息
local base_info = {
	group_id = 133308773
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 773001, monster_id = 25210501, pos = { x = -1026.386, y = 85.479, z = 4976.921 }, rot = { x = 0.000, y = 214.268, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, area_id = 32 },
	{ config_id = 773004, monster_id = 25210301, pos = { x = -1035.739, y = 85.438, z = 4980.788 }, rot = { x = 0.000, y = 224.057, z = 0.000 }, level = 32, drop_tag = "镀金旅团", area_id = 32 },
	{ config_id = 773005, monster_id = 25210301, pos = { x = -1020.631, y = 85.275, z = 4968.539 }, rot = { x = 0.000, y = 216.149, z = 0.000 }, level = 32, drop_tag = "镀金旅团", area_id = 32 },
	{ config_id = 773006, monster_id = 25210301, pos = { x = -1026.575, y = 85.507, z = 4974.375 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9002, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 773002, gadget_id = 70211002, pos = { x = -1029.316, y = 85.340, z = 4978.666 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1773003, name = "ANY_MONSTER_DIE_773003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_773003", action = "action_EVENT_ANY_MONSTER_DIE_773003" }
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
		monsters = { 773001, 773004, 773005, 773006 },
		gadgets = { 773002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_773003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_773003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_773003(context, evt)
	-- 将configid为 773002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 773002, GadgetState.Default) then
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