-- 基础信息
local base_info = {
	group_id = 133301478
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 478001, monster_id = 25310101, pos = { x = -349.243, y = 224.919, z = 3749.953 }, rot = { x = 0.000, y = 239.586, z = 0.000 }, level = 27, drop_tag = "中级镀金旅团", disableWander = true, pose_id = 9003, area_id = 22 },
	{ config_id = 478004, monster_id = 25210202, pos = { x = -350.500, y = 224.839, z = 3737.425 }, rot = { x = 0.000, y = 278.791, z = 0.000 }, level = 27, drop_tag = "镀金旅团", disableWander = true, pose_id = 9003, area_id = 22 },
	{ config_id = 478006, monster_id = 25210303, pos = { x = -362.544, y = 220.581, z = 3751.179 }, rot = { x = 0.000, y = 201.146, z = 0.000 }, level = 27, drop_tag = "镀金旅团", area_id = 22 },
	{ config_id = 478007, monster_id = 25210202, pos = { x = -354.819, y = 222.738, z = 3739.226 }, rot = { x = 0.000, y = 201.146, z = 0.000 }, level = 27, drop_tag = "镀金旅团", disableWander = true, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 478002, gadget_id = 70211012, pos = { x = -353.434, y = 224.940, z = 3750.402 }, rot = { x = 0.000, y = 262.499, z = 0.000 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 },
	{ config_id = 478008, gadget_id = 70330197, pos = { x = -337.612, y = 225.890, z = 3737.620 }, rot = { x = 0.000, y = 10.778, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 478009, gadget_id = 70310009, pos = { x = -357.711, y = 222.328, z = 3736.413 }, rot = { x = 0.000, y = 48.447, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 478010, gadget_id = 70220048, pos = { x = -352.067, y = 224.882, z = 3735.390 }, rot = { x = 0.000, y = 319.509, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 478012, gadget_id = 70220048, pos = { x = -347.892, y = 225.105, z = 3743.070 }, rot = { x = 0.000, y = 319.509, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 478013, gadget_id = 70217020, pos = { x = -313.389, y = 240.562, z = 3739.372 }, rot = { x = 10.202, y = 165.381, z = 335.806 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1478003, name = "ANY_MONSTER_DIE_478003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_478003", action = "action_EVENT_ANY_MONSTER_DIE_478003" }
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
		monsters = { 478001, 478004, 478006, 478007 },
		gadgets = { 478002, 478008, 478009, 478010, 478012, 478013 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_478003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_478003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_478003(context, evt)
	-- 将configid为 478002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 478002, GadgetState.Default) then
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