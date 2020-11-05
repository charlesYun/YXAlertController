
Pod::Spec.new do |s|
  s.name         = "YXAlertController"
  s.version      = "1.1.0"
  s.summary      = "提示框"
  s.description  = <<-DESC
                    YXAlertController 是使用C语言基于UIAlertController的再封装，只为使用更简单
                   DESC
  s.homepage     = "https://github.com/caoyunxiao/YXAlertController"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'Matej caoyunxiao' => 'chinacgcgcg@163.com' }
  s.source       = { :git => "https://github.com/caoyunxiao/YXAlertController.git", :tag => "1.1.0" }
  s.ios.deployment_target = '8.0'
  s.tvos.deployment_target = '9.0'
  s.source_files = "YXAlertController/*.{h,m}"
  s.requires_arc = true
end