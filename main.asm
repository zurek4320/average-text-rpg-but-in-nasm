section .bss
    int_buffer: resb 12
    input: resb 256

section .data
    ; ------ real variables ------
    px: dd 5
    py: dd 5
    hp: dd 100
    damage: dd 10
    gold: dd 0
    regeneration_speed: dd 12
    moves_to_fight: dd 3
    nrd_num: dd 1

    enemy_type: dd 1
    enemy_hp: dd 15
    enemy_damage: dd 5

    regenerations_left: dd 3

    ; ------ variables for "functions" or something ------
    new_line: dd 10
    cls_code: db 27, "[2J", 27, "[H", 0
    cls_len: equ $-cls_code-1
    enemy_name1: db "Slime"
    enemy_name1_len: equ $-enemy_name1
    enemy_name2: db "Goblin"
    enemy_name2_len: equ $-enemy_name2

    map: db "@  @  @  @  @  @  @  @  @  @", 10, "@  S  @  @  @  @  @  @  @  @", 10, "@  @  @  @  @  @  @  @  @  @", 10, "@  @  @  @  @  @  @  @  @  @", 10, "@  @  @  @  @  @  @  @  @  @", 10, "@  @  @  @  @  @  @  @  @  @", 10, "@  @  @  @  @  @  @  @  @  @", 10, "@  @  @  @  @  @  @  @  @  @", 10, "@  @  @  @  @  @  @  @  @  @", 10, "@  @  @  @  @  @  @  @  @  @", 10
    map_len: equ $-map

    green db 27, '[32m', 0
    reset db 27, '[0m', 0

    ; ------ stuff to print I guess ------
    string0: db "Player X: "
    string0_len: equ $-string0
    string1: db "Player Y: "
    string1_len: equ $-string1
    string2: db "HP: "
    string2_len: equ $-string2
    string3: db "Damage: "
    string3_len: equ $-string3
    string4: db "Regeneration speed: "
    string4_len: equ $-string4
    string5: db "(w, s, a, d, info, exit)"
    string5_len: equ $-string5
    string6: db "Enemy HP: "
    string6_len: equ $-string6
    string7: db "Enemy damage: "
    string7_len: equ $-string7
    string8: db "Enemy name: "
    string8_len: equ $-string8
    string9: db "Regenerations left: "
    string9_len: equ $-string9
    stringA: db "No more regenerations left! (press enter to continue)"
    stringA_len: equ $-stringA
    stringB: db "Map:"
    stringB_len: equ $-stringB
    stringC: db "SHOP:"
    stringC_len: equ $-stringC
    stringD: db "Gold:"
    stringD_len: equ $-stringD
    stringE: db "1. Upgrade damage (+1) - 10 gold"
    stringE_len: equ $-stringE
    stringF: db "2. Upgrade regeneration speed (+1) - 15 gold"
    stringF_len: equ $-stringF
    string10: db "You don't have enough gold to afford that. (press enter to continue)"
    string10_len: equ $-string10
    string11: db "3. Exit"
    string11_len: equ $-string11
    
section .text

global _start

green_color:
    mov eax, 4
    mov ebx, 1
    mov ecx, green
    mov edx, 5 
    int 80h
    ret
reset_color:
    mov eax, 4
    mov ebx, 1
    mov ecx, reset
    mov edx, 5 
    int 80h
    ret
cls:
    mov ecx, cls_code
    mov edx, cls_len
    call print
    ret
print_num:
    call int_to_ascii
    mov eax, 4
    mov ebx, 1
    mov ecx, edi
    mov edx, int_buffer + 11
    sub edx, edi
    int 0x80
    ret

    int_to_ascii:
        mov edi, int_buffer + 11
        mov byte [edi], 0
        xor ecx, ecx

        cmp eax, 0
        jne convert_loop
        dec edi
        mov byte [edi], '0'
        inc ecx
        ret

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

print:
    mov eax, 4
    mov ebx, 1
    int 80h
    ret

print_new_line:
    mov ecx, new_line
    mov edx, 1
    call print
    ret
get_input:
    mov eax, 3
    mov ebx, 0
    mov edx, 256
    int 80h
    ret

_start:
    game_loop:
        mov eax, [px]
        mov ebx, 11
        cmp eax, ebx
        je max_x_pos
        mov eax, [px]
        mov ebx, 0
        cmp eax, ebx
        je max_x_neg
        mov eax, [py]
        mov ebx, 11
        cmp eax, ebx
        je max_y_pos
        mov eax, [py]
        mov ebx, 0
        cmp eax, ebx
        je max_y_neg
        jmp movement_border_end
        max_x_pos:
            mov dword [px], 10
            jmp movement_border_end
        max_x_neg:
            mov dword [px], 1
            jmp movement_border_end
        max_y_pos:
            mov dword [py], 10
            jmp movement_border_end
        max_y_neg:
            mov dword [py], 1
        movement_border_end:

        call cls
        mov eax, [nrd_num]
        cmp eax, 1
        jl nrd_num_one
        mov eax, [nrd_num]
        cmp eax, 10
        jg nrd_num_ten
        jmp nrd_num_end

        nrd_num_one:
            mov dword [nrd_num], 1
            jmp nrd_num_end
        nrd_num_ten:
            mov dword [nrd_num], 10
        nrd_num_end:
        ; print("Map:\n", green(map), "\n")
        mov ecx, stringB
        mov edx, stringB_len
        call print
        call print_new_line
        call green_color
        mov ecx, map
        mov edx, map_len
        call print
        call reset_color
        call print_new_line
        ; print("Player X: ", px, "\n")
        mov ecx, string0
        mov edx, string0_len
        call print
        mov eax, [px]
        call print_num
        call print_new_line
        ; print("Player Y: ", py, "\n")
        mov ecx, string1
        mov edx, string1_len
        call print
        mov eax, [py]
        call print_num
        call print_new_line
        ; print("HP: ", hp, "\n")
        mov ecx, string2
        mov edx, string2_len
        call print
        mov eax, [hp]
        call print_num
        call print_new_line
        ; print("Damage: ", damage, "\n")
        mov ecx, string3
        mov edx, string3_len
        call print
        mov eax, [damage]
        call print_num
        call print_new_line
        ; print("Gold: ", gold, "\n")
        mov ecx, stringD
        mov edx, stringD_len
        call print
        mov eax, [gold]
        call print_num
        call print_new_line
        ; print("Regeneration speed: ", regeneration_speed, "\n")
        mov ecx, string4
        mov edx, string4_len
        call print
        mov eax, [regeneration_speed]
        call print_num
        call print_new_line
        ; print("(w, s, a, d)\n")
        mov ecx, string5
        mov edx, string5_len
        call print
        call print_new_line

        mov eax, [moves_to_fight]
        cmp eax, 0
        je fight

        main_input_loop:
            ; input = input()
            mov ecx, input
            call get_input

            mov al, 'w'
            mov bl, [input]
            cmp al, bl
            je w
            mov al, 's'
            mov bl, [input]
            cmp al, bl
            je s
            mov al, 'a'
            mov bl, [input]
            cmp al, bl
            je a
            mov al, 'd'
            mov bl, [input]
            cmp al, bl
            je d
            mov eax, "exit"
            mov ebx, [input]
            cmp eax, ebx
            je exit
            mov al, 'e'
            mov bl, [input]
            cmp al, bl
            je e
            jmp main_input_loop       
            w:
                add dword [py], 1
                sub dword [moves_to_fight], 1
                add dword [nrd_num], 1
                jmp game_loop
            s:
                sub dword [py], 1
                sub dword [moves_to_fight], 1
                sub dword [nrd_num], 1
                jmp game_loop
            a:
                sub dword [px], 1
                sub dword [moves_to_fight], 1
                shl dword [nrd_num], 1
                jmp game_loop
            d:
                add dword [px], 1
                sub dword [moves_to_fight], 1
                shr dword [nrd_num], 1
                jmp game_loop
            e:
                mov eax, [px]
                mov ebx, 2
                cmp eax, ebx
                jne not_shop
                mov eax, [py]
                mov ebx, 9
                cmp eax, ebx
                jne not_shop
                jmp shop               
                not_shop:
                    jmp game_loop
            exit:
                mov eax, 1
                mov ebx, 1
                int 80h

        jmp game_loop

fight:
    mov eax, [nrd_num]
    cmp eax, 7
    jge enemy_II
    enemy_I:
        mov dword [enemy_damage], 5
        mov dword [enemy_hp], 15
        mov dword [moves_to_fight], 3
        mov dword [enemy_type], 1
        add dword [gold], 5
        jmp fight_start
    enemy_II:
        mov dword [enemy_damage], 10
        mov dword [enemy_hp], 35
        mov dword [moves_to_fight], 5
        mov dword [enemy_type], 2
        add dword [gold], 15
        jmp fight_start
    
    fight_start:
        call cls
        mov ecx, string2
        mov edx, string2_len
        call print
        mov eax, [hp]
        call print_num
        call print_new_line
        mov ecx, string3
        mov edx, string3_len
        call print
        mov eax, [damage]
        call print_num
        call print_new_line
        mov ecx, string9
        mov edx, string9_len
        call print
        mov eax, [regenerations_left]
        call print_num
        call print_new_line

        mov ecx, string8
        mov edx, string8_len
        call print

        mov eax, [enemy_type]
        mov ebx, 1
        cmp eax, ebx
        je slime
        mov eax, [enemy_type]
        mov ebx, 2
        cmp eax, ebx
        je goblin
        slime:
            mov ecx, enemy_name1
            mov edx, enemy_name1_len
            jmp enemy_name_printing_end
        goblin:
            mov ecx, enemy_name2
            mov edx, enemy_name2_len
        enemy_name_printing_end:
            call print
            call print_new_line

        mov ecx, string6
        mov edx, string6_len
        call print
        mov eax, [enemy_hp]
        call print_num
        call print_new_line
        mov ecx, string7
        mov edx, string7_len
        call print
        mov eax, [enemy_damage]
        call print_num
        call print_new_line

        fight_input_loop:
            ; input = input()
            mov ecx, input
            call get_input

            mov al, '1'
            mov bl, [input]
            cmp al, bl
            je one
            mov al, '2'
            mov bl, [input]
            cmp al, bl
            je two
            jmp fight_input_loop  

            one:
                mov eax, [enemy_damage]
                sub [hp], eax

                mov eax, [damage]
                sub [enemy_hp], eax
                jmp two_end
            two:
                mov eax, [regenerations_left]
                mov ebx, 0
                cmp eax, ebx
                je cant_regenerate
                can_regenerate:
                    mov eax, [enemy_damage]
                    sub [hp], eax

                    mov eax, [regeneration_speed]
                    add [hp], eax
                    sub dword [regenerations_left], 1
                    jmp two_end
                cant_regenerate:
                    call cls
                    mov ecx, stringA
                    mov edx, stringA_len
                    call print
                    call print_new_line
                    mov ecx, input
                    call get_input
            two_end:

        mov eax, [hp]
        cmp eax, 0
        jle death
        mov eax, [enemy_hp]
        cmp eax, 0
        jle win
        mov eax, [hp]
        cmp eax, 100
        jg max_hp
        jmp fight_start
        max_hp:
            mov dword [hp], 100
            jmp fight_start

shop:
    call cls
    mov ecx, stringC
    mov edx, stringC_len
    call print
    call print_new_line
    mov ecx, string3
    mov edx, string3_len
    call print
    mov eax, [damage]
    call print_num
    call print_new_line
    mov ecx, string4
    mov edx, string4_len
    call print
    mov eax, [regeneration_speed]
    call print_num
    call print_new_line
    mov ecx, stringD
    mov edx, stringD_len
    call print
    mov eax, [gold]
    call print_num
    call print_new_line
    mov ecx, stringE
    mov edx, stringE_len
    call print
    call print_new_line
    mov ecx, stringF
    mov edx, stringF_len
    call print
    call print_new_line
    mov ecx, string11
    mov edx, string11_len
    call print
    call print_new_line
    shop_input_loop:
        mov ecx, input
        call get_input

        mov al, '1'
        mov bl, [input]
        cmp al, bl
        je up_dmg
        mov al, '2'
        mov bl, [input]
        cmp al, bl
        je up_reg
        mov al, '3'
        mov bl, [input]
        cmp al, bl
        je game_loop
        jmp shop_input_loop
    up_dmg:
        mov eax, [gold]
        mov ebx, 10
        cmp eax, ebx
        jl to_low_gold
        sub dword [gold], 10
        add dword [damage], 1
        jmp shop
    up_reg:
        mov eax, [gold]
        mov ebx, 15
        cmp eax, ebx
        jl to_low_gold
        sub dword [gold], 15
        add dword [regeneration_speed], 1
        jmp shop

to_low_gold:
    call cls
    mov ecx, string10
    mov edx, string10_len
    call print
    call print_new_line
    mov ecx, input
    call get_input
    jmp shop

win:
    mov dword [regenerations_left], 3
    jmp game_loop

death:
    mov eax, 1
    mov ebx, 1
    int 80h
