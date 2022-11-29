-- 基础信息
local base_info = {
	group_id = 133103350
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 350001, monster_id = 21020301, pos = { x = 336.540, y = 240.650, z = 1721.713 }, rot = { x = 0.000, y = 195.400, z = 0.000 }, level = 24, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 6 },
	{ config_id = 350004, monster_id = 21011201, pos = { x = 320.400, y = 236.700, z = 1733.100 }, rot = { x = 0.000, y = 99.150, z = 0.000 }, level = 24, drop_tag = "丘丘人", disableWander = true, area_id = 6 },
	{ config_id = 350005, monster_id = 21011201, pos = { x = 336.500, y = 240.700, z = 1719.800 }, rot = { x = 0.000, y = 195.420, z = 0.000 }, level = 24, drop_tag = "丘丘人", disableWander = true, area_id = 6 },
	{ config_id = 350006, monster_id = 21010401, pos = { x = 332.740, y = 237.274, z = 1707.380 }, rot = { x = 0.000, y = 193.400, z = 0.000 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, pose_id = 402, area_id = 6 },
	{ config_id = 350007, monster_id = 21010401, pos = { x = 325.400, y = 232.800, z = 1706.400 }, rot = { x = 0.000, y = 103.000, z = 0.000 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 350002, gadget_id = 70211012, pos = { x = 333.156, y = 237.302, z = 1709.083 }, rot = { x = 0.000, y = 14.310, z = 0.000 }, level = 21, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1350003, name = "ANY_MONSTER_DIE_350003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_350003", action = "action_EVENT_ANY_MONSTER_DIE_350003" }
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
		monsters = { 350001, 350004, 350005, 350006, 350007 },
		gadgets = { 350002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_350003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_350003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_350003(context, evt)
	-- 将configid为 350002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 350002, GadgetState.Default) then
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