-- 基础信息
local base_info = {
	group_id = 133307243
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 243004, monster_id = 24020301, pos = { x = -1211.805, y = 72.221, z = 5157.689 }, rot = { x = 0.000, y = 84.285, z = 0.000 }, level = 32, drop_tag = "拟生机关", pose_id = 100, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 243005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1213.752, y = 75.341, z = 5157.498 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1243005, name = "ENTER_REGION_243005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_243005", action = "action_EVENT_ENTER_REGION_243005" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 243002, gadget_id = 70330432, pos = { x = -1216.784, y = 75.678, z = 5149.236 }, rot = { x = 26.673, y = 81.734, z = 15.292 }, level = 32, area_id = 32 },
		{ config_id = 243003, gadget_id = 70330432, pos = { x = -1222.784, y = 71.535, z = 5162.192 }, rot = { x = 21.336, y = 359.831, z = 359.105 }, level = 32, area_id = 32 },
		{ config_id = 243006, gadget_id = 70330432, pos = { x = -1223.784, y = 68.827, z = 5172.629 }, rot = { x = 331.671, y = 76.536, z = 7.844 }, level = 32, area_id = 32 }
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
		monsters = { 243004 },
		gadgets = { },
		regions = { 243005 },
		triggers = { "ENTER_REGION_243005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_243005(context, evt)
	if evt.param1 ~= 243005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_243005(context, evt)
	-- 通知groupid为133307243中,configid为：243004的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 243004, 133307243) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end