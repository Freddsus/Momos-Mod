------------------
--- St. Chroma ---
-
-----------------

-- Aqui empieza el codigo de un 2do npc, este va a ser St.chroma, 
-- si, el de chromakopia 

    -- aqui se define al npc
    npc_def = {
        id = 69,
        name = "Mushy",
        pronouns = "She/Her",
        tooltip = "Hi bestie",
        shop = true,
        walking = true,
        stock = {"cottage_tea_tray01", "cottage_tea_tray02", "cottage_tea_cake01", "cottage_tea_cake02", "cottage_tea_slice01", "cottage_tea_slice02", "cottage_tea_stuffie01", "cottage_tea_stuffie02", "cottage_tea_stuffie03", "cottage_tea_stuffie05", "cottage_tea_stuffie06"},
        specials = {"cottage_tea_stuffie04", "cottage_tea_stuffie07", "cottage_tea_stuffie08"},
        draw = "draw_test",
        dialogue = dialogue,
        greeting = "  "
        }

function define_mushy()
    -- Dialogo

    -- aqui la "P" sirve como lo q decimos al npc
    -- mientras que la "D" es lo q nos responde
    -- "A" por otro lado son las acciones en secuencia
    --"$action01" es para el siguiente dialogo
    --"$action49" es de despedida
    
    dialogue = {}
    dialogue["A"] = {
      P = "Have we met yet?",
      D = {
          "Oh hey there, I’m Mushy. I just arrived on the boat not too long ago.",
          "I don’t exactly have a place to live yet. Maybe you can help me out?",
          "Be seeing ya, bestie."
      },
      A = {
          "$action01",
          "$action01",
          "$action49"
      }
    }