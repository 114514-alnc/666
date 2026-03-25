package backend;

class LangUtil {
    public static var languages:Array<String> = ['zh-CN', 'en-US', 'ja-JP', 'ko-KR', 'ru-RU', 'es-ES'];
    
    public static function getTranslation(key:String):String {
        var data:Map<String, Map<String, String>> = [
            'zh-CN' => [
                'menu_extra' => '进阶扩展',
                'menu_perf' => '极速优化',
                'opt_gpu' => 'GPU 纹理压缩',
                'opt_gc' => '自动垃圾回收',
                'opt_font' => '字体回退保护',
                'desc_gpu' => '开启后大幅减少显存占用，防止闪退'
            ],
            'en-US' => [
                'menu_extra' => 'Extra Options',
                'menu_perf' => 'Optimization',
                'opt_gpu' => 'GPU Caching',
                'opt_gc' => 'Auto GC',
                'opt_font' => 'Font Fallback'
            ]
            // ...以此类推增加其他语言
        ];
        
        var lang = ClientPrefs.language;
        if (!data.exists(lang)) lang = 'en-US';
        return data[lang].exists(key) ? data[lang][key] : key;
    }
}

