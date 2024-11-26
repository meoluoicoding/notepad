#include "mainwindow.h"
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

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
{
    // Khởi tạo textEdit
    textEdit = new QTextEdit(this);

    // Tạo QSplitter để chia giao diện
    QSplitter *splitter = new QSplitter(Qt::Horizontal, this);

    // Tạo widget cây (sidebar)
    QWidget *sidebar = new QWidget(splitter);
    QTreeView *treeView = new QTreeView(sidebar);
    QStandardItemModel *model = new QStandardItemModel();
    QStandardItem *rootNode = model->invisibleRootItem();

    // Thêm các phần tử vào cây
    QStandardItem *item1 = new QStandardItem("File");
    QStandardItem *item2 = new QStandardItem("Edit");
    QStandardItem *item3 = new QStandardItem("View");
    rootNode->appendRow(item1);
    rootNode->appendRow(item2);
    rootNode->appendRow(item3);

    treeView->setModel(model);
    treeView->setHeaderHidden(true); // Ẩn tiêu đề cột

    // Cài đặt splitter để chia giao diện thành hai phần
    splitter->addWidget(sidebar);

    // Tạo QScrollArea cho textEdit
    QScrollArea *scrollArea = new QScrollArea(this);
    scrollArea->setWidget(textEdit);
    scrollArea->setWidgetResizable(true);

    splitter->addWidget(scrollArea);
    setCentralWidget(splitter);

    // Tạo menu
    QMenuBar *menuBar = new QMenuBar(this);

    // Menu File
    QMenu *fileMenu = menuBar->addMenu("File");
    QAction *openImageAction = fileMenu->addAction("Import Image");
    connect(openImageAction, &QAction::triggered, this, &MainWindow::importImage);

    QAction *openFileAction = fileMenu->addAction("Import File");
    connect(openFileAction, &QAction::triggered, this, &MainWindow::importFile);

    QAction *saveFileAction = fileMenu->addAction("Save As");
    connect(saveFileAction, &QAction::triggered, this, &MainWindow::saveFileAs);

    // Menu Format
    QMenu *formatMenu = menuBar->addMenu("Format");

    QAction *boldAction = formatMenu->addAction("Bold");
    connect(boldAction, &QAction::triggered, this, &MainWindow::toggleBold);

    QAction *italicAction = formatMenu->addAction("Italic");
    connect(italicAction, &QAction::triggered, this, &MainWindow::toggleItalic);

    QAction *highlightAction = formatMenu->addAction("Highlight");
    connect(highlightAction, &QAction::triggered, this, &MainWindow::toggleHighlight);

    QAction *colorAction = formatMenu->addAction("Change Text Color");
    connect(colorAction, &QAction::triggered, this, &MainWindow::changeTextColor);

    QAction *fontAction = formatMenu->addAction("Change Font");
    connect(fontAction, &QAction::triggered, this, &MainWindow::changeFont);

    // Menu Markdown
    QMenu *markdownMenu = menuBar->addMenu("Markdown");
    QAction *headingAction = markdownMenu->addAction("Heading");
    connect(headingAction, &QAction::triggered, this, &MainWindow::insertHeading);
    QAction *listAction = markdownMenu->addAction("Bullets List");
    connect(listAction, &QAction::triggered, this, &MainWindow::insertBulletList);

    setMenuBar(menuBar);
}

MainWindow::~MainWindow()
{
    // Dọn dẹp tài nguyên
    delete textEdit;
}

//đổi font
void MainWindow::changeFont()
{
    bool ok;
    QFont currentFont = textEdit->font();
    QFont font = QFontDialog::getFont(&ok, currentFont, this);
    if (ok) {
        textEdit->setFont(font);
    }
}

//import image
void MainWindow::importImage()
{
    QString fileName = QFileDialog::getOpenFileName(this, "Open Image File", "", "Images (*.png *.jpg *.bmp *.gif);;All Files (*)");
    if (fileName.isEmpty()) {
        return;
    }

    QPixmap pixmap(fileName);
    if (pixmap.isNull()) {
        qCritical() << "Không thể mở tệp hình ảnh!";
        return;
    }

    QTextCursor cursor = textEdit->textCursor();
    cursor.insertImage(pixmap.toImage());
}

//import file
void MainWindow::importFile()
{
    QString fileName = QFileDialog::getOpenFileName(this, "Open File", "", "Text Files (*.txt);;Markdown Files (*.md);;All Files (*)");
    if (!fileName.isEmpty()) {
        QFile file(fileName);
        if (file.open(QIODevice::ReadOnly | QIODevice::Text)) {
            QTextStream in(&file);
            textEdit->setPlainText(in.readAll());
        }
    }
}

//save file as

void MainWindow::saveFileAs()
{
    QString fileName = QFileDialog::getSaveFileName(this, "Save As", "", "Text Files (*.txt);;Markdown Files (*.md);;All Files (*)");
    if (!fileName.isEmpty()) {
        QFile file(fileName);
        if (file.open(QIODevice::WriteOnly | QIODevice::Text)) {
            QTextStream out(&file);
            out << textEdit->toPlainText();
        }
    }
}

// Toggle Bold Method
void MainWindow::toggleBold()
{
    QTextCursor cursor = textEdit->textCursor();
    if (cursor.hasSelection()) {
        QTextCharFormat format;
        format.setFontWeight(cursor.charFormat().fontWeight() == QFont::Bold ? QFont::Normal : QFont::Bold);
        cursor.mergeCharFormat(format);
    } else {
        textEdit->setFontWeight(textEdit->fontWeight() == QFont::Bold ? QFont::Normal : QFont::Bold);
    }
}

// Toggle Italic Method
void MainWindow::toggleItalic()
{
    QTextCursor cursor = textEdit->textCursor();
    if (cursor.hasSelection()) {
        QTextCharFormat format;
        format.setFontItalic(!cursor.charFormat().fontItalic());
        cursor.mergeCharFormat(format);
    } else {
        textEdit->setFontItalic(!textEdit->fontItalic());
    }
}

// Toggle Highlight Method
void MainWindow::toggleHighlight()
{
    QTextCursor cursor = textEdit->textCursor();
    QTextCharFormat format;
    QColor color = cursor.charFormat().background().color() == Qt::yellow ? Qt::transparent : Qt::yellow;
    format.setBackground(color);
    cursor.mergeCharFormat(format);
}


//change text color
void MainWindow::changeTextColor()
{
    QColor color = QColorDialog::getColor(textEdit->textColor(), this, "Chọn màu chữ");
    if (color.isValid()) {
        QTextCharFormat format;
        format.setForeground(color);
        textEdit->setCurrentCharFormat(format);
    }
}

//insert heading

void MainWindow::insertHeading() {
    QTextCursor cursor = textEdit->textCursor();
    cursor.insertText("# Heading\n");  // Thêm Heading vào vị trí con trỏ
}

//insert bulletlist
void MainWindow::insertBulletList() {
    QTextCursor cursor = textEdit->textCursor();
    cursor.insertText("* Bullet point\n");  // Thêm Bullet List vào vị trí con trỏ
}

