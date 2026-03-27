package options;

class ExtraOptionsSubState extends BaseOptionsSubState {
    public function new() {
        title = LangUtil.get('opt_extra_title');
        rpcTitle = 'In Extra Settings Menu';

        // ==========================================
        // 🚀 第一区：移动端性能与防崩溃 (Performance)
        // ==========================================
        var option:Option = new Option(
            LangUtil.get('opt_gpu'), LangUtil.get('desc_gpu'),
            'gpuCaching', 'bool', false);
        addOption(option);

        var option:Option = new Option(
            LangUtil.get('opt_gc'), LangUtil.get('desc_gc'),
            'autoGC', 'bool', false);
        addOption(option);

        var option:Option = new Option(
            LangUtil.get('opt_potato'), LangUtil.get('desc_potato'),
            'lowEndMode', 'bool', false);
        addOption(option);

        // ==========================================
        // 🎮 第二区：引擎缝合与视觉 (Visuals & Engine)
        // ==========================================
        var option:Option = new Option(
            'Kade Engine UI', '切换为硬核的 KE 分数栏和平均偏差显示',
            'keStyle', 'bool', false);
        addOption(option);

        var option:Option = new Option(
            'V-Slice Dynamic Pitch', 'Miss或残血时，伴奏会产生真实的降调失真',
            'dynamicPitch', 'bool', false);
        addOption(option);

        var option:Option = new Option(
            'JS Engine Modifiers', '为下落的箭头添加扭曲特效',
            'noteModifier', 'string', 'None', ['None', 'Drunk', 'Wave', 'Tornado']);
        addOption(option);

        var option:Option = new Option(
            'Lane Underlay', '开启轨道背景黑底，让你看清音符 (osu! 风格)',
            'laneUnderlay', 'bool', false);
        addOption(option);

        // ==========================================
        // 🤖 第三区：究极扩展 (God-Tier Addons)
        // ==========================================
        var option:Option = new Option(
            'Humanized Botplay', 'Botplay 不再全是 0ms 的 Perfect，会有真实的人类误差',
            'humanizedBot', 'bool', false);
        addOption(option);

        var option:Option = new Option(
            'Mobile Dev Mode', '开启后三指下滑可唤出内置谱面编辑器',
            'devMode', 'bool', false);
        addOption(option);
        // ==========================================
        // 📂 第四区：目录与 Mod 兼容 (Storage & Mods)
        // ==========================================
        var option:Option = new Option(
            '引擎数据目录 (Engine Folder)', 
            '切换读取的外部文件夹。切换后需重启游戏生效！',
            'engineFolder', 
            'string', 
            'SP Engine', 
            ['SP Engine', 'PsychEngine', 'JSEngine', 'NovaFlare']
        );
       addOption(option);

      var option:Option = new Option(
           '强制 JS 模组兼容', 
           '欺骗加载的模组，让它们以为在 JS 引擎上运行，以兼容特殊脚本。',
           'forceJSModCompat', 
           'bool', 
            true
        );
      addOption(option);
     // ==========================================
// ⚙️ 第五区：硬核音游辅助 (Rhythm Helpers)
// ==========================================

// 曲速调节 (范围 1.0 到 3.0，步长 0.1)
var option:Option = new Option(LangUtil.get('opt_speed'), LangUtil.get('desc_speed'), 'songSpeed', 'float', 1.0);
option.scrollSpeed = 1.5;
option.minValue = 1.0;
option.maxValue = 3.0;
option.changeValue = 0.1;
addOption(option);

// 面条透明度 (范围 0.1 到 1.0，步长 0.1)
var option:Option = new Option(LangUtil.get('opt_sus_alpha'), LangUtil.get('desc_sus_alpha'), 'sustainAlpha', 'float', 1.0);
option.scrollSpeed = 1.5;
option.minValue = 0.1;
option.maxValue = 1.0;
option.changeValue = 0.1;
option.decimals = 1;
addOption(option);

// 吸血保护 (开关)
var option:Option = new Option(LangUtil.get('opt_drain_cap'), LangUtil.get('desc_drain_cap'), 'opponentDrainCap', 'bool', false);
addOption(option);

// 打击音效音量 (范围 0.0 到 1.0)
var option:Option = new Option(LangUtil.get('opt_hitsound'), LangUtil.get('desc_hitsound'), 'hitSoundVolume', 'float', 0.0);
option.scrollSpeed = 1.5;
option.minValue = 0.0;
option.maxValue = 1.0;
option.changeValue = 0.1;
option.decimals = 1;
addOption(option);
// --- 🎨 视觉增强 (Visual Buffs) ---
addOption(new Option(LangUtil.get('opt_dynamic_color'), LangUtil.get('desc_dynamic_color'), 'dynamicBarColor', 'bool', true));
addOption(new Option(LangUtil.get('opt_sidehud'), LangUtil.get('desc_sidehud'), 'sideHud', 'bool', false));
addOption(new Option(LangUtil.get('opt_zoom_beat'), LangUtil.get('desc_zoom_beat'), 'cameraZoomOnBeat', 'bool', true));
addOption(new Option(LangUtil.get('opt_score_zoom'), LangUtil.get('desc_score_zoom'), 'scoreZoom', 'bool', true));

// --- 🕹️ 判定控制 (Judgment Control) ---
var option:Option = new Option(LangUtil.get('opt_safe_frames'), LangUtil.get('desc_safe_frames'), 'safeFrames', 'int', 10);
option.minValue = 1;
option.maxValue = 20;
addOption(option);

        super();
    }
}

