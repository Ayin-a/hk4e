-- 基础信息
local base_info = {
	group_id = 133210132
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 132001, monster_id = 25100101, pos = { x = -3455.189, y = 200.000, z = -722.548 }, rot = { x = 0.000, y = 49.796, z = 0.000 }, level = 32, drop_tag = "高阶武士", disableWander = true, pose_id = 1, area_id = 17 },
	{ config_id = 132005, monster_id = 25080101, pos = { x = -3456.459, y = 200.075, z = -727.441 }, rot = { x = 0.000, y = 67.194, z = 0.000 }, level = 30, drop_tag = "浪人武士", pose_id = 1001, area_id = 17 },
	{ config_id = 132006, monster_id = 25080101, pos = { x = -3454.553, y = 200.075, z = -729.639 }, rot = { x = 0.000, y = 25.491, z = 0.000 }, level = 30, drop_tag = "浪人武士", pose_id = 1004, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 132002, gadget_id = 70211002, pos = { x = -3451.813, y = 200.106, z = -734.255 }, rot = { x = 0.000, y = 61.460, z = 0.000 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
	{ config_id = 132007, gadget_id = 70220048, pos = { x = -3453.656, y = 200.116, z = -736.165 }, rot = { x = 359.405, y = 221.661, z = 0.669 }, level = 30, area_id = 17 },
	{ config_id = 132008, gadget_id = 70220048, pos = { x = -3452.099, y = 200.038, z = -737.916 }, rot = { x = 358.900, y = 285.343, z = 0.626 }, level = 30, area_id = 17 },
	{ config_id = 132009, gadget_id = 70220051, pos = { x = -3454.539, y = 199.608, z = -735.490 }, rot = { x = 0.000, y = 229.460, z = 332.168 }, level = 30, area_id = 17 },
	{ config_id = 132010, gadget_id = 70220051, pos = { x = -3460.395, y = 199.464, z = -724.059 }, rot = { x = 0.000, y = 314.496, z = 22.555 }, level = 30, area_id = 17 },
	{ config_id = 132011, gadget_id = 70220051, pos = { x = -3460.193, y = 199.651, z = -744.797 }, rot = { x = 0.000, y = 104.910, z = 47.174 }, level = 30, area_id = 17 },
	{ config_id = 132012, gadget_id = 70220051, pos = { x = -3458.720, y = 199.453, z = -746.826 }, rot = { x = 0.000, y = 43.992, z = 342.945 }, level = 30, area_id = 17 },
	{ config_id = 132013, gadget_id = 70220052, pos = { x = -3449.288, y = 199.700, z = -741.304 }, rot = { x = 0.000, y = 271.683, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 132014, gadget_id = 70220052, pos = { x = -3449.079, y = 199.731, z = -741.992 }, rot = { x = 0.000, y = 223.072, z = 22.017 }, level = 30, area_id = 17 },
	{ config_id = 132015, gadget_id = 70220052, pos = { x = -3459.043, y = 199.768, z = -746.419 }, rot = { x = 16.863, y = 269.809, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 132016, gadget_id = 70220050, pos = { x = -3459.498, y = 199.317, z = -723.900 }, rot = { x = 0.000, y = 77.087, z = 330.427 }, level = 30, area_id = 17 },
	{ config_id = 132017, gadget_id = 70220050, pos = { x = -3450.099, y = 199.508, z = -741.850 }, rot = { x = 0.000, y = 252.673, z = 338.877 }, level = 30, area_id = 17 },
	{ config_id = 132018, gadget_id = 70220050, pos = { x = -3454.034, y = 199.402, z = -734.286 }, rot = { x = 0.000, y = 87.397, z = 335.807 }, level = 30, area_id = 17 },
	{ config_id = 132019, gadget_id = 70310019, pos = { x = -3454.206, y = 200.175, z = -728.106 }, rot = { x = 0.000, y = 39.415, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1132003, name = "ANY_MONSTER_DIE_132003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_132003", action = "action_EVENT_ANY_MONSTER_DIE_132003" }
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
		monsters = { 132001, 132005, 132006 },
		gadgets = { 132002, 132007, 132008, 132009, 132010, 132011, 132012, 132013, 132014, 132015, 132016, 132017, 132018, 132019 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_132003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_132003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_132003(context, evt)
	-- 将configid为 132002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 132002, GadgetState.Default) then
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