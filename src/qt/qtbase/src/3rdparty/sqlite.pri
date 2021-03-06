CONFIG(release, debug|release):DEFINES *= NDEBUG
DEFINES += SQLITE_OMIT_LOAD_EXTENSION SQLITE_OMIT_COMPLETE SQLITE_ENABLE_FTS3 SQLITE_ENABLE_FTS3_PARENTHESIS SQLITE_ENABLE_RTREE
!contains(CONFIG, largefile):DEFINES += SQLITE_DISABLE_LFS
contains(QT_CONFIG, posix_fallocate):DEFINES += HAVE_POSIX_FALLOCATE=1
winrt: DEFINES += SQLITE_OS_WINRT
qnx: DEFINES += _QNX_SOURCE
INCLUDEPATH +=  $$PWD/sqlite
SOURCES +=      $$PWD/sqlite/sqlite3.c

TR_EXCLUDE += $$PWD/*
