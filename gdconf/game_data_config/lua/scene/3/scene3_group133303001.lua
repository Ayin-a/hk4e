-- 基础信息
local base_info = {
	group_id = 133303001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 21030201, pos = { x = -1400.207, y = 182.186, z = 3170.308 }, rot = { x = 0.000, y = 275.096, z = 0.000 }, level = 32, drop_tag = "丘丘萨满", disableWander = true, area_id = 23 },
	{ config_id = 1004, monster_id = 21010601, pos = { x = -1393.100, y = 177.486, z = 3186.126 }, rot = { x = 0.000, y = 220.014, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 23 },
	{ config_id = 1005, monster_id = 21010701, pos = { x = -1397.458, y = 176.745, z = 3195.023 }, rot = { x = 0.000, y = 357.300, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, area_id = 23 },
	{ config_id = 1006, monster_id = 21020301, pos = { x = -1400.472, y = 189.930, z = 3160.330 }, rot = { x = 0.000, y = 351.123, z = 0.000 }, level = 30, drop_tag = "丘丘暴徒", disableWander = true, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1002, gadget_id = 70211002, pos = { x = -1400.644, y = 189.928, z = 3162.336 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 1007, gadget_id = 70300087, pos = { x = -1394.131, y = 177.381, z = 3184.845 }, rot = { x = 0.000, y = 143.969, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 1008, gadget_id = 70300087, pos = { x = -1394.626, y = 190.776, z = 3153.491 }, rot = { x = 0.000, y = 187.958, z = 0.000 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1001003, name = "ANY_MONSTER_DIE_1003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1003", action = "action_EVENT_ANY_MONSTER_DIE_1003" }
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
		monsters = { 1001, 1004, 1005, 1006 },
		gadgets = { 1002, 1007, 1008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1003(context, evt)
	-- 将configid为 1002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1002, GadgetState.Default) then
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