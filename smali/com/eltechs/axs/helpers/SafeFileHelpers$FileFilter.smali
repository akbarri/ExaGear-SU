.class public interface abstract Lcom/eltechs/axs/helpers/SafeFileHelpers$FileFilter;
.super Ljava/lang/Object;
.source "SafeFileHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/helpers/SafeFileHelpers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FileFilter"
.end annotation


# virtual methods
.method public abstract matches(Ljava/io/File;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
