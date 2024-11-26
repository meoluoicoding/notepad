cmake_minimum_required(VERSION 3.16)

project(Notepad)

# Sử dụng tiêu chuẩn C++17
set(CMAKE_CXX_STANDARD 17)

# Bật tính năng tự động tạo các tệp MOC
set(CMAKE_AUTOMOC ON)

# Tìm các thành phần cần thiết từ Qt6
find_package(Qt6 REQUIRED COMPONENTS Widgets Core Gui)

# Thêm tệp nguồn và tiêu đề của bạn
add_executable(Notepad main.cpp mainwindow.cpp)

# Liên kết với thư viện Qt6
target_link_libraries(Notepad Qt6::Widgets Qt6::Core Qt6::Gui)

# Kích hoạt AUTOMOC
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)
