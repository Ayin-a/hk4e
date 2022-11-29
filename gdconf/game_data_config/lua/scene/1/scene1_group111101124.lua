-- 基础信息
local base_info = {
	group_id = 111101124
}

-- Trigger变量
local defs = {
	gadget_Teleport_1 = 124001,
	gadget_Teleport_2 = 124002,
	gadget_Teleport_3 = 124004,
	gadget_Teleport_4 = 124005,
	pointarray_1 = 110100025,
	pointarray_2 = 110100029,
	pointarray_3 = 110100030,
	pointarray_4 = 0,
	gadget_TeleportOperator_1 = 124006,
	gadget_TeleportOperator_2 = 124007,
	gadget_TeleportOperator_3 = 124008,
	gadget_TeleportOperator_4 = 124009,
	group_ID = 111101124,
	pointarray_Rotate = 110100028
}

-- DEFS_MISCS
connectInfo = 
{
	{defs.gadget_Teleport_1,defs.gadget_Teleport_2,defs.pointarray_1},
	{defs.gadget_Teleport_2,defs.gadget_Teleport_3,defs.pointarray_2},
	{defs.gadget_Teleport_3,defs.gadget_Teleport_4,defs.pointarray_3}
}

TeleportOwnerShip = 
{
	{defs.gadget_TeleportOperator_1, defs.gadget_Teleport_1},
	{defs.gadget_TeleportOperator_2, defs.gadget_Teleport_2},
	{defs.gadget_TeleportOperator_3, defs.gadget_Teleport_3},
	{defs.gadget_TeleportOperator_4, defs.gadget_Teleport_4}
}

staticForwardSet = {1,2,3,4,5,6,7,8,9,10}
staticBackwardSet = {10,9,8,7,6,5,4,3,2,1}



function GetTeleportNameByConfigID(context, config_id)
	for k,v  in pairs(defs)  do
		if v == config_id then 
			return k
		end
	end
end

function CheckIsConnected(context,teleport_aID,teleport_bID)

	--获取角度
	ScriptLib.PrintLog("CheckConnected from "..teleport_aID .. " to "..teleport_bID)
	local yrotation_a = ScriptLib.GetRotationByEntityId(context, ScriptLib.GetEntityIdByConfigId(context,teleport_aID)).y
	local yrotation_b = ScriptLib.GetRotationByEntityId(context, ScriptLib.GetEntityIdByConfigId(context,teleport_bID)).y
	ScriptLib.PrintLog("yrotation_a = "..yrotation_a .. "| yrotation_a =  "..yrotation_b)
	--转换为弧度
	local yrad_a = math.rad(yrotation_a) 
	local yrad_b = math.rad(yrotation_b)
	ScriptLib.PrintLog("yrad_a = "..yrad_a .. "| yrad_b =  "..yrad_b)

	--编辑器中的XZ和运行下的对应关系是反的,所以这里XZ左边调换了一下
	local dir_a = {x = math.sin(yrad_a), y = 0, z = math.cos(yrad_a)}
	local dir_b = {x = math.sin(yrad_b), y = 0, z = math.cos(yrad_b)}
	ScriptLib.PrintLog("dir_a : x = "..dir_a.x.." , y = "..dir_a.y.." , z = "..dir_a.z)
	ScriptLib.PrintLog("dir_b : x = "..dir_b.x.." , y = "..dir_b.y.." , z = "..dir_b.z)
	
	--获取两个点位置
	local pos_a = ScriptLib.GetPosByEntityId(context, ScriptLib.GetEntityIdByConfigId(context,teleport_aID))
	ScriptLib.PrintLog("pos_a : x = "..pos_a.x.." , y = "..pos_a.y.." , z = "..pos_a.z)
	local pos_b = ScriptLib.GetPosByEntityId(context, ScriptLib.GetEntityIdByConfigId(context,teleport_bID))
	ScriptLib.PrintLog("pos_b : x = "..pos_b.x.." , y = "..pos_b.y.." , z = "..pos_b.z)

	--计算两个点之间的方向,并且Normalize
	local diratob = {x = pos_b.x - pos_a.x,y = 0,z = pos_b.z - pos_a.z}
	local norDirAtoB = Normalize({x = pos_b.x - pos_a.x,y = 0,z = pos_b.z - pos_a.z})
	ScriptLib.PrintLog("norDirAtoB : x = "..norDirAtoB.x.." , y = "..norDirAtoB.y.." , z = "..norDirAtoB.z)
	local dirbtoa = {x = pos_a.x - pos_b.x,y = 0,z = pos_a.z - pos_b.z}
	local norDirBtoA = Normalize({x = pos_a.x - pos_b.x,y = 0,z = pos_a.z - pos_b.z})
	ScriptLib.PrintLog("norDirBtoA : x = "..norDirBtoA.x.." , y = "..norDirBtoA.y.." , z = "..norDirBtoA.z)

	--计算两个点的点乘结果
	local dotvalue_a = dir_a.x * norDirAtoB.x + dir_a.y * norDirAtoB.y + dir_a.z * norDirAtoB.z
	local dotvalue_b = dir_b.x * norDirBtoA.x + dir_b.y * norDirBtoA.y + dir_b.z * norDirBtoA.z

	ScriptLib.PrintLog("dotvalue_a "..dotvalue_a)
	ScriptLib.PrintLog("dotvalue_b "..dotvalue_b)

	--判断点乘结果是否大于0.5,也就是正负 45度范围
	if dotvalue_a >= 0.5  and dotvalue_b >= 0.5 then
		return true 
	end
	
	ScriptLib.PrintLog("invalid cos = ".. dotvalue_a)

	return false

end

--获取所有关联的传送点
function FindRelatedTargets(context,teleport_ID)
	local relatedtarget ={}
	for i=1,#connectInfo do
		if connectInfo[i][1] == teleport_ID or connectInfo[i][2] == teleport_ID then
			if connectInfo[i][1] == teleport_ID then
				table.insert(relatedtarget,{connectInfo[i][2],connectInfo[i][3],staticForwardSet})
			elseif connectInfo[i][2] == teleport_ID then
				table.insert(relatedtarget,{connectInfo[i][1],connectInfo[i][3],staticBackwardSet})
			end
		end
	end
	return relatedtarget
end

--在所有关联传送点中找到激活链接的,如果没有则返回nil
function GetConnectedTeleport(context,teleport_id)
	local related 
	related = FindRelatedTargets(context,teleport_id)

	for i=1,#related do
		if CheckIsConnected(context,teleport_id,related[i][1]) == true then 
			return related[i]
		end
	end
	return nil
end

--数学计算归一化
function Normalize(vet)
	local magnitude = math.sqrt(vet.x * vet.x + vet.y * vet.y + vet.z * vet.z)
	local newvect = {x = vet.x/magnitude, y = vet.y / magnitude, z = vet.z / magnitude}
	return newvect
end

--更新所有传送门的状态表现
function UpdateTeleportState(context)
	
	local teleportname
	for i=1,4 do
			local connect = GetConnectedTeleport(context,TeleportOwnerShip[i][2])
			
		if connect == nil then 
			
			ScriptLib.SetGadgetStateByConfigId(context, TeleportOwnerShip[i][2], GadgetState.Default)
			teleportname = GetTeleportNameByConfigID(context, TeleportOwnerShip[i][2])
			teleportname = teleportname.."_isActive"
			ScriptLib.SetGroupVariableValue(context, teleportname, 0)
			ScriptLib.PrintLog("connect nothing : "..i)
		else

			--ScriptLib.PrintLog("connect count = "..#connect)
			--ScriptLib.PrintLog("connect{"..connect[1].." , "..connect[2].." , "..connect[3].."}")
			ScriptLib.SetGadgetStateByConfigId(context, TeleportOwnerShip[i][2], GadgetState.GearStart)
			teleportname = GetTeleportNameByConfigID(context, TeleportOwnerShip[i][2])
			teleportname = teleportname.."_isActive"
			ScriptLib.SetGroupVariableValue(context, teleportname, 1)
			ScriptLib.PrintLog("connect something = "..i)
		end

	end
end

--传送玩家, 只要给到对应的Teleportid就可以
function TeleportAction(context,teleport_id)
	local related = FindRelatedTargets(context, teleport_id)
	for i=1,#related do
		if CheckIsConnected(context,teleport_id,related[i][1]) == true then 
			ScriptLib.MoveAvatarByPointArray(context, context.uid, related[i][2], related[i][3], {speed=10}, "{\"MarkType\":1}")
			return 0
		end
	end
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- Owner = 124006
	{ config_id = 124001, gadget_id = 70950095, pos = { x = 2528.555, y = 211.757, z = -1362.380 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	-- Owner = 124007 
	{ config_id = 124002, gadget_id = 70950095, pos = { x = 2558.034, y = 212.384, z = -1363.433 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	-- Owner = 124008
	{ config_id = 124004, gadget_id = 70950095, pos = { x = 2556.840, y = 212.384, z = -1340.470 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	-- Owner= 124009
	{ config_id = 124005, gadget_id = 70950095, pos = { x = 2591.085, y = 211.799, z = -1344.257 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	-- Target = 124001
	{ config_id = 124006, gadget_id = 70360001, pos = { x = 2528.462, y = 212.380, z = -1362.534 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- Target = 124002
	{ config_id = 124007, gadget_id = 70360001, pos = { x = 2558.189, y = 212.385, z = -1363.738 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- Target = 124004
	{ config_id = 124008, gadget_id = 70360001, pos = { x = 2556.645, y = 211.826, z = -1340.618 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- Target = 124005
	{ config_id = 124009, gadget_id = 70360001, pos = { x = 2590.971, y = 211.821, z = -1344.219 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	-- Target = 124004
	{ config_id = 124003, shape = RegionShape.SPHERE, radius = 2, pos = { x = 2556.895, y = 212.700, z = -1340.721 } },
	-- Target = 124001
	{ config_id = 124016, shape = RegionShape.SPHERE, radius = 2, pos = { x = 2557.644, y = 211.813, z = -1364.599 } },
	-- Target = 124002
	{ config_id = 124017, shape = RegionShape.SPHERE, radius = 2, pos = { x = 2529.045, y = 212.375, z = -1362.248 } },
	-- Target = 124003
	{ config_id = 124018, shape = RegionShape.SPHERE, radius = 2, pos = { x = 2591.184, y = 211.779, z = -1344.420 } }
}

-- 触发器
triggers = {
	-- Target = 124004
	{ config_id = 1124003, name = "ENTER_REGION_124003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_124003", action = "action_EVENT_ENTER_REGION_124003", trigger_count = 0 },
	{ config_id = 1124010, name = "GROUP_LOAD_124010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_124010", trigger_count = 0 },
	{ config_id = 1124011, name = "SELECT_OPTION_124011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_124011", action = "action_EVENT_SELECT_OPTION_124011", trigger_count = 0 },
	-- 传送点旋转判断
	{ config_id = 1124015, name = "PLATFORM_REACH_POINT_124015", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_124015", action = "action_EVENT_PLATFORM_REACH_POINT_124015", trigger_count = 0 },
	-- Target = 124001
	{ config_id = 1124016, name = "ENTER_REGION_124016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_124016", action = "action_EVENT_ENTER_REGION_124016", trigger_count = 0 },
	-- Target = 124002
	{ config_id = 1124017, name = "ENTER_REGION_124017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_124017", action = "action_EVENT_ENTER_REGION_124017", trigger_count = 0 },
	-- Target = 124003
	{ config_id = 1124018, name = "ENTER_REGION_124018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_124018", action = "action_EVENT_ENTER_REGION_124018", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gadget_Teleport_1_isActive", value = 0, no_refresh = false },
	{ config_id = 2, name = "gadget_Teleport_2_isActive", value = 0, no_refresh = false },
	{ config_id = 3, name = "gadget_Teleport_3_isActive", value = 0, no_refresh = false },
	{ config_id = 4, name = "gadget_Teleport_4_isActive", value = 0, no_refresh = false }
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
		monsters = { },
		gadgets = { 124001, 124002, 124004, 124005, 124006, 124007, 124008, 124009 },
		regions = { 124003, 124016, 124017, 124018 },
		triggers = { "ENTER_REGION_124003", "GROUP_LOAD_124010", "SELECT_OPTION_124011", "PLATFORM_REACH_POINT_124015", "ENTER_REGION_124016", "ENTER_REGION_124017", "ENTER_REGION_124018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_124003(context, evt)
	if evt.param1 ~= 124003 then return false end
	
	-- 判断变量"gadget_Teleport_3_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_3_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_124003(context, evt)
			--gadget_Teleport_3 trigger
			local teleportid = defs["gadget_Teleport_3"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_124010(context, evt)
		if defs.gadget_TeleportOperator_1 ~= 0 then 
			ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_ID, defs.gadget_TeleportOperator_1, {31})
		end
		if defs.gadget_TeleportOperator_2 ~= 0 then 
			ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_ID, defs.gadget_TeleportOperator_2, {31})
		end
		if defs.gadget_TeleportOperator_3 ~= 0 then 
			ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_ID, defs.gadget_TeleportOperator_3, {31})
		end
		if defs.gadget_TeleportOperator_4 ~= 0 then 
			ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_ID, defs.gadget_TeleportOperator_4, {31})
		end
					
			
		return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_124011(context, evt)
			-- 判断是gadgetid 124006 option_id 31
			if defs.gadget_TeleportOperator_1 ~= evt.param1 and 
				defs.gadget_TeleportOperator_2 ~= evt.param1 and
				defs.gadget_TeleportOperator_3 ~= evt.param1 and
				defs.gadget_TeleportOperator_4 ~= evt.param1 then
				return false	
			end
			
			if 31 ~= evt.param2 then
				return false
			end
		return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_124011(context, evt)
		local localtarget
	
			for i=1,4 do
				if TeleportOwnerShip[i][1] == evt.param1 then
					localtarget = TeleportOwnerShip[i][2]
				end
			end
			ScriptLib.PrintLog("evt.gadgetid = "..evt.param1)
			ScriptLib.PrintLog("localtarget = "..localtarget)
			ScriptLib.SetPlatformPointArray(context, localtarget, defs.pointarray_Rotate, { 1 }, { route_type = 0,turn_mode=true })
			return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_124015(context, evt)
			-- 判断是gadgetid 124006 option_id 31
		ScriptLib.PrintLog("Reachpoint_condition : "..evt.param1)
			if 	defs.gadget_Teleport_1 ~= evt.param1 and 
				defs.gadget_Teleport_2 ~= evt.param1 and
				defs.gadget_Teleport_3 ~= evt.param1 and
				defs.gadget_Teleport_4 ~= evt.param1 then
				return false	
			end
		
		return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_124015(context, evt)
					-- 判断是gadgetid 124006 option_id 31
					ScriptLib.PrintLog("Reachpoint_action : "..evt.param1)
			UpdateTeleportState(context)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_124016(context, evt)
	if evt.param1 ~= 124016 then return false end
	
	-- 判断变量"gadget_Teleport_2_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_2_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_124016(context, evt)
			--gadget_Teleport_2 trigger
			local teleportid = defs["gadget_Teleport_2"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_124017(context, evt)
	if evt.param1 ~= 124017 then return false end
	
	-- 判断变量"gadget_Teleport_1_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_1_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_124017(context, evt)
		--gadget_Teleport_1 trigger
			local teleportid = defs["gadget_Teleport_1"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_124018(context, evt)
	if evt.param1 ~= 124018 then return false end
	
	-- 判断变量"gadget_Teleport_4_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_4_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_124018(context, evt)
		--gadget_Teleport_4 trigger
			local teleportid = defs["gadget_Teleport_4"]
			TeleportAction(context, teleportid)
			return 0
end