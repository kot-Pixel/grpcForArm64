#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "gRPC::cares" for configuration "Release"
set_property(TARGET gRPC::cares APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(gRPC::cares PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libcares.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS gRPC::cares )
list(APPEND _IMPORT_CHECK_FILES_FOR_gRPC::cares "${_IMPORT_PREFIX}/lib/libcares.a" )

# Import target "gRPC::re2" for configuration "Release"
set_property(TARGET gRPC::re2 APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(gRPC::re2 PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libre2.so"
  IMPORTED_SONAME_RELEASE "libre2.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS gRPC::re2 )
list(APPEND _IMPORT_CHECK_FILES_FOR_gRPC::re2 "${_IMPORT_PREFIX}/lib/libre2.so" )

# Import target "gRPC::ssl" for configuration "Release"
set_property(TARGET gRPC::ssl APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(gRPC::ssl PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libssl.so"
  IMPORTED_SONAME_RELEASE "libssl.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS gRPC::ssl )
list(APPEND _IMPORT_CHECK_FILES_FOR_gRPC::ssl "${_IMPORT_PREFIX}/lib/libssl.so" )

# Import target "gRPC::crypto" for configuration "Release"
set_property(TARGET gRPC::crypto APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(gRPC::crypto PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libcrypto.so"
  IMPORTED_SONAME_RELEASE "libcrypto.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS gRPC::crypto )
list(APPEND _IMPORT_CHECK_FILES_FOR_gRPC::crypto "${_IMPORT_PREFIX}/lib/libcrypto.so" )

# Import target "gRPC::zlibstatic" for configuration "Release"
set_property(TARGET gRPC::zlibstatic APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(gRPC::zlibstatic PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libz.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS gRPC::zlibstatic )
list(APPEND _IMPORT_CHECK_FILES_FOR_gRPC::zlibstatic "${_IMPORT_PREFIX}/lib/libz.a" )

# Import target "gRPC::address_sorting" for configuration "Release"
set_property(TARGET gRPC::address_sorting APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(gRPC::address_sorting PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libaddress_sorting.so"
  IMPORTED_SONAME_RELEASE "libaddress_sorting.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS gRPC::address_sorting )
list(APPEND _IMPORT_CHECK_FILES_FOR_gRPC::address_sorting "${_IMPORT_PREFIX}/lib/libaddress_sorting.so" )

# Import target "gRPC::gpr" for configuration "Release"
set_property(TARGET gRPC::gpr APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(gRPC::gpr PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libgpr.so"
  IMPORTED_SONAME_RELEASE "libgpr.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS gRPC::gpr )
list(APPEND _IMPORT_CHECK_FILES_FOR_gRPC::gpr "${_IMPORT_PREFIX}/lib/libgpr.so" )

# Import target "gRPC::grpc" for configuration "Release"
set_property(TARGET gRPC::grpc APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(gRPC::grpc PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libgrpc.so"
  IMPORTED_SONAME_RELEASE "libgrpc.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS gRPC::grpc )
list(APPEND _IMPORT_CHECK_FILES_FOR_gRPC::grpc "${_IMPORT_PREFIX}/lib/libgrpc.so" )

# Import target "gRPC::grpc_unsecure" for configuration "Release"
set_property(TARGET gRPC::grpc_unsecure APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(gRPC::grpc_unsecure PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libgrpc_unsecure.so"
  IMPORTED_SONAME_RELEASE "libgrpc_unsecure.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS gRPC::grpc_unsecure )
list(APPEND _IMPORT_CHECK_FILES_FOR_gRPC::grpc_unsecure "${_IMPORT_PREFIX}/lib/libgrpc_unsecure.so" )

# Import target "gRPC::upb_base_lib" for configuration "Release"
set_property(TARGET gRPC::upb_base_lib APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(gRPC::upb_base_lib PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libupb_base_lib.so"
  IMPORTED_SONAME_RELEASE "libupb_base_lib.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS gRPC::upb_base_lib )
list(APPEND _IMPORT_CHECK_FILES_FOR_gRPC::upb_base_lib "${_IMPORT_PREFIX}/lib/libupb_base_lib.so" )

# Import target "gRPC::upb_hash_lib" for configuration "Release"
set_property(TARGET gRPC::upb_hash_lib APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(gRPC::upb_hash_lib PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libupb_hash_lib.so"
  IMPORTED_SONAME_RELEASE "libupb_hash_lib.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS gRPC::upb_hash_lib )
list(APPEND _IMPORT_CHECK_FILES_FOR_gRPC::upb_hash_lib "${_IMPORT_PREFIX}/lib/libupb_hash_lib.so" )

# Import target "gRPC::upb_json_lib" for configuration "Release"
set_property(TARGET gRPC::upb_json_lib APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(gRPC::upb_json_lib PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libupb_json_lib.so"
  IMPORTED_SONAME_RELEASE "libupb_json_lib.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS gRPC::upb_json_lib )
list(APPEND _IMPORT_CHECK_FILES_FOR_gRPC::upb_json_lib "${_IMPORT_PREFIX}/lib/libupb_json_lib.so" )

# Import target "gRPC::upb_lex_lib" for configuration "Release"
set_property(TARGET gRPC::upb_lex_lib APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(gRPC::upb_lex_lib PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libupb_lex_lib.so"
  IMPORTED_SONAME_RELEASE "libupb_lex_lib.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS gRPC::upb_lex_lib )
list(APPEND _IMPORT_CHECK_FILES_FOR_gRPC::upb_lex_lib "${_IMPORT_PREFIX}/lib/libupb_lex_lib.so" )

# Import target "gRPC::upb_mem_lib" for configuration "Release"
set_property(TARGET gRPC::upb_mem_lib APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(gRPC::upb_mem_lib PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libupb_mem_lib.so"
  IMPORTED_SONAME_RELEASE "libupb_mem_lib.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS gRPC::upb_mem_lib )
list(APPEND _IMPORT_CHECK_FILES_FOR_gRPC::upb_mem_lib "${_IMPORT_PREFIX}/lib/libupb_mem_lib.so" )

# Import target "gRPC::upb_message_lib" for configuration "Release"
set_property(TARGET gRPC::upb_message_lib APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(gRPC::upb_message_lib PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libupb_message_lib.so"
  IMPORTED_SONAME_RELEASE "libupb_message_lib.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS gRPC::upb_message_lib )
list(APPEND _IMPORT_CHECK_FILES_FOR_gRPC::upb_message_lib "${_IMPORT_PREFIX}/lib/libupb_message_lib.so" )

# Import target "gRPC::upb_mini_descriptor_lib" for configuration "Release"
set_property(TARGET gRPC::upb_mini_descriptor_lib APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(gRPC::upb_mini_descriptor_lib PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libupb_mini_descriptor_lib.so"
  IMPORTED_SONAME_RELEASE "libupb_mini_descriptor_lib.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS gRPC::upb_mini_descriptor_lib )
list(APPEND _IMPORT_CHECK_FILES_FOR_gRPC::upb_mini_descriptor_lib "${_IMPORT_PREFIX}/lib/libupb_mini_descriptor_lib.so" )

# Import target "gRPC::upb_mini_table_lib" for configuration "Release"
set_property(TARGET gRPC::upb_mini_table_lib APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(gRPC::upb_mini_table_lib PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libupb_mini_table_lib.so"
  IMPORTED_SONAME_RELEASE "libupb_mini_table_lib.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS gRPC::upb_mini_table_lib )
list(APPEND _IMPORT_CHECK_FILES_FOR_gRPC::upb_mini_table_lib "${_IMPORT_PREFIX}/lib/libupb_mini_table_lib.so" )

# Import target "gRPC::upb_reflection_lib" for configuration "Release"
set_property(TARGET gRPC::upb_reflection_lib APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(gRPC::upb_reflection_lib PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libupb_reflection_lib.so"
  IMPORTED_SONAME_RELEASE "libupb_reflection_lib.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS gRPC::upb_reflection_lib )
list(APPEND _IMPORT_CHECK_FILES_FOR_gRPC::upb_reflection_lib "${_IMPORT_PREFIX}/lib/libupb_reflection_lib.so" )

# Import target "gRPC::upb_textformat_lib" for configuration "Release"
set_property(TARGET gRPC::upb_textformat_lib APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(gRPC::upb_textformat_lib PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libupb_textformat_lib.so"
  IMPORTED_SONAME_RELEASE "libupb_textformat_lib.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS gRPC::upb_textformat_lib )
list(APPEND _IMPORT_CHECK_FILES_FOR_gRPC::upb_textformat_lib "${_IMPORT_PREFIX}/lib/libupb_textformat_lib.so" )

# Import target "gRPC::upb_wire_lib" for configuration "Release"
set_property(TARGET gRPC::upb_wire_lib APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(gRPC::upb_wire_lib PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libupb_wire_lib.so"
  IMPORTED_SONAME_RELEASE "libupb_wire_lib.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS gRPC::upb_wire_lib )
list(APPEND _IMPORT_CHECK_FILES_FOR_gRPC::upb_wire_lib "${_IMPORT_PREFIX}/lib/libupb_wire_lib.so" )

# Import target "gRPC::utf8_range_lib" for configuration "Release"
set_property(TARGET gRPC::utf8_range_lib APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(gRPC::utf8_range_lib PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libutf8_range_lib.so"
  IMPORTED_SONAME_RELEASE "libutf8_range_lib.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS gRPC::utf8_range_lib )
list(APPEND _IMPORT_CHECK_FILES_FOR_gRPC::utf8_range_lib "${_IMPORT_PREFIX}/lib/libutf8_range_lib.so" )

# Import target "gRPC::grpc++" for configuration "Release"
set_property(TARGET gRPC::grpc++ APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(gRPC::grpc++ PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libgrpc++.so"
  IMPORTED_SONAME_RELEASE "libgrpc++.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS gRPC::grpc++ )
list(APPEND _IMPORT_CHECK_FILES_FOR_gRPC::grpc++ "${_IMPORT_PREFIX}/lib/libgrpc++.so" )

# Import target "gRPC::grpc++_alts" for configuration "Release"
set_property(TARGET gRPC::grpc++_alts APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(gRPC::grpc++_alts PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libgrpc++_alts.so"
  IMPORTED_SONAME_RELEASE "libgrpc++_alts.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS gRPC::grpc++_alts )
list(APPEND _IMPORT_CHECK_FILES_FOR_gRPC::grpc++_alts "${_IMPORT_PREFIX}/lib/libgrpc++_alts.so" )

# Import target "gRPC::grpc++_error_details" for configuration "Release"
set_property(TARGET gRPC::grpc++_error_details APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(gRPC::grpc++_error_details PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libgrpc++_error_details.so"
  IMPORTED_SONAME_RELEASE "libgrpc++_error_details.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS gRPC::grpc++_error_details )
list(APPEND _IMPORT_CHECK_FILES_FOR_gRPC::grpc++_error_details "${_IMPORT_PREFIX}/lib/libgrpc++_error_details.so" )

# Import target "gRPC::grpc++_unsecure" for configuration "Release"
set_property(TARGET gRPC::grpc++_unsecure APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(gRPC::grpc++_unsecure PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libgrpc++_unsecure.so"
  IMPORTED_SONAME_RELEASE "libgrpc++_unsecure.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS gRPC::grpc++_unsecure )
list(APPEND _IMPORT_CHECK_FILES_FOR_gRPC::grpc++_unsecure "${_IMPORT_PREFIX}/lib/libgrpc++_unsecure.so" )

# Import target "gRPC::grpc_authorization_provider" for configuration "Release"
set_property(TARGET gRPC::grpc_authorization_provider APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(gRPC::grpc_authorization_provider PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libgrpc_authorization_provider.so"
  IMPORTED_SONAME_RELEASE "libgrpc_authorization_provider.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS gRPC::grpc_authorization_provider )
list(APPEND _IMPORT_CHECK_FILES_FOR_gRPC::grpc_authorization_provider "${_IMPORT_PREFIX}/lib/libgrpc_authorization_provider.so" )

# Import target "gRPC::grpc_plugin_support" for configuration "Release"
set_property(TARGET gRPC::grpc_plugin_support APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(gRPC::grpc_plugin_support PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libgrpc_plugin_support.so"
  IMPORTED_SONAME_RELEASE "libgrpc_plugin_support.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS gRPC::grpc_plugin_support )
list(APPEND _IMPORT_CHECK_FILES_FOR_gRPC::grpc_plugin_support "${_IMPORT_PREFIX}/lib/libgrpc_plugin_support.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
