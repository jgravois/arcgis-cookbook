#
# Cookbook Name:: arcgis
# Recipe:: desktop
#
# Copyright 2015 Esri
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

arcgis_desktop 'Verify ArcGIS for Desktop system requirements' do
  action :system
end

arcgis_desktop 'Install ArcGIS for Desktop' do
  setup node['arcgis']['desktop']['setup']
  install_dir node['arcgis']['desktop']['install_dir']
  python_dir node['arcgis']['python']['install_dir']
  install_features node['arcgis']['desktop']['install_features']
  esri_license_host node['arcgis']['desktop']['esri_license_host']
  software_class node['arcgis']['desktop']['software_class']
  seat_preference node['arcgis']['desktop']['seat_preference']
  desktop_config node['arcgis']['desktop']['desktop_config']
  modifyflexdacl node['arcgis']['desktop']['modifyflexdacl']
  action :install
end

arcgis_desktop 'Authorize ArcGIS for Desktop' do
  authorization_file node['arcgis']['desktop']['authorization_file']
  authorization_file_version node['arcgis']['desktop']['authorization_file_version']
  action :authorize
end
