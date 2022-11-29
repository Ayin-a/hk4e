-- 基础信息
local base_info = {
	group_id = 133301529
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 529004, monster_id = 25210203, pos = { x = -847.568, y = 232.696, z = 3539.961 }, rot = { x = 0.000, y = 106.044, z = 0.000 }, level = 33, drop_tag = "镀金旅团", disableWander = true, pose_id = 9003, area_id = 23 },
	{ config_id = 529005, monster_id = 25210101, pos = { x = -838.473, y = 232.460, z = 3538.593 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "镀金旅团", area_id = 23 },
	{ config_id = 529007, monster_id = 25210501, pos = { x = -837.815, y = 233.132, z = 3542.905 }, rot = { x = 0.000, y = 195.099, z = 0.000 }, level = 33, drop_tag = "镀金旅团", disableWander = true, pose_id = 9503, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 529002, gadget_id = 70211012, pos = { x = -834.565, y = 232.192, z = 3539.087 }, rot = { x = 349.356, y = 358.013, z = 359.487 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 529006, gadget_id = 70310001, pos = { x = -834.072, y = 231.911, z = 3536.902 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 529008, gadget_id = 70330216, pos = { x = -824.904, y = 232.425, z = 3539.356 }, rot = { x = 0.000, y = 335.831, z = 0.000 }, level = 33, area_id = 23 },
	{ config_id = 529009, gadget_id = 70220108, pos = { x = -825.527, y = 232.379, z = 3540.480 }, rot = { x = 0.000, y = 117.790, z = 0.000 }, level = 33, area_id = 23 },
	{ config_id = 529010, gadget_id = 70220108, pos = { x = -832.859, y = 233.665, z = 3544.513 }, rot = { x = 0.000, y = 117.790, z = 0.000 }, level = 33, area_id = 23 },
	{ config_id = 529012, gadget_id = 70220108, pos = { x = -833.718, y = 233.692, z = 3544.131 }, rot = { x = 0.000, y = 117.790, z = 0.000 }, level = 33, area_id = 23 },
	{ config_id = 529015, gadget_id = 70210101, pos = { x = -848.068, y = 232.897, z = 3536.274 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", isOneoff = true, persistent = true, area_id = 23 },
	{ config_id = 529016, gadget_id = 70210101, pos = { x = -841.325, y = 240.175, z = 3557.348 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", isOneoff = true, persistent = true, area_id = 23 },
	{ config_id = 529017, gadget_id = 70310001, pos = { x = -843.985, y = 231.347, z = 3532.334 }, rot = { x = 0.000, y = 28.257, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 529018, gadget_id = 70310001, pos = { x = -846.479, y = 239.351, z = 3556.189 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 529019, gadget_id = 70217020, pos = { x = -841.884, y = 235.701, z = 3553.235 }, rot = { x = 357.381, y = 35.264, z = 355.964 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1529003, name = "ANY_MONSTER_DIE_529003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_529003", action = "action_EVENT_ANY_MONSTER_DIE_529003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 529020, gadget_id = 70211150, pos = { x = -839.003, y = 234.421, z = 3546.898 }, rot = { x = 0.000, y = 6.642, z = 0.000 }, level = 26, chest_drop_id = 1000101, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 }
	},
	triggers = {
		{ config_id = 1529014, name = "MONSTER_BATTLE_529014", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_529014", action = "action_EVENT_MONSTER_BATTLE_529014", trigger_count = 0 }
	}
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
		monsters = { 529004, 529005, 529007 },
		gadgets = { 529002, 529006, 529008, 529009, 529010, 529012, 529015, 529016, 529017, 529018, 529019 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_529003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_529003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_529003(context, evt)
	-- 将configid为 529002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 529002, GadgetState.Default) then
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