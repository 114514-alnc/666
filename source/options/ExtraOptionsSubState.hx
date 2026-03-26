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

        super();
    }
}

