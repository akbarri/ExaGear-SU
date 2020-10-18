.class public abstract Lcom/eltechs/axs/helpers/SafeFileHelpers;
.super Ljava/lang/Object;
.source "SafeFileHelpers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/helpers/SafeFileHelpers$FileCallback;,
        Lcom/eltechs/axs/helpers/SafeFileHelpers$FileFilter;
    }
.end annotation


# static fields
.field private static final ACCEPT_ANY_FILE:Lcom/eltechs/axs/helpers/SafeFileHelpers$FileFilter;

.field private static final ACCEPT_EXECUTABLE_FILES:Lcom/eltechs/axs/helpers/SafeFileHelpers$FileFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "fs-helpers"

    .line 27
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/eltechs/axs/helpers/SafeFileHelpers;->initialiseNativeParts()Z

    move-result v0

    const-string v1, "Managed and native parts of SafeFileHelpers do not match one another."

    .line 30
    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 97
    new-instance v0, Lcom/eltechs/axs/helpers/SafeFileHelpers$1;

    invoke-direct {v0}, Lcom/eltechs/axs/helpers/SafeFileHelpers$1;-><init>()V

    sput-object v0, Lcom/eltechs/axs/helpers/SafeFileHelpers;->ACCEPT_ANY_FILE:Lcom/eltechs/axs/helpers/SafeFileHelpers$FileFilter;

    .line 105
    new-instance v0, Lcom/eltechs/axs/helpers/SafeFileHelpers$2;

    invoke-direct {v0}, Lcom/eltechs/axs/helpers/SafeFileHelpers$2;-><init>()V

    sput-object v0, Lcom/eltechs/axs/helpers/SafeFileHelpers;->ACCEPT_EXECUTABLE_FILES:Lcom/eltechs/axs/helpers/SafeFileHelpers$FileFilter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byNameFileFilter(Ljava/lang/String;)Lcom/eltechs/axs/helpers/SafeFileHelpers$FileFilter;
    .locals 1

    .line 184
    new-instance v0, Lcom/eltechs/axs/helpers/SafeFileHelpers$3;

    invoke-direct {v0, p0}, Lcom/eltechs/axs/helpers/SafeFileHelpers$3;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static cleanupDirectory(Ljava/io/File;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 60
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const-string v1, "cleanupDirectory(): \'%s\' is not a directory."

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->isTrue(ZLjava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/eltechs/axs/helpers/SafeFileHelpers;->removeDirectoryImpl(Ljava/lang/String;Z)I

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Failed to remove directory \'%s\'; errno = %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 66
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v5

    neg-int p0, v0

    .line 67
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v2

    .line 65
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method

.method public static doWithExecutableFiles(Ljava/io/File;ILcom/eltechs/axs/helpers/SafeFileHelpers$FileCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    sget-object v0, Lcom/eltechs/axs/helpers/SafeFileHelpers;->ACCEPT_EXECUTABLE_FILES:Lcom/eltechs/axs/helpers/SafeFileHelpers$FileFilter;

    invoke-static {p0, p1, v0, p2}, Lcom/eltechs/axs/helpers/SafeFileHelpers;->doWithFiles(Ljava/io/File;ILcom/eltechs/axs/helpers/SafeFileHelpers$FileFilter;Lcom/eltechs/axs/helpers/SafeFileHelpers$FileCallback;)V

    return-void
.end method

.method public static doWithExecutableFiles(Ljava/io/File;Lcom/eltechs/axs/helpers/SafeFileHelpers$FileCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x7fffffff

    .line 120
    invoke-static {p0, v0, p1}, Lcom/eltechs/axs/helpers/SafeFileHelpers;->doWithExecutableFiles(Ljava/io/File;ILcom/eltechs/axs/helpers/SafeFileHelpers$FileCallback;)V

    return-void
.end method

.method public static doWithFiles(Ljava/io/File;ILcom/eltechs/axs/helpers/SafeFileHelpers$FileFilter;Lcom/eltechs/axs/helpers/SafeFileHelpers$FileCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gez p1, :cond_0

    return-void

    .line 148
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->isTrue(Z)V

    .line 149
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p0

    .line 151
    invoke-static {p0}, Lcom/eltechs/axs/helpers/SafeFileHelpers;->listWellNamedFiles(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v0

    .line 152
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 154
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 157
    invoke-interface {p2, p0, v3}, Lcom/eltechs/axs/helpers/SafeFileHelpers$FileFilter;->matches(Ljava/io/File;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 159
    invoke-interface {p3, p0, v3}, Lcom/eltechs/axs/helpers/SafeFileHelpers$FileCallback;->apply(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_2

    .line 161
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    .line 163
    array-length v5, v0

    if-ne v5, v3, :cond_2

    move v3, p1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, p1, -0x1

    .line 167
    :goto_1
    invoke-static {v4, v3, p2, p3}, Lcom/eltechs/axs/helpers/SafeFileHelpers;->doWithFiles(Ljava/io/File;ILcom/eltechs/axs/helpers/SafeFileHelpers$FileFilter;Lcom/eltechs/axs/helpers/SafeFileHelpers$FileCallback;)V

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static doWithFiles(Ljava/io/File;Lcom/eltechs/axs/helpers/SafeFileHelpers$FileCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    sget-object v0, Lcom/eltechs/axs/helpers/SafeFileHelpers;->ACCEPT_ANY_FILE:Lcom/eltechs/axs/helpers/SafeFileHelpers$FileFilter;

    const v1, 0x7fffffff

    invoke-static {p0, v1, v0, p1}, Lcom/eltechs/axs/helpers/SafeFileHelpers;->doWithFiles(Ljava/io/File;ILcom/eltechs/axs/helpers/SafeFileHelpers$FileFilter;Lcom/eltechs/axs/helpers/SafeFileHelpers$FileCallback;)V

    return-void
.end method

.method public static native exists(Ljava/lang/String;)Z
.end method

.method private static native initialiseNativeParts()Z
.end method

.method public static native isDirectory(Ljava/lang/String;)Z
.end method

.method public static native isSymlink(Ljava/lang/String;)Z
.end method

.method private static listWellNamedFiles(Ljava/io/File;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eltechs/axs/helpers/SafeFileHelpers;->listWellNamedFilesImpl(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to list files with well-formed names in \'%s\'."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method private static native listWellNamedFilesImpl(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public static removeDirectory(Ljava/io/File;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 86
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const-string v1, "removeDirectory(): \'%s\' is not a directory."

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->isTrue(ZLjava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/eltechs/axs/helpers/SafeFileHelpers;->removeDirectoryImpl(Ljava/lang/String;Z)I

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Failed to remove directory \'%s\'; errno = %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 92
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v5

    neg-int p0, v0

    .line 93
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v2

    .line 91
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method

.method private static native removeDirectoryImpl(Ljava/lang/String;Z)I
.end method

.method public static native symlink(Ljava/lang/String;Ljava/lang/String;)I
.end method
