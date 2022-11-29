-- 基础信息
local base_info = {
	group_id = 133315120
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 120001, monster_id = 25010201, pos = { x = 233.241, y = 286.301, z = 2379.229 }, rot = { x = 0.000, y = 91.083, z = 0.000 }, level = 27, drop_tag = "盗宝团", pose_id = 9004, area_id = 20 },
	{ config_id = 120004, monster_id = 25020201, pos = { x = 232.690, y = 286.324, z = 2379.962 }, rot = { x = 0.000, y = 260.775, z = 0.000 }, level = 27, drop_tag = "盗宝团", pose_id = 9004, area_id = 20 },
	{ config_id = 120005, monster_id = 25030201, pos = { x = 225.954, y = 276.131, z = 2383.997 }, rot = { x = 0.000, y = 255.976, z = 0.000 }, level = 27, drop_tag = "盗宝团", pose_id = 9006, area_id = 20 },
	{ config_id = 120006, monster_id = 25070101, pos = { x = 223.678, y = 276.100, z = 2383.761 }, rot = { x = 0.000, y = 82.984, z = 0.000 }, level = 27, drop_tag = "盗宝团", pose_id = 9006, area_id = 20 },
	{ config_id = 120007, monster_id = 25010301, pos = { x = 224.807, y = 276.285, z = 2388.150 }, rot = { x = 0.000, y = 342.085, z = 0.000 }, level = 27, drop_tag = "盗宝团", pose_id = 9003, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 120002, gadget_id = 70211002, pos = { x = 233.970, y = 286.286, z = 2380.848 }, rot = { x = 0.000, y = 45.052, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1120003, name = "ANY_MONSTER_DIE_120003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_120003", action = "action_EVENT_ANY_MONSTER_DIE_120003" }
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
		monsters = { 120001, 120004, 120005, 120006, 120007 },
		gadgets = { 120002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_120003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_120003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_120003(context, evt)
	-- 将configid为 120002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 120002, GadgetState.Default) then
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