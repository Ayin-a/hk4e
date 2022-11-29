--[[
对位传送门 黑盒
]]--


local extraTriggers={
	{ config_id = 1154013, name = "GROUP_LOAD_154013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_154013", trigger_count = 0 },
	{ config_id = 1154014, name = "SELECT_OPTION_154014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_154014", action = "action_EVENT_SELECT_OPTION_154014", trigger_count = 0 },
	{ config_id = 1154015, name = "PLATFORM_REACH_POINT_154015", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_154015", action = "action_EVENT_PLATFORM_REACH_POINT_154015", trigger_count = 0 },
	{ config_id = 1154016, name = "TIME_AXIS_PASS_15016", event = EventType.EVENT_TIME_AXIS_PASS, source = "InitialEnding", condition = "", action = "action_EVENT_TIME_AXIS_PASS_15016", trigger_count = 0 }
  
}

local extralVariables={
	{ config_id=50000001,name = "gadget_Teleport_1_isActive", value = 0, no_refresh = true },
	{ config_id=50000002,name = "gadget_Teleport_2_isActive", value = 0, no_refresh = true },
	{ config_id=50000003,name = "gadget_Teleport_3_isActive", value = 0, no_refresh = true },
	{ config_id=50000004,name = "gadget_Teleport_4_isActive", value = 0, no_refresh = true },
	{ config_id=50000005,name = "gadget_Teleport_1_state", value = 0, no_refresh = true },
	{ config_id=50000006,name = "gadget_Teleport_2_state", value = 0, no_refresh = true },
	{ config_id=50000007,name = "gadget_Teleport_3_state", value = 0, no_refresh = true },
	{ config_id=50000008,name = "gadget_Teleport_4_state", value = 0, no_refresh = true },
	{ config_id=50000009,name = "isInitial", value = 1, no_refresh = false }
}


function LF_Initialize_Group(triggers,suites,variables)
	for i=1,#extraTriggers do
		table.insert(triggers, extraTriggers[i])
		table.insert(suites[init_config.suite].triggers,extraTriggers[i].name)
	end
	for i=1,#extralVariables do
		table.insert(variables, extralVariables[i])
	end

--初始化
end

----Misc----
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

function InitialTeleportRotationY(context)
	local rot
	local name
	local localtarget
	ScriptLib.PrintLog("Initial starting...")
	ScriptLib.SetGroupVariableValue(context,"isInitial",1)
	for i=1,4 do
		localtarget = TeleportOwnerShip[i][2]
		if isTeleportValid(context,localtarget)==true then
			ScriptLib.PrintLog("Initial localtarget = "..localtarget)
			if localtarget ~= 0 then
				name = GetTeleportNameByConfigID(context,localtarget).."_state"
				rot = ScriptLib.GetGroupVariableValue(context,name)
				ScriptLib.PrintLog("Initial gadgetName = "..name .. " , Rot = "..rot)
	
				if rot == 90 then 
					ScriptLib.SetPlatformPointArray(context, localtarget, defs.pointarray_Rotate, { 1 }, { route_type = 0,turn_mode=true })
				elseif rot == 180 then
					ScriptLib.SetPlatformPointArray(context, localtarget, defs.pointarray_Rotate, { 2 }, { route_type = 0,turn_mode=true })
				elseif rot == 270 then
					ScriptLib.SetPlatformPointArray(context, localtarget, defs.pointarray_Rotate, { 3 }, { route_type = 0,turn_mode=true })
				end
			end
		end
	end
	ScriptLib.PrintLog("Initial ending...")
end

function InitialTeleportState(context)
	local tempname
	local localtarget
	for i=1,4 do
		tempname = "gadget_Teleport_"..i.."_isActive"
		localtarget = TeleportOwnerShip[i][2]
		if isTeleportValid(context,localtarget)==true then
			if ScriptLib.GetGroupVariableValue(context,tempname) == 1 then 
				ScriptLib.SetGadgetStateByConfigId(context, TeleportOwnerShip[i][2], GadgetState.GearStart)
			else
				ScriptLib.SetGadgetStateByConfigId(context, TeleportOwnerShip[i][2], GadgetState.Default)
			end

		end

	end
	
end

function isTeleportValid(context,teleportID)
	local result = false

	local state = ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID, teleportID)

	if state ~= -1 then 
		result = true
	end
--[[ 	local suiteindex = ScriptLib.GetGroupSuite(context, defs.group_ID)
	for i=1, #suites[suiteindex].gadgets do
		if teleportID == suites[suiteindex].gadgets[i] then 
			result = true
			return result
		end 
	end ]]
	return result
end

function CheckIsConnected(context,teleport_aID,teleport_bID)

	if not (isTeleportValid(context,teleport_aID)) or not (isTeleportValid(context,teleport_bID)) then
		return false
	end

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
				--链接的Gadget ID, 对应的点阵ID, 点阵的indexArray, 速度
				table.insert(relatedtarget,{connectInfo[i][2],connectInfo[i][3],staticForwardSet,connectInfo[i][4]})
			elseif connectInfo[i][2] == teleport_ID then
				table.insert(relatedtarget,{connectInfo[i][1],connectInfo[i][3],staticBackwardSet,connectInfo[i][4]})
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
			ScriptLib.MoveAvatarByPointArray(context, context.uid, related[i][2], related[i][3], {speed=related[i][4]}, "{\"MarkType\":1}")
			return 0
		end
	end
end





----ActionFunction---



function action_EVENT_GROUP_LOAD_154013(context, evt)

	InitialTeleportRotationY(context)
	InitialTeleportState(context)
	ScriptLib.InitTimeAxis(context, "InitialEnding", {1}, false)
			
	return 0
end

function action_EVENT_TIME_AXIS_PASS_15016(context, evt)
	UpdateTeleportState(context)
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

function condition_EVENT_SELECT_OPTION_154014(context, evt)
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
function action_EVENT_SELECT_OPTION_154014(context, evt)
	local localtarget
	local localoption

		for i=1,4 do
			if TeleportOwnerShip[i][1] == evt.param1 then
				localtarget = TeleportOwnerShip[i][2]
				localoption = TeleportOwnerShip[i][1]
			end
		end

		--旋转时取消所有的Option
		if defs.gadget_TeleportOperator_1 ~= 0 then 
			ScriptLib.DelWorktopOptionByGroupId(context, defs.group_ID, defs.gadget_TeleportOperator_1, 31)
		end
		if defs.gadget_TeleportOperator_2 ~= 0 then 
			ScriptLib.DelWorktopOptionByGroupId(context, defs.group_ID, defs.gadget_TeleportOperator_2, 31)
		end
		if defs.gadget_TeleportOperator_3 ~= 0 then 
			ScriptLib.DelWorktopOptionByGroupId(context, defs.group_ID, defs.gadget_TeleportOperator_3, 31)
		end
		if defs.gadget_TeleportOperator_4 ~= 0 then 
			ScriptLib.DelWorktopOptionByGroupId(context, defs.group_ID, defs.gadget_TeleportOperator_4, 31)
		end	
		ScriptLib.SetGroupVariableValue(context,"isInitial",0)
		
		ScriptLib.PrintLog("evt.gadgetid = "..evt.param1)
		ScriptLib.PrintLog("localtarget = "..localtarget)
		ScriptLib.SetPlatformPointArray(context, localtarget, defs.pointarray_Rotate, { 1 }, { route_type = 0,turn_mode=true })
		
		ScriptLib.MarkPlayerAction(context, 7004, 3, 1)

		return 0
end

function condition_EVENT_PLATFORM_REACH_POINT_154015(context, evt)
	-- 判断是gadgetid 124006 option_id 31
ScriptLib.PrintLog("Reachpoint_condition : "..evt.param1)
	if 	defs.gadget_Teleport_1 ~= evt.param1 and 
		defs.gadget_Teleport_2 ~= evt.param1 and
		defs.gadget_Teleport_3 ~= evt.param1 and
		defs.gadget_Teleport_4 ~= evt.param1 then
		return false	
	end
	if ScriptLib.GetGroupVariableValue(context,"isInitial") ~= 0 then
		return false
	end


return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_154015(context, evt)
-- 判断是gadgetid 124006 option_id 31
ScriptLib.PrintLog("Reachpoint_action : "..evt.param1)
--旋转完成后再重新加回所有的Option
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
UpdateTeleportState(context)

-- set teleprot rotation and save to group variable
local name = GetTeleportNameByConfigID(context,evt.param1).."_state"
ScriptLib.PrintLog("gadgetname = "..name)
local prerot = ScriptLib.GetGroupVariableValue(context,name)
ScriptLib.PrintLog("prerot = ".. prerot)
prerot = prerot + defs.rotStep
if prerot >= 360 then
prerot = 0
end
ScriptLib.PrintLog("prerot ++ = ".. prerot)
ScriptLib.SetGroupVariableValue(context,name,prerot)

return 0
end


LF_Initialize_Group(triggers, suites, variables)