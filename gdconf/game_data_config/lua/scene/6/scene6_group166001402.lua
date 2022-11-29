-- 基础信息
local base_info = {
	group_id = 166001402
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 402001, monster_id = 25060101, pos = { x = 771.086, y = 706.157, z = 215.180 }, rot = { x = 0.000, y = 177.766, z = 0.000 }, level = 36, drop_tag = "盗宝团", disableWander = true, pose_id = 9101, area_id = 300 },
	{ config_id = 402004, monster_id = 25010201, pos = { x = 756.152, y = 707.680, z = 212.763 }, rot = { x = 0.000, y = 237.453, z = 0.000 }, level = 36, drop_tag = "盗宝团", disableWander = true, pose_id = 9102, area_id = 300 },
	{ config_id = 402005, monster_id = 25010401, pos = { x = 764.111, y = 707.241, z = 215.163 }, rot = { x = 0.000, y = 11.846, z = 0.000 }, level = 36, drop_tag = "盗宝团", disableWander = true, pose_id = 9002, area_id = 300 },
	{ config_id = 402006, monster_id = 25070101, pos = { x = 764.718, y = 707.152, z = 217.427 }, rot = { x = 0.000, y = 194.451, z = 0.000 }, level = 36, drop_tag = "盗宝团", disableWander = true, pose_id = 9006, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 402002, gadget_id = 70211002, pos = { x = 764.585, y = 707.026, z = 218.457 }, rot = { x = 1.122, y = 51.723, z = 355.091 }, level = 26, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1402003, name = "ANY_MONSTER_DIE_402003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_402003", action = "action_EVENT_ANY_MONSTER_DIE_402003" }
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
		monsters = { 402001, 402004, 402005, 402006 },
		gadgets = { 402002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_402003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_402003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_402003(context, evt)
	-- 将configid为 402002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 402002, GadgetState.Default) then
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