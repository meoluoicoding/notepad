#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QTextEdit>
#include <QTreeView>
#include <QStandardItemModel>
#include <QStandardItem>
#include <QSplitter>
#include <QScrollArea>
#include <QFileDialog>
#include <QColorDialog>
#include <QFontDialog>
#include <QTextStream>
#include <QPixmap>
#include <QAction>
#include <QMenuBar>
#include <QMenu>
#include <QCursor>
#include <QInputDialog>
#include <QTextCursor>
#include <QTextCharFormat>
class MainWindow : public QMainWindow
{
    Q_OBJECT // Ensure this is here

public:
    explicit MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

private slots:
    void insertHeading();
    void insertBulletList();
    void toggleBold();
    void toggleItalic();
    void toggleHighlight();
    void changeTextColor();
    void changeFont();
    void importImage();
    void importFile();
    void saveFileAs();

private:
    QTextEdit *textEdit;
};

#endif // MAINWINDOW_H
