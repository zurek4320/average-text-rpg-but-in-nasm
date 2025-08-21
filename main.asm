; Made by zurek4320 (https://github.com/zurek4320)

section .bss
    zm_int_buffer: resb 12
    input resb 256
    zm_str_input_len resd 1

section .data
    zm_newline: db 10
    zm_str0: db "X: "
    zm_str_len0: equ $-zm_str0
    zm_str1: db 10
    zm_str_len1: equ $-zm_str1
    zm_str2: db "Y: "
    zm_str_len2: equ $-zm_str2
    zm_str3: db 10
    zm_str_len3: equ $-zm_str3
    zm_str4: db "Gold: "
    zm_str_len4: equ $-zm_str4
    zm_str5: db 10
    zm_str_len5: equ $-zm_str5
    zm_str6: db "HP: "
    zm_str_len6: equ $-zm_str6
    zm_str7: db 10
    zm_str_len7: equ $-zm_str7
    zm_str8: db "Max HP: "
    zm_str_len8: equ $-zm_str8
    zm_str9: db 10
    zm_str_len9: equ $-zm_str9
    zm_str10: db "Damage: "
    zm_str_len10: equ $-zm_str10
    zm_str11: db 10
    zm_str_len11: equ $-zm_str11
    zm_str12: db "Regeneration speed: "
    zm_str_len12: equ $-zm_str12
    zm_str13: db 10
    zm_str_len13: equ $-zm_str13
    zm_str14: db "w"
    zm_str_len14: equ $-zm_str14
    zm_str15: db "s"
    zm_str_len15: equ $-zm_str15
    zm_str16: db "a"
    zm_str_len16: equ $-zm_str16
    zm_str17: db "d"
    zm_str_len17: equ $-zm_str17
    zm_str18: db "!!!You are attacked by enemy level I!!! (hit enter to continue)"
    zm_str_len18: equ $-zm_str18
    zm_str19: db "!!!You are attacked by enemy level II!!! (hit enter to continue)"
    zm_str_len19: equ $-zm_str19
    zm_str20: db "PLAYER HP: "
    zm_str_len20: equ $-zm_str20
    zm_str21: db 10
    zm_str_len21: equ $-zm_str21
    zm_str22: db "PLAYER MAX HP: "
    zm_str_len22: equ $-zm_str22
    zm_str23: db 10
    zm_str_len23: equ $-zm_str23
    zm_str24: db "PLAYER DAMAGE: "
    zm_str_len24: equ $-zm_str24
    zm_str25: db 10
    zm_str_len25: equ $-zm_str25
    zm_str26: db "PLAYER REGENERATION SPEED: "
    zm_str_len26: equ $-zm_str26
    zm_str27: db 10
    zm_str_len27: equ $-zm_str27
    zm_str28: db "ENEMY HP: "
    zm_str_len28: equ $-zm_str28
    zm_str29: db 10
    zm_str_len29: equ $-zm_str29
    zm_str30: db "ENEMY DAMAGE: "
    zm_str_len30: equ $-zm_str30
    zm_str31: db 10
    zm_str_len31: equ $-zm_str31
    zm_str32: db "[1 - attack      ]", 10, "[2 - regeneration]", 10
    zm_str_len32: equ $-zm_str32
    zm_str33: db "1"
    zm_str_len33: equ $-zm_str33
    zm_str34: db "2"
    zm_str_len34: equ $-zm_str34
    zm_str35: db "You know how hard is it to code this whole game inside of assembly? Now press button 1 or button 2 on your keyboard and then hit enter button.", 10
    zm_str_len35: equ $-zm_str35
    zm_str36: db "Type only: (1/2)", 10
    zm_str_len36: equ $-zm_str36
    zm_str37: db "Type only 1 or 2", 10
    zm_str_len37: equ $-zm_str37
    zm_str38: db "    1  2  3  4  5  6  7  8  9 10"
    zm_str_len38: equ $-zm_str38
    zm_str39: db " X", 10
    zm_str_len39: equ $-zm_str39
    zm_str40: db "1:  "
    zm_str_len40: equ $-zm_str40
    zm_str41: db 10
    zm_str_len41: equ $-zm_str41
    zm_str42: db "2:  "
    zm_str_len42: equ $-zm_str42
    zm_str43: db 10
    zm_str_len43: equ $-zm_str43
    zm_str44: db "3:  "
    zm_str_len44: equ $-zm_str44
    zm_str45: db 10
    zm_str_len45: equ $-zm_str45
    zm_str46: db "4:  "
    zm_str_len46: equ $-zm_str46
    zm_str47: db 10
    zm_str_len47: equ $-zm_str47
    zm_str48: db "5:  "
    zm_str_len48: equ $-zm_str48
    zm_str49: db 10
    zm_str_len49: equ $-zm_str49
    zm_str50: db "6:  "
    zm_str_len50: equ $-zm_str50
    zm_str51: db 10
    zm_str_len51: equ $-zm_str51
    zm_str52: db "7:  "
    zm_str_len52: equ $-zm_str52
    zm_str53: db 10
    zm_str_len53: equ $-zm_str53
    zm_str54: db "8:  "
    zm_str_len54: equ $-zm_str54
    zm_str55: db 10
    zm_str_len55: equ $-zm_str55
    zm_str56: db "9:  "
    zm_str_len56: equ $-zm_str56
    zm_str57: db 10
    zm_str_len57: equ $-zm_str57
    zm_str58: db "10: "
    zm_str_len58: equ $-zm_str58
    zm_str59: db 10
    zm_str_len59: equ $-zm_str59
    zm_str60: db "Y", 10
    zm_str_len60: equ $-zm_str60
    zm_str61: db "You have won! (hit enter to continue)"
    zm_str_len61: equ $-zm_str61
    zm_str62: db "You lost... Hit enter to exit the game."
    zm_str_len62: equ $-zm_str62
    zm_red: db "[31m"
    zm_red_len: equ $-zm_red
    zm_reset: db "[0m"
    zm_reset_len: equ $-zm_reset
    zm_green: db "[32m"
    zm_green_len: equ $-zm_green
    zm_blue: db "[34m"
    zm_blue_len: equ $-zm_blue
    zm_yellow: db "[33m"
    zm_yellow_len: equ $-zm_yellow
    zm_pink: db "[35m"
    zm_pink_len: equ $-zm_pink
    zm_cls db 27, '[2J', 27, '[H', 0
    MapX: dd 11
    MapY: dd 11
    px: dd 6
    py: dd 6
    gold: dd 0
    regeneration_speed: dd 7
    moves_to_fight: dd 3
    hp: dd 100
    max_hp: dd 100
    damage: dd 10
    nrd_num: dd 0
    enemy_deamage: dd 0
    enemy_hp: dd 0
    type_only: dd 1
    map_tile: db "@--@--@--@--@--@--@--@--@--@"
    zm_str_map_tile_len: equ $-map_tile

section .text
    global _start


ascii_to_int:
    xor eax, eax        ; result
    xor ebx, ebx        ; index
    mov esi, edx        ; preserve length in ESI
.convert:
    cmp ebx, esi
    jge .done
    mov dl, [ecx + ebx] ; load one char
    cmp dl, 10          ; newline?
    je .done
    sub dl, '0'
    imul eax, eax, 10
    movzx edx, dl       ; convert digit to 32-bit
    add eax, edx
    inc ebx
    jmp .convert
.done:
    ret


int_to_ascii:
    mov edi, zm_int_buffer + 11
    mov byte [edi], 0
    xor ecx, ecx

    cmp eax, 0
    jne convert_loop_start
    dec edi
    mov byte [edi], '0'
    inc ecx
    ret

convert_loop_start:
convert_loop:
    xor edx, edx
    mov ebx, 10
    div ebx
    add dl, '0'
    dec edi
    mov [edi], dl
    inc ecx
    test eax, eax
    jnz convert_loop
    ret

print_num:
    call int_to_ascii
    mov eax, 4
    mov ebx, 1
    mov ecx, edi
    mov edx, zm_int_buffer + 11
    sub edx, edi
    int 0x80
    ret

print_str:
    mov eax, 4
    mov ebx, 1
    int 0x80
    ret

strcmp_equal:
    push esi
    push edi
    push ecx
.loop:
    cmp ecx, 0
    je .equal
    mov al, [esi]
    mov bl, [edi]
    cmp al, bl
    jne .not_equal
    inc esi
    inc edi
    dec ecx
    jmp .loop
.equal:
    pop ecx
    pop edi
    pop esi
    mov eax, 1
    ret
.not_equal:
    pop ecx
    pop edi
    pop esi
    xor eax, eax
    ret

; Made by zurek4320 (https://github.com/zurek4320)

_start:
    mov byte [input+0], 120
    mov dword [zm_str_input_len], 1
    zm_code_game_loop:
    
    mov edx, 7
    mov ecx, zm_cls
    mov ebx, 1
    mov eax, 4
    int 0x80

    jmp zm_code_print_map
    zm_code_map_printed:
    mov ecx, zm_str0
    mov edx, zm_str_len0
    call print_str
    mov eax, [px]
    call print_num
    mov ecx, zm_str1
    mov edx, zm_str_len1
    call print_str
    mov ecx, zm_str2
    mov edx, zm_str_len2
    call print_str
    mov eax, [py]
    call print_num
    mov ecx, zm_str3
    mov edx, zm_str_len3
    call print_str
    mov ecx, zm_str4
    mov edx, zm_str_len4
    call print_str
    mov eax, [gold]
    call print_num
    mov ecx, zm_str5
    mov edx, zm_str_len5
    call print_str
    mov ecx, zm_str6
    mov edx, zm_str_len6
    call print_str
    mov eax, [hp]
    call print_num
    mov ecx, zm_str7
    mov edx, zm_str_len7
    call print_str
    mov ecx, zm_str8
    mov edx, zm_str_len8
    call print_str
    mov eax, [max_hp]
    call print_num
    mov ecx, zm_str9
    mov edx, zm_str_len9
    call print_str
    mov ecx, zm_str10
    mov edx, zm_str_len10
    call print_str
    mov eax, [damage]
    call print_num
    mov ecx, zm_str11
    mov edx, zm_str_len11
    call print_str
    mov ecx, zm_str12
    mov edx, zm_str_len12
    call print_str
    mov eax, [regeneration_speed]
    call print_num
    mov ecx, zm_str13
    mov edx, zm_str_len13
    call print_str
    
    mov eax, 3
    mov ebx, 0
    mov ecx, input
    mov edx, 256
    int 80h
    mov [zm_str_input_len], eax
    mov eax, [zm_str_input_len]
    sub eax, 1
    mov [zm_str_input_len], eax

    mov esi, input
    mov edi, zm_str14
    mov ecx, [zm_str_input_len]
    call strcmp_equal
    cmp eax, 1
    je zm_code_w
    mov esi, input
    mov edi, zm_str15
    mov ecx, [zm_str_input_len]
    call strcmp_equal
    cmp eax, 1
    je zm_code_s
    mov esi, input
    mov edi, zm_str16
    mov ecx, [zm_str_input_len]
    call strcmp_equal
    cmp eax, 1
    je zm_code_a
    mov esi, input
    mov edi, zm_str17
    mov ecx, [zm_str_input_len]
    call strcmp_equal
    cmp eax, 1
    je zm_code_d
    jmp zm_code_movement_end
    zm_code_w:
    mov eax, [py]
    add eax, 1
    mov dword [py], eax
    mov eax, [nrd_num]
    add eax, 1
    mov dword [nrd_num], eax
    jmp zm_code_movement_end
    zm_code_s:
    mov eax, [nrd_num]
    sub eax, 1
    mov dword [nrd_num], eax
    mov eax, [py]
    sub eax, 1
    mov dword [py], eax
    jmp zm_code_movement_end
    zm_code_a:
    mov eax, [nrd_num]
    mov ebx, 2
    mul ebx
    mov dword [nrd_num], eax
    mov eax, [px]
    sub eax, 1
    mov dword [px], eax
    jmp zm_code_movement_end
    zm_code_d:
    mov eax, [nrd_num]
    xor edx, edx
    mov ebx, 2
    div ebx
    mov dword [nrd_num], eax
    mov eax, [px]
    add eax, 1
    mov dword [px], eax
    zm_code_movement_end:
    mov eax, 10
    cmp eax, [nrd_num]
    jl zm_code_nrd_ten
    mov eax, [nrd_num]
    cmp eax, 1
    jl zm_code_nrd_one
    jmp zm_code_nrd_num_end
    zm_code_nrd_one:
    mov dword [nrd_num], 1
    jmp zm_code_nrd_num_end
    zm_code_nrd_ten:
    mov dword [nrd_num], 10
    zm_code_nrd_num_end:
    mov eax, [px]
    mov ebx, [MapX]
    cmp eax, ebx
    je zm_code_max_d
    mov eax, [px]
    cmp eax, 0
    je zm_code_max_a
    mov eax, [py]
    mov ebx, [MapY]
    cmp eax, ebx
    je zm_code_max_w
    mov eax, [py]
    cmp eax, 0
    je zm_code_max_s
    jmp zm_code_max_end
    zm_code_max_w:
    mov eax, [MapY]
    sub eax, 1
    mov dword [py], eax
    jmp zm_code_max_end
    zm_code_max_s:
    mov dword [py], 1
    jmp zm_code_max_end
    zm_code_max_d:
    mov eax, [MapX]
    sub eax, 1
    mov dword [px], eax
    jmp zm_code_max_end
    zm_code_max_a:
    mov dword [px], 1
    jmp zm_code_max_end
    zm_code_max_end:
    mov eax, [moves_to_fight]
    sub eax, 1
    mov dword [moves_to_fight], eax
    mov eax, [moves_to_fight]
    cmp eax, 0
    je zm_code_fight
    jmp zm_code_game_loop
    zm_code_fight:
    mov dword [type_only], 1
    mov eax, [nrd_num]
    cmp eax, 8
    jg zm_code_enemy_II
    zm_code_enemy_I:
    
    mov edx, 7
    mov ecx, zm_cls
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov ecx, zm_red
    mov edx, zm_red_len
    call print_str
    mov ecx, zm_str18
    mov edx, zm_str_len18
    call print_str
    mov ecx, zm_reset
    mov edx, zm_reset_len
    call print_str
    
    mov eax, 3
    mov ebx, 0
    mov ecx, input
    mov edx, 256
    int 80h
    mov [zm_str_input_len], eax
    mov eax, [zm_str_input_len]
    sub eax, 1
    mov [zm_str_input_len], eax

    mov dword [enemy_deamage], 5
    mov dword [enemy_hp], 15
    mov dword [moves_to_fight], 3
    jmp zm_code_fight_start
    zm_code_enemy_II:
    
    mov edx, 7
    mov ecx, zm_cls
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov ecx, zm_red
    mov edx, zm_red_len
    call print_str
    mov ecx, zm_str19
    mov edx, zm_str_len19
    call print_str
    mov ecx, zm_reset
    mov edx, zm_reset_len
    call print_str
    
    mov eax, 3
    mov ebx, 0
    mov ecx, input
    mov edx, 256
    int 80h
    mov [zm_str_input_len], eax
    mov eax, [zm_str_input_len]
    sub eax, 1
    mov [zm_str_input_len], eax

    mov dword [enemy_deamage], 10
    mov dword [enemy_hp], 25
    mov dword [moves_to_fight], 5
    jmp zm_code_fight_start
    zm_code_fight_start:
    
    mov edx, 7
    mov ecx, zm_cls
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov ecx, zm_green
    mov edx, zm_green_len
    call print_str
    mov ecx, zm_str20
    mov edx, zm_str_len20
    call print_str
    mov eax, [hp]
    call print_num
    mov ecx, zm_str21
    mov edx, zm_str_len21
    call print_str
    mov ecx, zm_reset
    mov edx, zm_reset_len
    call print_str
    mov ecx, zm_green
    mov edx, zm_green_len
    call print_str
    mov ecx, zm_str22
    mov edx, zm_str_len22
    call print_str
    mov eax, [max_hp]
    call print_num
    mov ecx, zm_str23
    mov edx, zm_str_len23
    call print_str
    mov ecx, zm_reset
    mov edx, zm_reset_len
    call print_str
    mov ecx, zm_green
    mov edx, zm_green_len
    call print_str
    mov ecx, zm_str24
    mov edx, zm_str_len24
    call print_str
    mov eax, [damage]
    call print_num
    mov ecx, zm_str25
    mov edx, zm_str_len25
    call print_str
    mov ecx, zm_reset
    mov edx, zm_reset_len
    call print_str
    mov ecx, zm_green
    mov edx, zm_green_len
    call print_str
    mov ecx, zm_str26
    mov edx, zm_str_len26
    call print_str
    mov eax, [regeneration_speed]
    call print_num
    mov ecx, zm_str27
    mov edx, zm_str_len27
    call print_str
    mov ecx, zm_reset
    mov edx, zm_reset_len
    call print_str
    mov ecx, zm_red
    mov edx, zm_red_len
    call print_str
    mov ecx, zm_str28
    mov edx, zm_str_len28
    call print_str
    mov eax, [enemy_hp]
    call print_num
    mov ecx, zm_str29
    mov edx, zm_str_len29
    call print_str
    mov ecx, zm_reset
    mov edx, zm_reset_len
    call print_str
    mov ecx, zm_red
    mov edx, zm_red_len
    call print_str
    mov ecx, zm_str30
    mov edx, zm_str_len30
    call print_str
    mov eax, [enemy_deamage]
    call print_num
    mov ecx, zm_str31
    mov edx, zm_str_len31
    call print_str
    mov ecx, zm_reset
    mov edx, zm_reset_len
    call print_str
    mov ecx, zm_str32
    mov edx, zm_str_len32
    call print_str
    zm_code_input_loop:

    ; Made by zurek4320 (https://github.com/zurek4320)
    
    mov eax, 3
    mov ebx, 0
    mov ecx, input
    mov edx, 256
    int 80h
    mov [zm_str_input_len], eax
    mov eax, [zm_str_input_len]
    sub eax, 1
    mov [zm_str_input_len], eax

    mov esi, input
    mov edi, zm_str33
    mov ecx, [zm_str_input_len]
    call strcmp_equal
    cmp eax, 1
    je zm_code_attack
    mov esi, input
    mov edi, zm_str34
    mov ecx, [zm_str_input_len]
    call strcmp_equal
    cmp eax, 1
    je zm_code_regeneration
    mov eax, [type_only]
    cmp eax, 1
    je zm_code_type_only_I
    mov eax, [type_only]
    cmp eax, 2
    je zm_code_type_only_II
    mov ecx, zm_red
    mov edx, zm_red_len
    call print_str
    mov ecx, zm_str35
    mov edx, zm_str_len35
    call print_str
    mov ecx, zm_reset
    mov edx, zm_reset_len
    call print_str
    jmp zm_code_input_loop
    zm_code_type_only_I:
    mov ecx, zm_red
    mov edx, zm_red_len
    call print_str
    mov ecx, zm_str36
    mov edx, zm_str_len36
    call print_str
    mov ecx, zm_reset
    mov edx, zm_reset_len
    call print_str
    mov dword [type_only], 2
    jmp zm_code_input_loop
    zm_code_type_only_II:
    mov ecx, zm_red
    mov edx, zm_red_len
    call print_str
    mov ecx, zm_str37
    mov edx, zm_str_len37
    call print_str
    mov ecx, zm_reset
    mov edx, zm_reset_len
    call print_str
    mov dword [type_only], 3
    jmp zm_code_input_loop
    zm_code_attack:
    mov eax, [hp]
    sub eax, [enemy_deamage]
    mov dword [hp], eax
    mov eax, [enemy_hp]
    sub eax, [damage]
    mov dword [enemy_hp], eax
    mov eax, [enemy_hp]
    cmp eax, 1
    jl zm_code_win
    mov eax, [hp]
    cmp eax, 1
    jl zm_code_death
    jmp zm_code_fight_start
    zm_code_regeneration:
    mov eax, [hp]
    sub eax, [enemy_deamage]
    mov dword [hp], eax
    mov eax, [hp]
    add eax, [regeneration_speed]
    mov dword [hp], eax
    mov eax, [hp]
    cmp eax, 1
    jl zm_code_death
    mov eax, [hp]
    mov ebx, [max_hp]
    cmp eax, ebx
    jg zm_code_max_hp
    jmp zm_code_fight_start
    zm_code_max_hp:
    mov eax, [max_hp]
mov [hp], eax
    jmp zm_code_fight_start
    zm_code_print_map:
    mov ecx, zm_str38
    mov edx, zm_str_len38
    call print_str
    mov ecx, zm_yellow
    mov edx, zm_yellow_len
    call print_str
    mov ecx, zm_str39
    mov edx, zm_str_len39
    call print_str
    mov ecx, zm_reset
    mov edx, zm_reset_len
    call print_str
    mov ecx, zm_str40
    mov edx, zm_str_len40
    call print_str
    mov ecx, zm_green
    mov edx, zm_green_len
    call print_str
    mov ecx, map_tile
    mov edx, zm_str_map_tile_len
    call print_str
    mov ecx, zm_str41
    mov edx, zm_str_len41
    call print_str
    mov ecx, zm_reset
    mov edx, zm_reset_len
    call print_str
    mov ecx, zm_str42
    mov edx, zm_str_len42
    call print_str
    mov ecx, zm_green
    mov edx, zm_green_len
    call print_str
    mov ecx, map_tile
    mov edx, zm_str_map_tile_len
    call print_str
    mov ecx, zm_str43
    mov edx, zm_str_len43
    call print_str
    mov ecx, zm_reset
    mov edx, zm_reset_len
    call print_str
    mov ecx, zm_str44
    mov edx, zm_str_len44
    call print_str
    mov ecx, zm_green
    mov edx, zm_green_len
    call print_str
    mov ecx, map_tile
    mov edx, zm_str_map_tile_len
    call print_str
    mov ecx, zm_str45
    mov edx, zm_str_len45
    call print_str
    mov ecx, zm_reset
    mov edx, zm_reset_len
    call print_str
    mov ecx, zm_str46
    mov edx, zm_str_len46
    call print_str
    mov ecx, zm_green
    mov edx, zm_green_len
    call print_str
    mov ecx, map_tile
    mov edx, zm_str_map_tile_len
    call print_str
    mov ecx, zm_str47
    mov edx, zm_str_len47
    call print_str
    mov ecx, zm_reset
    mov edx, zm_reset_len
    call print_str
    mov ecx, zm_str48
    mov edx, zm_str_len48
    call print_str
    mov ecx, zm_green
    mov edx, zm_green_len
    call print_str
    mov ecx, map_tile
    mov edx, zm_str_map_tile_len
    call print_str
    mov ecx, zm_str49
    mov edx, zm_str_len49
    call print_str
    mov ecx, zm_reset
    mov edx, zm_reset_len
    call print_str
    mov ecx, zm_str50
    mov edx, zm_str_len50
    call print_str
    mov ecx, zm_green
    mov edx, zm_green_len
    call print_str
    mov ecx, map_tile
    mov edx, zm_str_map_tile_len
    call print_str
    mov ecx, zm_str51
    mov edx, zm_str_len51
    call print_str
    mov ecx, zm_reset
    mov edx, zm_reset_len
    call print_str
    mov ecx, zm_str52
    mov edx, zm_str_len52
    call print_str
    mov ecx, zm_green
    mov edx, zm_green_len
    call print_str
    mov ecx, map_tile
    mov edx, zm_str_map_tile_len
    call print_str
    mov ecx, zm_str53
    mov edx, zm_str_len53
    call print_str
    mov ecx, zm_reset
    mov edx, zm_reset_len
    call print_str
    mov ecx, zm_str54
    mov edx, zm_str_len54
    call print_str
    mov ecx, zm_green
    mov edx, zm_green_len
    call print_str
    mov ecx, map_tile
    mov edx, zm_str_map_tile_len
    call print_str
    mov ecx, zm_str55
    mov edx, zm_str_len55
    call print_str
    mov ecx, zm_reset
    mov edx, zm_reset_len
    call print_str
    mov ecx, zm_str56
    mov edx, zm_str_len56
    call print_str
    mov ecx, zm_green
    mov edx, zm_green_len
    call print_str
    mov ecx, map_tile
    mov edx, zm_str_map_tile_len
    call print_str
    mov ecx, zm_str57
    mov edx, zm_str_len57
    call print_str
    mov ecx, zm_reset
    mov edx, zm_reset_len
    call print_str
    mov ecx, zm_str58
    mov edx, zm_str_len58
    call print_str
    mov ecx, zm_green
    mov edx, zm_green_len
    call print_str
    mov ecx, map_tile
    mov edx, zm_str_map_tile_len
    call print_str
    mov ecx, zm_str59
    mov edx, zm_str_len59
    call print_str
    mov ecx, zm_reset
    mov edx, zm_reset_len
    call print_str
    mov ecx, zm_yellow
    mov edx, zm_yellow_len
    call print_str
    mov ecx, zm_str60
    mov edx, zm_str_len60
    call print_str
    mov ecx, zm_reset
    mov edx, zm_reset_len
    call print_str
    jmp zm_code_map_printed
    zm_code_win:
    
    mov edx, 7
    mov ecx, zm_cls
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov ecx, zm_yellow
    mov edx, zm_yellow_len
    call print_str
    mov ecx, zm_str61
    mov edx, zm_str_len61
    call print_str
    mov ecx, zm_reset
    mov edx, zm_reset_len
    call print_str
    
    mov eax, 3
    mov ebx, 0
    mov ecx, input
    mov edx, 256
    int 80h
    mov [zm_str_input_len], eax
    mov eax, [zm_str_input_len]
    sub eax, 1
    mov [zm_str_input_len], eax

    jmp zm_code_game_loop
    zm_code_death:
    
    mov edx, 7
    mov ecx, zm_cls
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov ecx, zm_red
    mov edx, zm_red_len
    call print_str
    mov ecx, zm_str62
    mov edx, zm_str_len62
    call print_str
    mov ecx, zm_reset
    mov edx, zm_reset_len
    call print_str
    
    mov eax, 3
    mov ebx, 0
    mov ecx, input
    mov edx, 256
    int 80h
    mov [zm_str_input_len], eax
    mov eax, [zm_str_input_len]
    sub eax, 1
    mov [zm_str_input_len], eax

    ; Made by zurek4320 (https://github.com/zurek4320)
    

    mov eax, 1
    mov ebx, 0
    int 80h
