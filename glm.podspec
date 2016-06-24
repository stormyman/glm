#
#  Be sure to run `pod spec lint glm.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name             = "glm"
  s.module_name      = "glm"
  s.version          = "0.9.7.5"
  s.summary          = "OpenGL Mathematics"
  s.description      = <<-DESC
                       OpenGL Mathematics is a header only C++ mathematics library for graphics software based on the OpenGL Shading Language specifications.
                       DESC
  s.homepage         = "http://glm.g-truc.net"
  s.license          = {:type => 'MIT', :file => 'copying.txt' }
  s.authors          = { "Christophe Riccio" => "glm@g-truc.net"}
  s.source           = { :git => "https://github.com/g-truc/glm.git", :tag => s.version.to_s }

  s.requires_arc     = false

  s.header_dir       = "glm"
  s.header_mappings_dir = "glm"
 
  s.libraries = 'c++'

  s.ios.deployment_target = '5.0'
  s.osx.deployment_target = '10.7'

  s.source_files     = 'glm/**/*{.h,.hpp}'

  s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '$(PODS_ROOT)/glm' }
  s.preserve_paths = 'glm/**/*{.h,.hpp,.inl}'
  s.public_header_files = 'glm/**/*{.h,.hpp,.inl}'
end
