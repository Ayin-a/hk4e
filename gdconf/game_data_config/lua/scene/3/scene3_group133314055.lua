-- 基础信息
local base_info = {
	group_id = 133314055
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 55001, monster_id = 21020201, pos = { x = -925.660, y = 172.715, z = 4286.658 }, rot = { x = 0.000, y = 124.574, z = 0.000 }, level = 32, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 32 },
	{ config_id = 55004, monster_id = 28061001, pos = { x = -886.395, y = 160.198, z = 4285.698 }, rot = { x = 0.000, y = 266.193, z = 0.000 }, level = 32, drop_tag = "驮兽丘丘人", pose_id = 3, area_id = 32 },
	{ config_id = 55005, monster_id = 21011001, pos = { x = -912.287, y = 165.812, z = 4265.819 }, rot = { x = 0.000, y = 64.948, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", area_id = 32 },
	{ config_id = 55006, monster_id = 21011001, pos = { x = -908.562, y = 171.788, z = 4289.485 }, rot = { x = 0.000, y = 156.126, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", area_id = 32 },
	{ config_id = 55007, monster_id = 20011201, pos = { x = -927.242, y = 172.765, z = 4284.472 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 32 },
	{ config_id = 55011, monster_id = 21010101, pos = { x = -936.862, y = 175.091, z = 4276.427 }, rot = { x = 0.000, y = 81.594, z = 0.000 }, level = 32, drop_tag = "丘丘人", pose_id = 9012, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 55002, gadget_id = 70211012, pos = { x = -929.654, y = 173.643, z = 4288.781 }, rot = { x = 0.000, y = 119.466, z = 0.000 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 55008, gadget_id = 71700105, pos = { x = -926.044, y = 173.329, z = 4290.560 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 55009, gadget_id = 71700105, pos = { x = -923.117, y = 173.315, z = 4291.021 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 55010, gadget_id = 71700105, pos = { x = -924.957, y = 173.315, z = 4293.312 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 55012, gadget_id = 70210101, pos = { x = -924.163, y = 171.364, z = 4282.925 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", persistent = true, area_id = 32 },
	{ config_id = 55013, gadget_id = 70210101, pos = { x = -923.340, y = 173.317, z = 4291.071 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 32 },
	{ config_id = 55014, gadget_id = 70210101, pos = { x = -915.264, y = 169.450, z = 4289.519 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", persistent = true, area_id = 32 },
	{ config_id = 55015, gadget_id = 70210101, pos = { x = -887.309, y = 158.470, z = 4279.512 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1055003, name = "ANY_MONSTER_DIE_55003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_55003", action = "action_EVENT_ANY_MONSTER_DIE_55003" }
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
		monsters = { 55001, 55004, 55005, 55006, 55007, 55011 },
		gadgets = { 55002, 55008, 55009, 55010, 55012, 55013, 55014, 55015 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_55003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_55003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_55003(context, evt)
	-- 将configid为 55002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 55002, GadgetState.Default) then
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