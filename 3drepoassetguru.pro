#  Copyright (C) 2017 3D Repo Ltd
#
#  This program is free software: you can redistribute it and/or modify
#  it under the terms of the GNU Affero General Public License as
#  published by the Free Software Foundation, either version 3 of the
#  License, or (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU Affero General Public License for more details.
#
#  You should have received a copy of the GNU Affero General Public License
#  along with this program.  If not, see <http://www.gnu.org/licenses/>.

include(dependencies.pri)

QT += quick quickcontrols2 multimedia svg

CONFIG += c++11

SOURCES += \
    src/main.cpp \
    src/repo_camera.cpp \
    src/repo_data_matrix.cpp \
    src/repo_data_matrix_filter_runnable.cpp \
    src/repo_data_matrix_filter.cpp \
    src/repo_asset_categories_model.cpp \
    src/repo_csv_parser.cpp \
    src/repo_asset.cpp \
    src/repo_data_matrix_image_provider.cpp \
    src/repo_data_matrix_filter_result.cpp \
    src/repo_asset_filterable_model.cpp \
    src/repo_asset_item.cpp \
    src/repo_material_icons.cpp \
    src/repo_material_icons_image_provider.cpp \
    src/repo_network_access_manager.cpp \
    src/repo_teamspace.cpp \
    src/repo_teamspace_project_model.cpp \
    src/repo_byte_image_provider.cpp


HEADERS += \
    src/repo_camera.h \
    src/repo_data_matrix.h \
    src/repo_data_matrix_filter_runnable.h \
    src/repo_data_matrix_filter.h \
    src/repo_asset_categories_model.h \
    src/repo_csv_parser.h \
    src/repo_asset.h \
    src/repo_data_matrix_image_provider.h \
    src/repo_data_matrix_filter_result.h \
    src/repo_asset_filterable_model.h \
    src/repo_asset_item.h \
    src/repo_material_icons.h \
    src/repo_material_icons_image_provider.h \
    src/repo_network_access_manager.h \
    src/repo_teamspace.h \
    src/repo_teamspace_project_model.h \
    src/repo_byte_image_provider.h

RESOURCES += \
    resources.qrc

TEMPLATE = app

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
