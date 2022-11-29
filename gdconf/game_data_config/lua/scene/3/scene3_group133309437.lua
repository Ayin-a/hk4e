-- 基础信息
local base_info = {
	group_id = 133309437
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 437001, monster_id = 24040301, pos = { x = -2399.207, y = 191.622, z = 5513.384 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 32, drop_tag = "元能构装体", disableWander = true, pose_id = 1004, area_id = 27, vision_level = VisionLevelType.VISION_LEVEL_NEARBY }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 437002, gadget_id = 70211002, pos = { x = -2409.421, y = 190.622, z = 5508.171 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 437004, gadget_id = 70330432, pos = { x = -2424.394, y = 191.587, z = 5513.209 }, rot = { x = 324.677, y = 163.539, z = 2.520 }, level = 32, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 27 },
	{ config_id = 437005, gadget_id = 70210101, pos = { x = -2422.760, y = 192.419, z = 5547.444 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文须弥", persistent = true, area_id = 27 },
	{ config_id = 437006, gadget_id = 70210101, pos = { x = -2415.740, y = 192.281, z = 5561.386 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文须弥", persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1437003, name = "ANY_MONSTER_DIE_437003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_437003", action = "action_EVENT_ANY_MONSTER_DIE_437003" }
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
		monsters = { 437001 },
		gadgets = { 437002, 437004, 437005, 437006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_437003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_437003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_437003(context, evt)
	-- 将configid为 437002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 437002, GadgetState.Default) then
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