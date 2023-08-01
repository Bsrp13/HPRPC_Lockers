blipRenderDistance = 150.0
interactDistance = 1.5

Clothing_locations = {
------ POLICE STATIONS --------
  {--vinewood
  coords = vec(607.94, 17.06, 81.74),
        MarkerId = 1,
        MarkerSize = vec(1.0, 1.0, 1.5),
        Color = vec(0.0, 0.0, 255.0),
}, 
{ -- MRPD
 coords = vec(452.05, -991.05, 29.7),
 MarkerId = 1,
 MarkerSize = vec(1.0, 1.0, 1.5),
 Color = vec(0.0, 0.0, 255.0),
},

}

Clothing_Catagories = {
  {
    ace = 'PCSO',
    name = 'Police Community Support Officer',
    clothes = {
      ['PCSO 1'] = {
        -- HERE YOU PUT YOUR OUTFIT INFORMATION AS I SAID ION THE DISCORD
        helmet_1 = 7,
        mom = 33,
        dad = 2,
        hair_1 = 38,
      hair_color_1 = 4,
        mask_1 = 11,
        arms = 0,
        pants_1 = 5,
        bags_1 = 48,
        shoes_1 = 25,
        neckarm_1 =108,
        tshirt_1 = 8,
        bproof_1 = 29,
        decals_1 = 6,
        torso_1 = 1,
        torso_2 = 9
      },
      ['PCSO 2'] = {
        -- HERE YOU PUT YOUR OUTFIT INFORMATION AS I SAID ION THE DISCORD
        helmet_1 = 7,
        mom = 6,
        dad = 1,
        hair_1 = 38,
      hair_color_1 = 59,
        mask_1 = 11,
        arms = 0,
        pants_1 = 5,
        bags_1 = 48,
        shoes_1 = 25,
        neckarm_1 =108,
        tshirt_1 = 8,
        bproof_1 = 8,
        decals_1 = 6,
        torso_1 = 1,
        torso_2 = 9
      },
    }
  },  
  {
    ace = 'MPSRPU',
    name = 'Roads Policing Unit',
    clothes = {
      ['RPU 1'] = {
        -- HERE YOU PUT YOUR OUTFIT INFORMATION AS I SAID ION THE DISCORD
        helmet_1 = 6,
        mask_1 = 11,
      hair_1 = 12,
      hair_color_1 = 3,
        arms = 4,
        pants_1 = 5,
        bags_1 = 30,
        shoes_1 = 25,
        neckarm_1 = 6,
        tshirt_1 = 11,
        bproof_1 = 6,
        decals_1 = 3,
        torso_1 = 5,
      },
    }
}
}
  --[[

        ------- IMPORTANT PLEASE READ ------

        OUTFIT INFORMATION CAN CONTAIN ANY OF THE FOLLOWING.

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



]]




ShowNotification = function(msg)
	SetNotificationTextEntry('STRING')
	AddTextComponentString(msg)
	DrawNotification(0,1)
end

DrawText3Ds = function(coords, text)
    local x,y,z = table.unpack(coords)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z+1)
    SetTextScale(0.50, 0.50)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 370
    DrawRect(_x,_y+0.0145, 0.035+ factor, 0.03, 41, 11, 41, 68)
end
