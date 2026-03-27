package backend;

class LangUtil {
    // 自动回退机制：如果找不到对应语言，强制回退到英文
    public static function get(key:String):String {
        var lang = ClientPrefs.language;
        if (!translations.exists(lang)) lang = 'en-US';
        return translations[lang].exists(key) ? translations[lang][key] : (translations['en-US'].exists(key) ? translations['en-US'][key] : key);
    }

    // 终极字典：涵盖了迄今为止我们讨论过的【所有】功能！
    private static var translations:Map<String, Map<String, String>> = [
        
        // ==========================================
        // 🇨🇳 简体中文 (zh-CN)
        // ==========================================
        'zh-CN' => [
            // --- 菜单与通用 ---
            'opt_extra_title' => '进阶设置 (Extra Settings)',
            'desc_extra_title' => '极其硬核的引擎底层与玩法设置（小白慎动）',
            
            // --- 极致性能与防崩溃 (Performance & Safety) ---
            'opt_gpu' => '显存纹理压缩 (GPU Caching)',
            'desc_gpu' => '将图片强制推入 GPU。大幅提升 FPS，解决手机长曲目闪退。',
            'opt_gc' => '全自动内存守护 (Auto GC)',
            'desc_gc' => '每局结束后强制回收内存碎片，彻底告别内存溢出。',
            'opt_potato' => '土豆手机模式 (Potato Mode)',
            'desc_potato' => '极限压榨性能：强制关闭背景、角色、抗锯齿和特效。',
            'opt_mem_guard' => '内存安全屋 (Memory Guard)',
            'desc_mem_guard' => '当手机可用运行内存低于阈值时，触发紧急清理。',
            'opt_font' => 'Lua 字体防崩 (Font Fallback)',
            'desc_font' => '当 Mod 缺少字体时自动替换为内置字体，防止黑屏报错。',

            // --- 移动端特供 (Mobile Specifics) ---
            'opt_hitbox_alpha' => '触控区透明度 (Hitbox Alpha)',
            'desc_hitbox_alpha' => '调整屏幕下方四个隐形按键区域的可见度。',
            'opt_hitbox_scale' => '触控区缩放 (Hitbox Scale)',
            'desc_hitbox_scale' => '放大或缩小按键判定区域，防误触。',
            'opt_vibe' => '物理震动反馈 (Haptic Feedback)',
            'desc_vibe' => '击中音符时手机会产生微弱的震动。',
            'opt_dev' => '移动端开发者模式 (Dev Mode)',
            'desc_dev' => '开启后，游戏中【三指同时下滑】可直接唤出谱面编辑器！',

            // --- 引擎融合玩法 (Engine Ports) ---
            'opt_ke' => 'Kade Engine UI',
            'desc_ke' => '使用经典的 KE 分数栏，实时显示 NPS 与毫秒偏差。',
            'opt_pitch' => 'V-Slice 动态失真 (Dynamic Pitch)',
            'desc_pitch' => '当你 Miss 或处于濒死状态时，伴奏会产生真实的降调和沉闷感。',
            'opt_modifier' => 'JS 视觉修饰符 (Modifiers)',
            'desc_modifier' => '为下落的箭头添加扭曲、波浪、龙卷风等鬼畜特效。',
            'opt_video' => '高清视频解码 (MP4 Cutscenes)',
            'desc_video' => '允许引擎在手机端调用硬件解码播放原生过场动画。',

            // --- 视觉与进阶判定 (Visuals & Gameplay) ---
            'opt_lane' => '轨道背景底图 (Lane Underlay)',
            'desc_lane' => '在箭头轨道下方添加一层黑色半透明底板 (类似 osu!mania)。',
            'opt_marvelous' => '神乎其技判定 (Marvelous!!)',
            'desc_marvelous' => '开启比 Sick 更严苛的最高判定，挑战 0ms 误差。',
            'opt_human_bot' => '仿生机器人 (Humanized Bot)',
            'desc_human_bot' => 'Bot 自动打歌时会产生模仿人类的毫秒误差，不再全是 0ms。',
            'opt_rainbow' => 'RGB 帧率显示 (Rainbow FPS)',
            'desc_rainbow' => '让左上角的 FPS 计数器疯狂闪烁彩虹光芒。'
            'opt_speed' => '全局曲速倍率 (Song Speed)',
        'desc_speed' => '改变歌曲的播放速度和谱面下落速度 (1.0x - 2.0x)。',
        'opt_sus_alpha' => '长按音符透明度 (Sustain Alpha)',
        'desc_sus_alpha' => '降低长按音符的可见度，防止挡住视线。',
        'opt_drain_cap' => '对手吸血保护 (Drain Cap)',
        'desc_drain_cap' => '硬核 Mod 必备：对手唱歌扣血时，最多只会扣到 10%，不会直接让你死。',
        'opt_hitsound' => '打击音效音量 (Hit Sound)',
        'desc_hitsound' => '像 osu! 一样，每次精准击中音符时播放清脆的音效。'
            'opt_dynamic_color' => '动态生命条染色',
'desc_dynamic_color' => '生命条颜色会根据对手和玩家的角色属性实时变换 (内鬼 V4 风格)。',
'opt_sidehud' => '侧边信息栏 (Side HUD)',
'desc_sidehud' => '在屏幕左侧显示实时的判定、准确率、Miss数等信息。',
'opt_zoom_beat' => '节拍镜头缩放',
'desc_zoom_beat' => '镜头会随着音乐节拍进行有节奏的缩放。',
'opt_safe_frames' => '判定帧调节',
'desc_safe_frames' => '调整击中音符的时间窗口（数值越高判定越松）。',
'opt_score_zoom' => '分数文本缩放',
'desc_score_zoom' => '每当你击中音符时，分数显示栏会产生缩放动画。'
        ],

        // ==========================================
        // 🇺🇸 英文 (en-US) - 作为默认回退语言
        // ==========================================
        'en-US' => [
            'opt_extra_title' => 'Extra Settings',
            'desc_extra_title' => 'Advanced engine mechanics and extreme modifications.',
            'opt_gpu' => 'GPU Caching',
            'desc_gpu' => 'Pushes textures to VRAM. Boosts FPS and prevents crashes on long songs.',
            'opt_gc' => 'Auto Memory GC',
            'desc_gc' => 'Forces deep garbage collection after every song to prevent memory leaks.',
            'opt_potato' => 'Potato PC Mode',
            'desc_potato' => 'Disables backgrounds, characters, and shaders for maximum performance.',
            'opt_mem_guard' => 'Memory Guard',
            'desc_mem_guard' => 'Emergency cache clearing when RAM runs critically low.',
            'opt_font' => 'Lua Font Fallback',
            'desc_font' => 'Prevents crashes by using a default font if a Mod\'s custom font is missing.',
            
            'opt_hitbox_alpha' => 'Hitbox Opacity',
            'desc_hitbox_alpha' => 'Changes the visibility of the mobile touch hitboxes.',
            'opt_hitbox_scale' => 'Hitbox Scale',
            'desc_hitbox_scale' => 'Adjusts the size of the touch areas to prevent miss-clicks.',
            'opt_vibe' => 'Haptic Feedback',
            'desc_vibe' => 'Vibrates the device slightly upon hitting a note.',
            'opt_dev' => 'Mobile Dev Mode',
            'desc_dev' => 'Swipe down with 3 fingers in-game to open the Chart Editor!',

            'opt_ke' => 'Kade Engine UI',
            'desc_ke' => 'Changes the score bar to display NPS and mean ms delay like KE.',
            'opt_pitch' => 'V-Slice Dynamic Pitch',
            'desc_pitch' => 'Music pitch drops and distorts when missing or at low health.',
            'opt_modifier' => 'JS Note Modifiers',
            'desc_modifier' => 'Adds wavy, drunk, or tornado visual effects to falling notes.',
            'opt_video' => 'Hardware MP4 Decoding',
            'desc_video' => 'Enables native playback of high-quality MP4 cutscenes on mobile.',

            'opt_lane' => 'Lane Underlay',
            'desc_lane' => 'Adds a dark semi-transparent background behind the notes (osu! style).',
            'opt_marvelous' => 'Marvelous Rating',
            'desc_marvelous' => 'Adds a rating even stricter than Sick for perfect 0ms hits.',
            'opt_human_bot' => 'Humanized Botplay',
            'desc_human_bot' => 'Botplay will have slight human-like delays instead of hitting perfect 0ms.',
            'opt_rainbow' => 'Rainbow FPS',
            'desc_rainbow' => 'Makes the FPS counter cycle through RGB colors.'
            'opt_dynamic_color' => 'Dynamic Bar Color',
'desc_dynamic_color' => 'Health bar colors change based on the current characters (Impostor V4 style).',
'opt_sidehud' => 'Side HUD',
'desc_sidehud' => 'Displays song statistics on the left side of the screen.',
'opt_zoom_beat' => 'Camera Zoom on Beat',
'desc_zoom_beat' => 'The camera gently pulses to the beat of the music.',
'opt_safe_frames' => 'Safe Frames',
'desc_safe_frames' => 'Adjust the timing window for hitting notes (higher is easier).',
'opt_score_zoom' => 'Score Text Zoom',
'desc_score_zoom' => 'The score text bounces whenever you hit a note.',
        // --- Visuals & Display ---
        'opt_cjk' => 'Global CJK Font',
        'desc_cjk' => 'Replaces default alphabet sprites with a TTF font to support Chinese/Japanese text.',
        'opt_lane' => 'Lane Underlay',
        'desc_lane' => 'Adds a dark semi-transparent background behind the notes (osu! style).',
        'opt_vsplash' => 'V-Slice 3D Splashes',
        'desc_vsplash' => 'Replaces Sick rating sparks with V-Slice styled 3D impact splashes.',
        'opt_camzoom' => 'Dynamic Camera Zoom',
        'desc_camzoom' => 'Camera bumps and zooms intensely on heavy note hits.',

        // --- Mobile & Storage ---
        'opt_dev' => 'Mobile Dev Mode',
        'desc_dev' => 'Swipe down with 3 fingers in-game to quickly open the Chart Editor.',
        'opt_vibe' => 'Haptic Feedback',
        'desc_vibe' => 'Vibrates your device slightly upon hitting a note.',
        'opt_folder' => 'Engine Data Folder',
        'desc_folder' => 'Change the external folder for loading Mods. Requires a restart!',
        'opt_js_compat' => 'Force JS Mod Compatibility',
        'desc_js_compat' => 'Tricks mods into thinking they are running on JS Engine to fix script errors.',

        // --- 💥 NEW: Hardcore Rhythm Options ---
        'opt_speed' => 'Song Speed Multiplier',
        'desc_speed' => 'Changes the playback speed of the song and notes (1.0x - 2.0x).',
        'opt_sus_alpha' => 'Sustain Note Opacity',
        'desc_sus_alpha' => 'Lowers the transparency of hold notes so they don\'t block your view.',
        'opt_drain_cap' => 'Opponent Drain Cap',
        'desc_drain_cap' => 'Prevents the opponent from draining your health past 10%. No more instant deaths.',
        'opt_hitsound' => 'Hit Sound Volume',
        'desc_hitsound' => 'Plays a snappy "tick" sound when you hit a note (osu! style).'

        ],

        // ==========================================
        // 🇯🇵 日语 (ja-JP) - 提升国际化逼格
        // ==========================================
        'ja-JP' => [
            'opt_extra_title' => '究極の追加設定',
            'opt_gpu' => 'GPU キャッシュ',
            'desc_gpu' => 'VRAMにテクスチャを強制転送し、クラッシュを防ぎます。',
            'opt_gc' => '自動メモリ解放',
            'opt_potato' => '軽量化モード (Potato)',
            'opt_dev' => 'モバイル開発者モード',
            'desc_dev' => '3本指で下にスワイプすると譜面エディタが開きます！',
            'opt_ke' => 'Kade Engine スタイル',
            'opt_pitch' => 'V-Slice ダイナミックピッチ',
            'opt_lane' => 'レーン背景 (Lane Underlay)'
        ],

        // ==========================================
        // 🇷🇺 俄语 (ru-RU) - FNF 俄区玩家极多
        // ==========================================
        'ru-RU' => [
            'opt_extra_title' => 'Экстра Опции',
            'opt_gpu' => 'Кеширование GPU',
            'desc_gpu' => 'Значительно повышает FPS и предотвращает вылеты на мобильных.',
            'opt_potato' => 'Режим Картошки (Potato Mode)',
            'opt_hitbox_alpha' => 'Прозрачность хитбоксов',
            'opt_dev' => 'Режим разработчика',
            'opt_modifier' => 'JS Модификаторы нот',
            'opt_pitch' => 'Динамический шаг (V-Slice)'
        ]
    ]
 ｝
