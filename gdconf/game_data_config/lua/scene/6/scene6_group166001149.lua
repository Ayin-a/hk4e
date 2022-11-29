-- 基础信息
local base_info = {
	group_id = 166001149
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 149001, monster_id = 25010701, pos = { x = 914.643, y = 1023.668, z = 851.528 }, rot = { x = 0.000, y = 255.235, z = 0.000 }, level = 36, drop_tag = "盗宝团", disableWander = true, area_id = 300 },
	{ config_id = 149004, monster_id = 25070101, pos = { x = 930.421, y = 1023.993, z = 845.424 }, rot = { x = 0.000, y = 254.566, z = 0.000 }, level = 36, drop_tag = "盗宝团", disableWander = true, area_id = 300 },
	{ config_id = 149005, monster_id = 25010201, pos = { x = 918.128, y = 1022.228, z = 869.565 }, rot = { x = 0.000, y = 263.642, z = 0.000 }, level = 36, drop_tag = "盗宝团", disableWander = true, pose_id = 9102, area_id = 300 },
	{ config_id = 149006, monster_id = 25010301, pos = { x = 921.289, y = 1023.852, z = 857.605 }, rot = { x = 0.000, y = 59.883, z = 0.000 }, level = 36, drop_tag = "盗宝团", pose_id = 9004, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 149002, gadget_id = 70211002, pos = { x = 918.890, y = 1023.644, z = 853.354 }, rot = { x = 0.000, y = 297.573, z = 0.000 }, level = 26, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1149003, name = "ANY_MONSTER_DIE_149003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_149003", action = "action_EVENT_ANY_MONSTER_DIE_149003" }
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
		monsters = { 149001, 149004, 149005, 149006 },
		gadgets = { 149002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_149003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_149003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_149003(context, evt)
	-- 将configid为 149002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 149002, GadgetState.Default) then
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