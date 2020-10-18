.class public interface abstract Lcom/eltechs/axs/helpers/ZipInstallerObb$Callbacks;
.super Ljava/lang/Object;
.source "ZipInstallerObb.java"

# interfaces
.implements Lcom/eltechs/axs/helpers/ZipUnpacker$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/helpers/ZipInstallerObb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract error(Ljava/lang/String;)V
.end method

.method public abstract noObbFound()V
.end method

.method public abstract unpackingCompleted(Ljava/io/File;)V
.end method

.method public abstract unpackingInProgress()V
.end method
