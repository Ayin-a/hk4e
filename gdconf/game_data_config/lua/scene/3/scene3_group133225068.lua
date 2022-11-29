-- 基础信息
local base_info = {
	group_id = 133225068
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 68001, monster_id = 21010301, pos = { x = -6262.145, y = 238.299, z = -2475.157 }, rot = { x = 0.000, y = 305.289, z = 0.000 }, level = 32, drop_tag = "丘丘人", disableWander = true, pose_id = 9010, climate_area_id = 7, area_id = 18 },
	{ config_id = 68004, monster_id = 21011001, pos = { x = -6263.764, y = 242.418, z = -2463.538 }, rot = { x = 0.000, y = 92.980, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", pose_id = 9003, climate_area_id = 7, area_id = 18 },
	{ config_id = 68005, monster_id = 21020701, pos = { x = -6274.607, y = 241.089, z = -2478.713 }, rot = { x = 0.000, y = 126.648, z = 0.000 }, level = 33, drop_tag = "丘丘暴徒", pose_id = 401, climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 68002, gadget_id = 70211012, pos = { x = -6279.323, y = 242.602, z = -2469.758 }, rot = { x = 0.000, y = 148.423, z = 0.000 }, level = 26, drop_tag = "战斗中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 68006, gadget_id = 70310006, pos = { x = -6272.682, y = 240.838, z = -2480.737 }, rot = { x = 344.683, y = 261.929, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1068003, name = "ANY_MONSTER_DIE_68003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_68003", action = "action_EVENT_ANY_MONSTER_DIE_68003" }
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
		monsters = { 68001, 68004, 68005 },
		gadgets = { 68002, 68006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_68003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_68003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_68003(context, evt)
	-- 将configid为 68002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 68002, GadgetState.Default) then
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