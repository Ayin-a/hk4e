-- 基础信息
local base_info = {
	group_id = 133104552
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 552001, monster_id = 25010601, pos = { x = 116.505, y = 252.955, z = 41.007 }, rot = { x = 359.928, y = 170.033, z = 356.878 }, level = 19, drop_tag = "盗宝团", disableWander = true, pose_id = 9004, area_id = 7 },
	{ config_id = 552004, monster_id = 25020201, pos = { x = 113.576, y = 253.040, z = 39.605 }, rot = { x = 0.000, y = 117.724, z = 0.000 }, level = 19, drop_tag = "盗宝团", disableWander = true, pose_id = 9004, area_id = 7 },
	{ config_id = 552005, monster_id = 25030201, pos = { x = 118.861, y = 252.842, z = 38.583 }, rot = { x = 0.393, y = 252.229, z = 0.041 }, level = 19, drop_tag = "盗宝团", disableWander = true, pose_id = 9002, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 552002, gadget_id = 70211002, pos = { x = 116.838, y = 252.851, z = 37.224 }, rot = { x = 1.527, y = 313.558, z = 359.490 }, level = 16, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 552006, gadget_id = 70220013, pos = { x = 119.162, y = 252.943, z = 42.300 }, rot = { x = 0.152, y = 48.227, z = 358.218 }, level = 19, area_id = 7 },
	{ config_id = 552007, gadget_id = 70220013, pos = { x = 117.156, y = 253.158, z = 43.606 }, rot = { x = 0.024, y = 297.533, z = 1.485 }, level = 19, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1552003, name = "ANY_MONSTER_DIE_552003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_552003", action = "action_EVENT_ANY_MONSTER_DIE_552003" }
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
		monsters = { 552001, 552004, 552005 },
		gadgets = { 552002, 552006, 552007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_552003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_552003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_552003(context, evt)
	-- 将configid为 552002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 552002, GadgetState.Default) then
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