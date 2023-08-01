HPRPCMenu.CreateMenu("ClothingMenu", "Police Uniforms")
HPRPCMenu.SetSubTitle("ClothingMenu", "Select an outfit")

function requestAcesForList()
    local response = nil

    TriggerServerEvent('clothing:filterForAceAllowed')
    RegisterNetEvent("clothing:hereAceAllowedList")
    local handler = AddEventHandler("clothing:hereAceAllowedList", function(returnedList)
        response = returnedList
    end)

    while response == nil do
        Citizen.Wait(0)
    end

    RemoveEventHandler(handler)
    print('got response', json.encode(response))
    return response
end



function ApplySkinToPed(ped, skin)
    -- Face Blend
    local weightFace = skin.face_md_weight / 100 + 0.0
    local weightSkin = skin.skin_md_weight / 100 + 0.0
    SetPedHeadBlendData(ped, skin.mom, skin.dad, 0, skin.mom, skin.dad, 0, weightFace, weightSkin, 0.0, false)

    -- Facial Features
    SetPedFaceFeature(ped, 0,  (skin.nose_1 / 100)         + 0.0)  -- Nose Width
    SetPedFaceFeature(ped, 1,  (skin.nose_2 / 100)         + 0.0)  -- Nose Peak Height
    SetPedFaceFeature(ped, 2,  (skin.nose_3 / 100)         + 0.0)  -- Nose Peak Length
    SetPedFaceFeature(ped, 3,  (skin.nose_4 / 100)         + 0.0)  -- Nose Bone Height
    SetPedFaceFeature(ped, 4,  (skin.nose_5 / 100)         + 0.0)  -- Nose Peak Lowering
    SetPedFaceFeature(ped, 5,  (skin.nose_6 / 100)         + 0.0)  -- Nose Bone Twist
    SetPedFaceFeature(ped, 6,  (skin.eyebrows_5 / 100)     + 0.0)  -- Eyebrow height
    SetPedFaceFeature(ped, 7,  (skin.eyebrows_6 / 100)     + 0.0)  -- Eyebrow depth
    SetPedFaceFeature(ped, 8,  (skin.cheeks_1 / 100)       + 0.0)  -- Cheekbones Height
    SetPedFaceFeature(ped, 9,  (skin.cheeks_2 / 100)       + 0.0)  -- Cheekbones Width
    SetPedFaceFeature(ped, 10, (skin.cheeks_3 / 100)       + 0.0)  -- Cheeks Width
    SetPedFaceFeature(ped, 11, (skin.eye_squint / 100)     + 0.0)  -- Eyes squint
    SetPedFaceFeature(ped, 12, (skin.lip_thickness / 100)  + 0.0)  -- Lip Fullness
    SetPedFaceFeature(ped, 13, (skin.jaw_1 / 100)          + 0.0)  -- Jaw Bone Width
    SetPedFaceFeature(ped, 14, (skin.jaw_2 / 100)          + 0.0)  -- Jaw Bone Length
    SetPedFaceFeature(ped, 15, (skin.chin_1 / 100)         + 0.0)  -- Chin Height
    SetPedFaceFeature(ped, 16, (skin.chin_2 / 100)         + 0.0)  -- Chin Length
    SetPedFaceFeature(ped, 17, (skin.chin_3 / 100)         + 0.0)  -- Chin Width
    SetPedFaceFeature(ped, 18, (skin.chin_4 / 100)         + 0.0)  -- Chin Hole Size
    SetPedFaceFeature(ped, 19, (skin.neck_thickness / 100) + 0.0)  -- Neck Thickness

    -- Appearance
    SetPedComponentVariation(ped, 2, skin.hair_1, skin.hair_2, 2)                  -- Hair Style
    SetPedHairColor(ped, skin.hair_color_1, skin.hair_color_2)                     -- Hair Color
    SetPedHeadOverlay(ped, 2, skin.eyebrows_1, skin.eyebrows_2 / 100 + 0.0)        -- Eyebrow Style + Opacity
    SetPedHeadOverlayColor(ped, 2, 1, skin.eyebrows_3, skin.eyebrows_4)            -- Eyebrow Color
    SetPedHeadOverlay(ped, 1, skin.beard_1, skin.beard_2 / 100 + 0.0)              -- Beard Style + Opacity
    SetPedHeadOverlayColor(ped, 1, 1, skin.beard_3, skin.beard_4)                  -- Beard Color

    SetPedHeadOverlay(ped, 0, skin.blemishes_1, skin.blemishes_2 / 100 + 0.0)      -- Skin blemishes + Opacity
    SetPedHeadOverlay(ped, 12, skin.bodyb_3, skin.bodyb_4 / 100 + 0.0)             -- Skin blemishes body effect + Opacity

    SetPedHeadOverlay(ped, 11, skin.bodyb_1, skin.bodyb_2 / 100 + 0.0)             -- Body Blemishes + Opacity

    SetPedHeadOverlay(ped, 3, skin.age_1, skin.age_2 / 100 + 0.0)                  -- Age + opacity
    SetPedHeadOverlay(ped, 6, skin.complexion_1, skin.complexion_2 / 100 + 0.0)    -- Complexion + Opacity
    SetPedHeadOverlay(ped, 9, skin.moles_1, skin.moles_2 / 100 + 0.0)              -- Moles/Freckles + Opacity
    SetPedHeadOverlay(ped, 7, skin.sun_1, skin.sun_2 / 100 + 0.0)                  -- Sun Damage + Opacity
    SetPedEyeColor(ped, skin.eye_color)                                            -- Eyes Color
    SetPedHeadOverlay(ped, 4, skin.makeup_1, skin.makeup_2 / 100 + 0.0)            -- Makeup + Opacity
    SetPedHeadOverlayColor(ped, 4, 0, skin.makeup_3, skin.makeup_4)                -- Makeup Color
    SetPedHeadOverlay(ped, 5, skin.blush_1, skin.blush_2 / 100 + 0.0)              -- Blush + Opacity
    SetPedHeadOverlayColor(ped, 5, 2,	skin.blush_3)                                -- Blush Color
    SetPedHeadOverlay(ped, 8, skin.lipstick_1, skin.lipstick_2 / 100 + 0.0)        -- Lipstick + Opacity
    SetPedHeadOverlayColor(ped, 8, 2, skin.lipstick_3, skin.lipstick_4)            -- Lipstick Color
    SetPedHeadOverlay(ped, 10, skin.chest_1, skin.chest_2 / 100 + 0.0)             -- Chest Hair + Opacity
    SetPedHeadOverlayColor(ped, 10, 1, skin.chest_3, skin.chest_4)                 -- Chest Hair Color

    -- Clothing and Accessories
    SetPedComponentVariation(ped, 8,  skin.tshirt_1, skin.tshirt_2, 2)        -- Undershirts
    SetPedComponentVariation(ped, 11, skin.torso_1,  skin.torso_2,  2)        -- Jackets
    SetPedComponentVariation(ped, 3,  skin.arms,     skin.arms_2,   2)        -- Torsos
    SetPedComponentVariation(ped, 10, skin.decals_1, skin.decals_2, 2)        -- Decals
    SetPedComponentVariation(ped, 4,  skin.pants_1,  skin.pants_2,  2)        -- Legs
    SetPedComponentVariation(ped, 6,  skin.shoes_1,  skin.shoes_2,  2)        -- Shoes
    SetPedComponentVariation(ped, 1,  skin.mask_1,   skin.mask_2,   2)        -- Masks
    SetPedComponentVariation(ped, 9,  skin.bproof_1, skin.bproof_2, 2)        -- Vests
    SetPedComponentVariation(ped, 7,  skin.neckarm_1,  skin.neckarm_2,  2)    -- Necklaces/Chains/Ties/Suspenders
    SetPedComponentVariation(ped, 5,  skin.bags_1,   skin.bags_2,   2)        -- Bags

    if skin.helmet_1 == -1 then
        ClearPedProp(ped, 0)
    else
        SetPedPropIndex(ped, 0, skin.helmet_1, skin.helmet_2, 2)          -- Hats
    end

    if skin.glasses_1 == -1 then
        ClearPedProp(ped, 1)
    else
        SetPedPropIndex(ped, 1, skin.glasses_1, skin.glasses_2, 2)        -- Glasses
    end

    if skin.lefthand_1 == -1 then
        ClearPedProp(ped, 6)
    else
        SetPedPropIndex(ped, 6, skin.lefthand_1, skin.lefthand_2, 2)      -- Left Hand Accessory
    end

    if skin.righthand_1 == -1 then
        ClearPedProp(ped,	7)
    else
        SetPedPropIndex(ped, 7, skin.righthand_1, skin.righthand_2, 2)    -- Right Hand Accessory
    end

    if skin.ears_1 == -1 then
        ClearPedProp(ped, 2)
    else
        SetPedPropIndex (ped, 2, skin.ears_1, skin.ears_2, 2)             -- Ear Accessory
    end
end



function GetDefaultCharacter()
    local result = {
        sex = 1,
        mom = 21,
        dad = 0,
        face_md_weight = 50,
        skin_md_weight = 50,
        nose_1 = 0,
        nose_2 = 0,
        nose_3 = 0,
        nose_4 = 0,
        nose_5 = 0,
        nose_6 = 0,
        cheeks_1 = 0,
        cheeks_2 = 0,
        cheeks_3 = 0,
        lip_thickness = 0,
        jaw_1 = 0,
        jaw_2 = 0,
        chin_1 = 0,
        chin_2 = 0,
        chin_3 = 0,
        chin_4 = 0,
        neck_thickness = 0,
        hair_1 = 0,
        hair_2 = 0,
        hair_color_1 = 0,
        hair_color_2 = 0,
        tshirt_1 = 0,
        tshirt_2 = 0,
        torso_1 = 0,
        torso_2 = 0,
        decals_1 = 0,
        decals_2 = 0,
        arms = 15,
        arms_2 = 0,
        pants_1 = 0,
        pants_2 = 0,
        shoes_1 = 0,
        shoes_2 = 0,
        mask_1 = 0,
        mask_2 = 0,
        bproof_1 = 0,
        bproof_2 = 0,
        neckarm_1 = 0,
        neckarm_2 = 0,
        helmet_1 = -1,
        helmet_2 = 0,
        glasses_1 = -1,
        glasses_2 = 0,
        lefthand_1 = -1,
        lefthand_2 = 0,
        righthand_1 = -1,
        righthand_2 = 0,
        bags_1 = 0,
        bags_2 = 0,
        eye_color = 0,
        eye_squint = 0,
        eyebrows_2 = 100,
        eyebrows_1 = 0,
        eyebrows_3 = 0,
        eyebrows_4 = 0,
        eyebrows_5 = 0,
        eyebrows_6 = 0,
        makeup_type = 0,
        makeup_1 = 255,
        makeup_2 = 100,
        makeup_3 = 255,
        makeup_4 = 255,
        lipstick_1 = 255,
        lipstick_2 = 100,
        lipstick_3 = 0,
        lipstick_4 = 0,
        ears_1 = -1,
        ears_2 = 0,
        chest_1 = 255,
        chest_2 = 100,
        chest_3 = 0,
        chest_4 = 0,
        bodyb_1 = 255,
        bodyb_2 = 100,
        bodyb_3 = 255,
        bodyb_4 = 100,
        age_1 = 255,
        age_2 = 100,
        blemishes_1 = 255,
        blemishes_2 = 100,
        blush_1 = 255,
        blush_2 = 100,
        blush_3 = 0,
        complexion_1 = 255,
        complexion_2 = 100,
        sun_1 = 255,
        sun_2 = 100,
        moles_1 = 255,
        moles_2 = 100,
        beard_1 = 255,
        beard_2 = 100,
        beard_3 = 0,
        beard_4 = 0
    }
    return result
end

function getCharFromData(data)
    toReturn = GetDefaultCharacter()

    for k,v in pairs(data) do
        toReturn[k] = v
    end

    return toReturn
end

function LoadModel(hash)
    local playerPed = PlayerPedId()
    SetEntityInvincible(playerPed, true)

    if IsModelInCdimage(hash) and IsModelValid(hash) then
        RequestModel(hash)
        while not HasModelLoaded(hash) do
            Citizen.Wait(0)
        end
        SetPlayerModel(PlayerId(), hash)
        FreezePedCameraRotation(playerPed, true)
    end
    SetEntityInvincible(playerPed, false)
end



local ClothingCats

function ApplyOutfit(what)

    LoadModel(GetHashKey('mp_m_freemode_01'))
    ApplySkinToPed(PlayerPedId(), getCharFromData(what))
end

function openMenu()


    HPRPCMenu.OpenMenu("ClothingMenu")
    FreezeEntityPosition(PlayerPedId(), true)

    if #ClothingCats == 0 then
        while HPRPCMenu.IsMenuOpened('ClothingMenu') do
            HPRPCMenu.Button('EMPTY', 'EMPTY')
            HPRPCMenu.Display()
            Citizen.Wait(0)
        end
    end

    local closeNow = false

    while HPRPCMenu.IsMenuOpened('ClothingMenu') do

        for k,v in pairs(ClothingCats) do
            if HPRPCMenu.Button(v.name, '>') then
                while HPRPCMenu.IsMenuOpened('ClothingMenu') do

                    for k2, v2 in pairs(v.clothes) do
                        if HPRPCMenu.Button(k2, 'Apply >') then
                            ApplyOutfit(v2)
                        end
                    end

                    HPRPCMenu.Display()
                    Citizen.Wait(0)
                end

                if not closeNow then
                    HPRPCMenu.OpenMenu("ClothingMenu")
                end

            end
        end

        HPRPCMenu.Display()
        Citizen.Wait(0)
    end

    FreezeEntityPosition(PlayerPedId(), false)

end
local function DisplayNotification(msg, thisFrame)
    AddTextEntry('showNotification3', msg)

    if thisFrame then
        DisplayHelpTextThisFrame('showNotification3', false)
    else
        BeginTextCommandDisplayHelp('showNotification3')
        EndTextCommandDisplayHelp(0, false, 0, -1)
    end
end


Citizen.CreateThread(function()
    ClothingCats = requestAcesForList()
    print(json.encode(ClothingCats))
    while true do
        local sleep = 1000
        local ourCoords = GetEntityCoords(PlayerPedId())
        for k,v in pairs(Clothing_locations) do
            if #(v.coords - ourCoords) <= blipRenderDistance then
                sleep = 0
                DrawMarker(v.MarkerId,v.coords.x,v.coords.y,v.coords.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, v.MarkerSize.x, v.MarkerSize.y, v.MarkerSize.z, v.Color.x, v.Color.y, v.Color.z, 100, false, true, 2, false, false, false, false)

                if #(v.coords - ourCoords) <= interactDistance then
                    sleep = 0
DisplayNotification('~w~Press ~r~E~w~ to open the locker!', true) -- change the text here to whatever you want
                    DrawText3Ds(v.coords, 'BSRP Locker')

                    if IsControlJustReleased(0, 38) then
                        openMenu()
                    end

                end

            end
        end
        Citizen.Wait(sleep)
    end
end)