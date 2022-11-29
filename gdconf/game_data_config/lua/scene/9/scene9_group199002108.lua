-- 基础信息
local base_info = {
	group_id = 199002108
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 108001, monster_id = 21010201, pos = { x = 355.360, y = 120.128, z = -534.490 }, rot = { x = 0.000, y = 219.300, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9015, area_id = 401 },
	{ config_id = 108004, monster_id = 21020101, pos = { x = 365.426, y = 120.171, z = -534.187 }, rot = { x = 0.000, y = 242.200, z = 0.000 }, level = 20, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 401 },
	{ config_id = 108005, monster_id = 21010201, pos = { x = 352.697, y = 120.000, z = -531.387 }, rot = { x = 0.000, y = 157.059, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 401 },
	{ config_id = 108006, monster_id = 21010201, pos = { x = 356.376, y = 120.026, z = -536.994 }, rot = { x = 0.000, y = 298.175, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 401 },
	{ config_id = 108007, monster_id = 21010401, pos = { x = 364.860, y = 120.064, z = -537.604 }, rot = { x = 0.000, y = 282.709, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 402, area_id = 401 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 108002, gadget_id = 70211002, pos = { x = 354.352, y = 119.694, z = -535.606 }, rot = { x = 335.226, y = 8.024, z = 6.919 }, level = 16, drop_tag = "战斗低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 401 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1108003, name = "ANY_MONSTER_DIE_108003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_108003", action = "action_EVENT_ANY_MONSTER_DIE_108003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 108008, monster_id = 21010201, pos = { x = 400.274, y = 123.068, z = -598.812 }, rot = { x = 0.000, y = 282.010, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 401 },
		{ config_id = 108009, monster_id = 21020101, pos = { x = 387.227, y = 120.000, z = -598.245 }, rot = { x = 0.000, y = 97.772, z = 0.000 }, level = 20, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 401 },
		{ config_id = 108010, monster_id = 21010201, pos = { x = 297.248, y = 123.602, z = -572.572 }, rot = { x = 0.000, y = 8.060, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 401 }
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
		monsters = { 108001, 108004, 108005, 108006, 108007 },
		gadgets = { 108002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_108003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_108003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_108003(context, evt)
	-- 将configid为 108002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 108002, GadgetState.Default) then
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