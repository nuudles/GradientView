Pod::Spec.new do |s|
  s.name = 'GradientView'
  s.version = '0.0.1'
  s.license = 'MIT'
  s.summary = 'The GradientView is a simple UIView with a CAGradientLayer, forwarding its properties up'
  s.homepage = 'https://github.com/nuudles/GradientView'
  s.authors = { 'Christopher Luu' => 'nuudles@gmail.com' }
  s.source = { :git => 'https://github.com/nuudles/GradientView.git', :tag => s.version }

  s.ios.deployment_target = '8.0'
  s.tvos.deployment_target = '9.0'

  s.source_files = 'GradientView/*.swift'

  s.requires_arc = true
end
