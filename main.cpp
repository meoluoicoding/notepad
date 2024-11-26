#include <QApplication>
#include "mainwindow.h"

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    MainWindow w;  // Create the MainWindow instance
    w.show();      // Show the window
    return a.exec(); // Enter the application event loop
}
